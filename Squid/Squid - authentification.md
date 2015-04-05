# Proxy Squid #

## 1. Authentification ##

Si plusieurs systèmes d'authentification sont définis, le choix est présenté au client (navigateur) qui devrait choisir celui présentant la plus grande sécurité. En pratique, ***c'est généralement le premier*** qui est choisi.

Il faut donc définir dans l'ordre (tous ne sont pas nécessaires) :

1. Negotiate/Kerberos
2. Microsoft NTLM
3. Digest
4. Basic

### 1.1 Negociate/Kerberos ###

**Negotiate** est une surcouche à **GSSAPI**, situé lui-même au dessus de **Kerberos** ou **NTLM**.

L'utilisation de Kerberos rend les échanges plus sûrs et plus rapides que ceux initiés par NTLM.

#### 1.1.1. Principe du fonctionnement ####

- L'utilisateur s'authentifie sur sa session Windows, dans le domaine, donc via Active Directory.

- Il obtient un ticket Kerberos.

- Lorsqu'il lance un navigateur Web, ce ticket est envoyé dans le flux HTTP.

- Le serveur proxy récupère ce ticket grâce à `negotiate_kerberos_auth`, le valide auprès du contrôleur Active Directory (grâce à son propre client Kerberos).

- Si le ticket est validé, l'utilisateur n'a pas à se ré-authentifier via une fenêtre de login pour accéder à internet, tout est automatique.


#### 1.1.2. Principe de la mise en œuvre ####


##### 1.1.2.1. Installation du client kerberos #####

- S'assurer que le serveur proxy est à la même heure que le contrôleur de domaine.

> \# apt-get install ntp

> \# vim /etc/ntp.conf



- Vérifier que la résolution de nom s'effectue bien pour les DCs (kerberos s'appuie sur le DNS).

> \# cat /etc/resolv.conf

> search corot.local

> domain corot.local

> nameserver 172.16.1.16

> nameserver 172.16.1.15

> \# ping srv-dc1 -c 5 && ping srv-dc2 -c 5 && ping srv-dc3 -c 5 

> \# dig -x 172.16.1.15



- Pour en être vraiment certain :

> \# vim /etc/hosts

> 172.16.1.15 srv-dc1 srv-dc1.corot.local

> 172.16.1.16 srv-dc2 srv-dc2.corot.local

> 172.16.1.17 srv-dc3 srv-dc3.corot.local



- Installer le client kerberos.

> apt-get install krb5-config krb5-user

- Configurer kerberos

> \# cp /etc/krb5.conf /etc/krb5.conf.backup

> \# vim /ect/krb5.conf

> 

> [libdefaults]

> default_realm = COROT.LOCAL

> dns\_lookup_kdc = no

> dns\_lookup_realm = no

> ticket_lifetime = 24h

> default\_keytab_name = /etc/squid3/PROXY.keytab

> ; for Windows 2003

> ; default\_tgs_enctypes = rc4-hmac des-cbc-crc des-cbc-md5

> ; default\_tkt_enctypes = rc4-hmac des-cbc-crc des-cbc-md5

> ; permitted_enctypes = rc4-hmac des-cbc-crc des-cbc-md5

> ; for Windows 2008 with AES

> default\_tgs_enctypes = aes256-cts-hmac-sha1-96 rc4-hmac des-cbc-crc des-cbc-md5

> default\_tkt_enctypes = aes256-cts-hmac-sha1-96 rc4-hmac des-cbc-crc des-cbc-md5

> permitted_enctypes = aes256-cts-hmac-sha1-96 rc4-hmac des-cbc-crc des-cbc-md5


>

> [realms]

> COROT.LOCAL = {

> kdc = srv-dc1.corot.local

> kdc = srv-dc2.corot.local

> kdc = srv-dc3.corot.local

> admin_server = srv-dc1.corot.local

> default_domain = corot.local

> }
>

> [domain_realm]

> .corot.local = COROT.LOCAL

> corot.local = COROT.LOCAL

> [logging]

> default = FILE:/var/log/krb5libs.log


> kdc = FILE:/var/log/krb5kdc.log

> admin_server = FILE:/var/log/kadmind.log




- Tester la bonne configuration du client kerberos en demandant un ticket au DC.

> kinit dlatreyte@corot.local

Le mot de passe de l'utilisateur `dlatreyte` doit être demandé. Aucun message ne doit suivre.

> klist

Les informations contenues dans le ticket doivent apparaître.

> kdestroy

Fin de session pour l'utilisateur `dlatreyte`.



##### 1.1.2.2. Paramétrage de `negotiate_kerberos_auth` #####



Générer un fichier `keytab` (clé de service) à l'aide de la commande `ktpass` depuis le contrôleur de domaine Windows.

> ktpass -princ HTTP/proxy.example.com@REALM -mapuser proxy.example.com -crypto rc4-hmac-nt pass s3cr3t -ptype KRB5\_NT\_SRV\_HST -out squid.keytab

**Remarque :** l'utilisateur `proxy.example.com` doit avoir été créé au préalable dans l'AD. 

**Remarque :** attention aux majuscules et aux minuscules.

- 