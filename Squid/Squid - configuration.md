# Squid - Configuration




## Configuration des informations réseau


### Nom du serveur Squid

```
visible_hostname srv-proxy.corot.local
```

### Port d'écoute

- Un seul port à écouter : 

```
http_port 3128
```

- Plusieurs ports à écouter :

```
http_port 3128
http_port 8080
```

- Si plusieurs interfaces :

```
http_port 192.168.1.1:3128
http_port 172.16.1.1:8080
```


**Remarque :** préciser l'IP me semble être une très bonne idée.


### Gestion du DNS


Par défaut, pour résoudre un nom d'hôte, Squid utilise le résolveur du système d'exploitation. Les serveurs de nom sont donc renseignés dans `/etc/resolv.conf`. 

Il est tout de même possible d'outre-passer cette configuration grâce à la directive :

```
dns_nameservers 172.16.1.15 172.16.1.16
```

#### Cache DNS

Par défaut, Squid garde en cache les résultats des résolutions de nom (positifs ou négatifs). Cette durée est de 6 heures pour les requêtes ayant abouti et 5 minutes pour celles qui ont échoué.

```
positive_dns_ttl 12 hours
negative_dns_ttl 5 minutes
```

**Remarque :** ne pas trop augmenter cette dernière valeur, un échec peut n'être que temporaire.


#### Taille du cache DNS

Afin de ne pas systématiquement refaire les mêmes recherches, Squid peut les mettre en cache. Ici est indiqué le nombre de requêtes conservées (*pas leur taille donc !*). Le défaut est 1024.

```
fqdncache_size 4096
```

#### Résolution de nom interne

Squid ne lit pas la directive `search` dans le fichier `/etc/resolv.conf`. Il lui est donc impossible d'atteindre un serveur du LAN dont l'adresse serait indiquée ainsi : `http://srv-interne`.

La directive `append_domain` permet de résoudre ce problème :

```
append_domain .corot.local
```

### Conclusion de la partie « configuration des informations réseau »

```
# Configuration réseau minimale

# Utilisateur de Squid
cache_effective_user squid
cache_effective_group squid

# Nom du serveur
visible_hostname srv-proxy.corot.local

# Port d'écoute de Squid
http_port 172.16.1.1:3128

# Serveurs DNS
dns_nameservers 172.16.1.15 172.16.1.16

# Mise en cache des requêtes DNS
positive_dns_ttl 12 hours
negative_dns_ttl 1 minutes

# Taille du cache DNS
fqdncache_size 4096

# Domaine par défaut
append_domain .corot.local
```




## Configuration du contrôle d'accès

Le contrôle d'accès permet d'autoriser ou de refuser les utilisateurs en fonction de leur adresse IP, des plages horaires, de leur groupe, ...


### Principe du contrôle d'accès

Il faut définir deux directives :

- Une ACL (Access Control List) ;
- Une règle d'accès (avec la directive http_access).

**Exemple :**

```
acl reseau_local src 192.168.1.0
http_access allow reseau_local
```


### Les ACL


**Syntaxe :**

```
acl nom_acl type_acl valeur1 valeur2 ...
```

ou

```
acl nom_acl type_acl chemin_fichier_a_lire
```

- `nom_acl` : nom donné à la règle de contrôle d'accès ;

- `type_acl` : type d'objet défini par l'ACL ;

- `valeur`: valeur de l'objet de l'ACL. Cette valeur dépend du type de l'ACL. Il est possible d'affecter plusieurs valeurs à une ACL ou de stocker ces valeurs dans un fichier.


#### Types d'ACL (les types pour l'authentification ne sont pas présentés ici)


- `src` : adresses IP ou adresses du réseau source.

```
acl reseau_local src 10.0.0.0/24
acl hote src 10.0.0.1/32
```

- `dst` : adresses IP ou adresses du réseau de destination (Squid transforme cette adresse en nom de domaine).

```
acl reseau_dest dst 80.125.40.64/28
```

- `srcdomain` : nom de domaine source. Ce type réclame plus de travail à Squid qui doit effectuer une résolution de nom à chaque fois.

```
acl domaine_source srcdomain .corot.local
```

- `dstdomain` : nom de domaine de destination ou une URL.

```
acl domaine_destination dstdomain www.google.com
```

- `port` : spécifie les numéros des ports des protocoles

```
acl port_http port 80
```

- `proto` : spécifie un protocole applicatif particulier.

```
acl ftp proto FTP
```

- `myip` : spécifie l'adresse IP du serveur cache sur laquelle les clients émettent leurs requêtes. Cet type d'ACL peut être utile si le serveur cache possède plusieurs interfaces réseau et que l'on souhaite que Squid n'écoute que l'une seule d'entre elles.

```
acl @ip_proxy myip 10.0.0.254
```

- `myport`: spécifie le numéro de port sur lequel Squid reçoit les requêtes des clients (Type surtout utilisé lorsque Squid est employé en tant qu'accélérateur HTTP).

```
acl port_srv_cache myport 3128
```

- `time` : permet de spécifier un ou plusieurs jours de la semaine ainsi qu'une plage horaire.

```
acl heures_bureau time MT W H F 9:00-17:00
```

**Remarque :** Par défaut, Squid définit des ACL pour les plages d'adresses non routables et pour les ports « surs ».



#### Comment Squid lit-il les ACL ?

Squid lit les ACL référencées une fois avant d'aller trouver une correspondance dans les règles d'accès. 

*Il est donc nécessaire de regrouper les ACL avant de définir les règles de contrôle d'accès.*

*Si une ACL possède plusieurs valeurs, lors de la lecture, Squid effectue un OU logique entre celles-ci. Une fois une correspondance trouvée, Squid stoppe le traitement de l'ACL et l'applique à une directive de règles d'accès.*



#### ACL rapides, ACL lentes


En fonction du traitement demandé, Squid peut être obligé de faire appel à des processus externes pour réaliser son travail (résolution de nom, par exemple). Cet appel ralentit le traitement de la demande.

Cas typiques :

- utiliser `srcdomain` : Squid doit faire correspondre l'IP source au nom DNS ;
- utiliser `dst` : Squid doit effectuer une résolution inverse de nom.

Ces deux ACL sont dites « lentes ».



###Les règles d'accès


Les règles d'accès permettent d'autoriser ou non les connexions entrantes HTTP, de communiquer ou non avec d'autres serveurs cache, de stocker ou non certains éléments en cache, ...

```
# Autorise l'access aux machines du réseau local (ACL localnet)
http_access allow localnet
# Autorise l'access au serveur lui-même (ACL localhost)
http_access allow localhost
# Interdit tout le reste (ACL all)
http_access deny all
```

Les règles sont lues de manière séquentielle, les unes à la suite des autres, jusqu'à ce qu'une règle corresponde. Si une correspondance est trouvée, la règle est appliquée et le processus s'arrête.

*Il est important de toujours finir par* `http_access deny all`.

#### Principales règles utilisées

- `http_access` : règle d'accès qui permet d'autoriser ou pas les requêtes HTTP.

- `icp_access` : règle d'accès qui permet d'autoriser ou pas le serveur à communiquer avec d'autres serveurs cache (protocole ICP).

- `http_reply_access` : règle d'accès qui permet d'autoriser ou pas les réponses aux requêtes des clients (par défaut, autorise).


#### Comment Squid lit-il les règles d'accès ?

Comme pour les ACL, on peut affecter plusieurs valeurs à une règle d'accès. Si une ACL comporte plusieurs valeurs, Squid effectue un OU logique pour trouver une correspondance, alors que si une règle d'accès comporte plusieurs ACL, il effectue un ET logique.

Squid s'arrête lorsqu'il trouve une correspondance exacte.

**Paramétrage incorrect :**

```
acl client_reseau_src 192.168.1.100
acl domaine_interdit dstdomain .google.fr

http_access allow client_reseau_src
http_access deny client_reseau_src domaine_interdit
http_access deny all
```

La première règle d'accès est vérifiée pour la machine 192.168.1.100. La seconde n'est jamais lue et le domaine .google.fr peut être atteint.

**Paramétrage correct :**

```
acl client_reseau_src 192.168.1.100
acl domaine_interdit dstdomain .google.fr

http_access deny client_reseau_src domaine_interdit
http_access allow client_reseau_src
http_access deny all
```