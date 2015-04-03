# Administration d'un switch HP

## Général

#### Rétablir la configuration d’usine (s’il est possible de se connecter au switch)


- `HP2910> enable` : passage en mode manager.
- `Password:********`: mot de passe du manager.
- `HP2910# erase startup-config` : Remet le switch en configuration usine.


#### Rétablir la configuration d’usine (s’il n’est pas possible de se connecter au switch)


Appuyer sur le bouton Clear. Tout en maintenant ce bouton pressé, appuyer sur Reset. Relâcher Reset, puis Clear lorsque la diode verte s'allume.


#### Redémarrer le switch

- `HP2910 > enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `HP2910 > boot`: redémarre en effectuant les tests de démarrage. Cette commande permet de choisir la partie de la ROM utilisée (voir Mise à jour du firmware).
- `HP2910 > reload` : redémarre le switch sans effectuer les tests de démarrage.


#### Accès à la configuration du switch

- `HP2910 > enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `HP2910# show running-config` : voir la configuration dans la RAM.
- `HP2910# show startup-config` : voir la configuration dans la ROM.

#### Accès aux messages du système

- `HP2910 > enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `HP2910# show logging` : accéder aux messages du système.

#### Envoyer les messages du système vers un serveur

- `HP2910 > enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `HP2910# configure` : passage en mode configuration.
- `HP2910(config)# logging 10.1.10.20` : les messages système seront envoyés au serveur d’adresse IP 10.1.10.20 (il est possible de définir 6 serveurs).
- `HP2910(config)# exit` : quitter le mode configuration.

#### Donner un nom au switch

- `HP2910> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `HP2910# configure` : passage en mode configuration.
- `HP2910(config)# hostname MONSWITCH` : attribution d’un nom au switch.
- `MONSWITCH(config)# write memory` : sauvegarde les modifications dans la startup configuration. 
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Attribuer un mot de passe au compte manager

- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# password manager` : demande d’attribution d’un mot de passe.
- `New password for Manager: *****` : nouveau mot de passe pour le compte manager.
- `Please retype new password for Manager: *****` : Confirmation du mot de passe pour le compte manager.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications.
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Attribuer un mot de passe au compte operator

- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# password operator` : demande d’attribution d’un mot de passe.
- `New password for Operator: *****` : nouveau mot de passe pour le compte operator.
- `Please retype new password for Operator: *****` : Confirmation du mot de passe pour le compte operator.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications.
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Modifier le mot de passe du manager

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# password manager` : modification du mot de passe.
- `New password for Manager: *****` :  nouveau mot de passe pour le compte manager.
- `Please retype new password for Manager: *****` :  Confirmation du mot de passe pour le compte manager.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications. 
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Modifier le mot de passe du compte operator

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# password operator` : modification du mot de passe.
- `New password for Operator: *****` : nouveau mot de passe pour le compte operator.
- `Please retype new password for Operator: *****` : Confirmation du mot de passe pour le compte operator.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications. 
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Effacer les mots de passe des comptes manager ou operator (si connexion au switch possible)

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# no password <manager|operator>` : effacement du mot de passe.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications. 
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Effacer les mots de passe des comptes manager ou operator (si connexion au switch impossible)

Sur la façade avant du switch, presser le bouton `clear` pendant une seconde.
Créer un compte admin avec les droits d’un administrateur

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# password manager user-name admin` : création du compte admin avec les droits d’un administrateur.
- `New password for Manager: *****` : nouveau mot de passe pour le compte admin.
- `Please retype new password for Manager: *****` : Confirmation du mot de passe pour le compte admin.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications. 
- `MONSWITCH(config)# exit` : quitter le mode configuration.

#### Créer un compte test avec les droits d’un opérateur

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# configure` : passage en mode configuration.
- `MONSWITCH(config)# password operator user-name test` : création du compte test avec droits limités.
- `New password for Operator: *****` : Nouveau mot de passe pour le compte test.
- `Please retype new password for Operator: *****` : Confirmation du mot de passe pour le compte test.
- `MONSWITCH(config)# write memory` : sauvegarde des modifications. 
- `MONSWITCH(config)# exit` : quitter le mode configuration.


## Configuration des ports

#### Limiter l’accès au switch pour la gestion
VLAN 10 : gestion : 10.10.10.0/24.
VLAN 20 : help desk : 10.10.20.0/24.
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
MONSWITCH(config)# ip authorized-managers 10.10.10.0 255.255.255.0	⇒ autorisation du VLAN 10 pour les administrateurs.
MONSWITCH(config)# ip auth 10.10.20.0 255.255.255.0 access operator	⇒ autorization du VLAN 20 pour les opérateurs.
MONSWITCH(config)# write memory	⇒ sauvegarde des modifications. 
MONSWITCH(config)# exit	⇒ quitter le mode configuration.
Vérifier l’état des ports
MONSWITCH> show interfaces brief	⇒ droits suffisants pour l’operateur ?


#### Vérifier l’état des connexions
MONSWITCH> ping 10.1.1.2	⇒ vérification au niveau de la couche 3.
MONSWITCH> link-test 0004ea-5e5000	⇒ vérification au niveau de la couche 2.
Pour la couche 1, examiner l’état des diodes en façade.
Activer ou désactiver des ports
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
MONSWITCH(config)# int [port-list] [enable|disable]	⇒ active ou désactive les ports listés.
MONSWITCH(config)# write memory	⇒ sauvegarde des modifications. 
MONSWITCH(config)# exit	⇒ quitter le mode configuration.


#### Paramétrer la vitesse des ports et le mode de transfert
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
MONSWITCH(config)# interface 23	⇒ configuration du port 23.
MONSWITCH(eth-23)# speed-duplex 100-full	⇒ On force à 100 Mo full.
MONSWITCH(eth-23)# exit	⇒ sortir de la configuration du port 23.
MONSWITCH(config)# exit	⇒ sortir du menu configuration.
MONSWITCH# write memory	⇒ sauvegarde des modifications. 
MONSWITCH# reload	⇒ reboot pour prise en compte.


#### Collecter des informations sur les switchs directement connectés au switch sur lequel on travaille (protocole LLDP)
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# show lldp config	⇒ 
MONSWITCH# show lldp info remote-device	⇒ informations sur les switchs directement connectés à celui sur lequel on travaille.
MONSWITCH# lldp ?	⇒ tous les paramètres accessibles.


#### Déterminer les adresses MAC et les IP (pas sur tous les modèles) des machines connectées au switch sur chaque port
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# show mac-address	⇒ affiche les adresses MAC connectées pour chaque port.


#### Définir un ou plusieurs serveurs DNS
MONSWITCH# ip dns server-address priority 1 202.12.144.11
MONSWITCH# ip dns server-address priority 2 202.12.233.10


## Configuration VLAN


#### Accéder à la configuration des VLAN
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# show vlans	⇒ Description des VLAN.
MONSWITCH# reload
Status and Counters
Maximum VLANs to support : 8
Primary VLAN : DEFAULT_VLAN
Management VLAN :
802.1Q VLAN ID Name
Status
-------------- ------------ ----------
DEFAULT_VLAN
direction
compta
atelier


#### Créer le VLAN 10 avec l'étiquette direction
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# config	⇒ passage en mode configuration.
MONSWITCH(config)# vlan 10	⇒ identifiant du vlan.
MONSWITCH(vlan-10)# name direction	⇒ nom du vlan.
MONSWITCH(vlan-10)# write memory	⇒ sauvegarde des modifications.
MONSWITCH(vlan-10)# exit	⇒ quitter le mode configuration.


#### Détruire le VLAN 10
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
MONSWITCH(config)# no vlan 10	⇒ destruction du vlan 10.
MONSWITCH(config)# write memory	⇒ sauvegarde des modifications.
MONSWITCH(vlan-10)# exit	⇒ quitter le mode configuration.


#### Assigner des ports au VLAN 10
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# config	⇒ passage en mode configuration.
MONSWITCH(config)# vlan 10	⇒ configuration du vlan 10.
MONSWITCH(vlan-10)# tagged 25-26	⇒ port taggés.
MONSWITCH(vlan-10)# untagged 1-3,5-24	⇒ port détaggés (appartiennent au VLAN).
MONSWITCH(vlan-10)# write memory	⇒ sauvegarde des modifications.
MONSWITCH(vlan-10)# exit	⇒ quitter le mode configuration.
* Port tagged : sert à relier du matériel administrable (trunk).
Port untagged : pour relier des ordinateurs ou tout autre matériel non administrable.
Port no untagged : retire un port du VLAN

#### Retirer des ports d'un VLAN
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# config	⇒ passage en mode configuration.
MONSWITCH(config)# vlan 10	⇒ configuration du vlan 10.
MONSWITCH(vlan-10)# no untagged 1-3	⇒ les ports 1 à 3 ne font plus partie du vlan 10.
MONSWITCH(vlan-10)# write memory	⇒ sauvegarde des modifications. 
MONSWITCH(vlan-10)# exit	⇒ quitter le mode configuration.

#### Voir les ports attachés au VLAN 10
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# show vlan 10	⇒ Voir les ports du VLAN 10.
Status and Counters – VLAN Information – Ports – VLAN 10
802.1Q VLAN ID : 10
Name : direction
Status :
Port Information Mode
Unknown VLAN Status
---------------- -------- ------------ ----------
1 Untagged Learn Down
2 Untagged Learn Down
3 Untagged Learn Down
25 Tagged Learn Down
26 Tagged Learn Down


#### Configurer l'IP d’un VLAN et la passerelle  par défaut
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# config	⇒ passage en mode configuration.
MONSWITCH(config)# vlan 10	⇒ configuration du vlan 10.
MONSWITCH(vlan-10)# ip address 192.168.1.2 255.255.255.0	⇒ adresse ip et masque du sous réseau.
MONSWITCH(vlan-10)# exit	⇒ quitter la configuration du VLAN 10.
MONSWITCH(config)# ip default-gateway 192.168.1.1	⇒ IP de la passerelle.
MONSWITCH(config)# write memory	⇒ sauvegarde des modifications. 
MONSWITCH(config)# exit	⇒ quitter le mode configuration.


#### Supprimer l'IP d’un VLAN et la passerelle par défaut
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# config	⇒ passage en mode configuration.
MONSWITCH(config)# vlan 10	⇒ configuration du VLAN 10.
MONSWITCH(vlan-10)#no ip address	⇒ enlève l’adresse ip du VLAN.
MONSWITCH(vlan-10)# exit	⇒ quitter la configuration du VLAN 10.
MONSWITCH(config)# no ip default-gateway	⇒ retire la passerelle.
MONSWITCH(config)# write memory	⇒ sauvegarde des modifications. 
MONSWITCH(config)# exit	⇒ quitter le mode configuration.


#### Afficher les adresse IP définies au niveau du switch
MONSWITCH> show ip
Débloquer la limitation des 8 VLANs
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
MONSWITCH(config)# max-vlans 11	⇒ on autorise 11 VLANs.
Command will take effect after saving configuration and reboot.
MONSWITCH(config)# exit	⇒ Sortir du mode configuration.
MONSWITCH# write memory	⇒ sauvegarde des modifications. 
MONSWITCH# reload	⇒ reboot pour prise en compte.


#### Configurer un relai DHCP
MONSWITCH(vlan-10)# ip helper-address 192.168.1.1	⇒ les requêtes DHCP et BOOTP sont transférées à la machine d’IP 192.168.1.1
Permettre l’émission de trame Jumbo ???
MONSWITCH(vlan-10)#jumbo			⇒ autorise les trames Jumbo sur ce VLAN


## Trunk


Pour HP, un Trunk est l’agrégation de 2 ou plusieurs ports afin d’augmenter la bande passante. Cette opération est appelée Etherchannel par Cisco. Un Trunk doit être paramétré sur les deux switchs.


#### Création du trunk trk1
MONSWITCH(Config)# trunk a4-a7 trk1 trunk (Creates a 4 port bundled trunk port with interface a4-a7)
MONSWITCH(Config)# trunk a4-a7 trk1 lacp (Creates a 4 port bundles trunk port with interface a4-a7 using the lacp protocol)
MONSWITCH(Config)# show trunk (Shows Port name, connection speeds, trunk group and type trunk | LACP)
MONSWITCH(Config)# show trunk a4 (Shows trunk information for the interface a4 member)
MONSWITCH(Config)# show lacp (Displays information about lacp status on port members)


## Routage

#### Permettre le routage par le switch
MONSWITCH(Config)# ip routing (Turns on IP routing for the switch. Out of the box the switch support static routes and RIP. With a Premium license you will get OSPF)
Création d’une route statique
MONSWITCH(Config)# ip route 192.168.2.0/24 192.168.1.1 (Routes the subnet 192.168.2.0/24 to 192.168.1.1)

#### Routage des paquets Multicast
HP-Switch(vlan-10)# ip igmp (Enables Internet Group Management Protocol controls. IGMP allows the ports to detect IGMP queries and report packets and manage IP multicast traffic through the switch. By default multicast traffic is flooded through all ports except the port it was received on)
HP-Switch(Config)# ip multicast-routing (Enables Multicast Routing across subnets, you must have a license to enable this feature an you must have ip routing enabled also)
HP-Switch(Config)# router pim (Enables Pim Dense Mode Multicast Routing)
HP-Switch(vlan-1)# ip pim 192.168.1.1 (Assigns the routers pim source address statically)
Filtrage
HP-Switch(Config)#ip access-list extended “100” (Creates an extended access list 100)
HP-Switch(config-ext-nacl)#10 deny tcp 0.0.0.0 255.255.255.255 192.168.1.2 0.0.0.0 eq 25 (Denies everyone access to port 25 on 192.168.1.2)
HP-Switch(config-ext-nacl)#20 permit ip 0.0.0.0 255.255.255.255 0.0.0.0 255.255.255.255 (Permit any to any for any IP service)
HP-Switch(vlan10)#ip access-group “100” in (Applies the access list 100 in an inbound direction for vlan 10)
HP-Switch(Config)#show access-list (Displays configured access-lists)

Exemple : VLAN 15 (192.168.1.0/24), VLAN 16 (192.168.2.0/24). Toute machine du VLAN 15 peut accéder au VLAN 16 mais pas l’inverse.
MONSWITCH(Config)# ip access-list extended “VLAN15”		création d’une liste de filtrage nommée “VLAN15”
MONSWITCH(config-ext-nacl)# 10 deny ip xxxx	interdit l’accès depuis le VLAN xxxx
MONSWITCH(config-ext-nacl)# 20 deny ip xxxx	idem
MONSWITCH(config-ext-nacl)# 30 permit ip 192.168.1.0 0.0.0.255 192.168.2.0 0.0.0.255	autorise l’accès au VLAN 16 pour les machines du VLAN 15
MONSWITCH(Config)# ip access-list extended “VLAN16”		création d’une liste de filtrage nommée “VLAN16”
MONSWITCH(config-ext-nacl)# 10 deny ip xxxx	interdit l’accès depuis le VLAN xxxx
MONSWITCH(config-ext-nacl)# 20 deny ip xxxx	idem
MONSWITCH(config-ext-nacl)# 25 permit icmp 192.168.2.0 0.0.0.255 192.168.1.0 0.0.0.255 echo-reply	permet le ping depuis le VLAN 15 d’une machine dans le VLAN 16
MONSWITCH(config-ext-nacl)# 30 permit tcp 192.168.2.0 0.0.0.255 192.168.1.0 0.0.0.255 established	autorise l’accès au VLAN 15 pour les machines du VLAN 16 uniquement en réponse à une demande (TCP)
MONSWITCH(config-ext-nacl)# 40 deny ip 192.168.2.0 0.0.0.255 192.168.1.0 0.0.0255
MONSWITCH(vlan15)# ip access-group “VLAN15” in	application de la liste de filtrage “VLAN15” au VLAN 15
MONSWITCH(vlan16)# ip access-group “VLAN16” in	application de la liste de filtrage “VLAN16” au VLAN 16
MONSWITCH(Config)# show access-list 

## Configurer SNTP

MONSWITCH> show time	⇒ affiche l’heure
MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
(MONSWITCH# time 12/12/2005 08:28:00	⇒ configuration manuelle de l’heure.)
MONSWITCH# timesync sntp	⇒ configuration de l’heure automatique.
MONSWITCH# sntp server 172.20.91.1	⇒ IP du serveur SNTP (trois serveurs peuvent être définis).
MONSWITCH# sntp unicast	⇒ pas de diffusion.
MONSWITCH# time timezone 60	⇒ décalage d'une heure (heure française).
MONSWITCH# time daylight-time-rule Western-Europe	⇒ sélection du fuseau horaire.
MONSWITCH(config)# exit	⇒ sortir du mode configuration.
MONSWITCH# write memory	⇒ sauvegarde des modifications. 


## Configurer SNMP

MONSWITCH> enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# configure	⇒ passage en mode configuration.
MONSWITCH# no snmp-server community public	⇒ suppression de la communauté SNMP public.
MONSWITCH# snmp-server community consult operator restricted	⇒ création de la communauté (groupe) operator avec des droits restreints.
MONSWITCH# snmp-server location "local serveur"	⇒ commentaire de localisation du switch.
MONSWITCH# snmp-server community "consult" Operator	⇒ création du compte SNMP consult avec les droits Operator.
MONSWITCH(config)# exit	⇒ sortir du mode configuration.
MONSWITCH# write memory	⇒ sauvegarde des modifications. 

## Configurer STP (Spanning Tree)

MONSWITCH>ena --> passage en mode manager.
Password:******** --> mot de passe du manager.
MONSWITCH#configure --> passage en mode configuration.
MONSWITCH#spanning-tree --> Configuration spanning-tree.
MONSWITCH#spanning-tree force-version rstp-operation --> On indique d'utiliser le protocole rstp.
MONSWITCH#spanning-tree ethernet 1-47 auto-edge-port --> On surveille tous les ports sauf le 48 qui est taggé.
MONSWITCH(config)# exit --> Sortir du mode configuration.
MONSWITCH# wr mem --> sauvegarde des modifications. 

Pour déclarer le switch maître STP :
MONSWITCH>ena --> passage en mode manager.
Password:******** --> mot de passe du manager.
MONSWITCH#configure --> passage en mode configuration.
MONSWITCH#spanning-tree priority 0 --> Maître STP.

MONSWITCH# wr mem --> sauvegarde des modifications. 

Spanning Tree HP-Switch(Config)#spanning-tree (Turns on Spanning Tree)
HP-Switch(Config)#spanning-tree priority 0 (Makes this switch the root switch with a priority of 4096)
HP-Switch(Config)#spanning-tree force-version rstp-operation (Operates spanning tree in Rapid Spanning Tree mode)
HP-Switch(Config)#spanning-tree a1 bpdu-filter (Stops the port from transmitting or receiving bpdu’s. The port will continuously forward traffic. Useful for bridging devices)
HP-Switch(Config)#spanning-tree a1 bpdu-protection (Disables the port if it receives bpdu’s)
HP-Switch(Config)#spanning-tree a1 admin-edge-port (Makes a1 an admin edge port. Used for connected to end devices)
HP-Switch(Config)#no spanning-tree a1 admin-edge-port (Makes a1 a non-admin edge port. Used for connections to switches)
HP-Switch(Config)#show spanning-tree (Shows spanning tree information for vlans and ports)
HP-Switch(Config)#show spanning-tree bpdu-protection (Shows which ports are configured with bpdu protection)
HP-Switch(Config)#show spanning-tree detail (Shows extended information on vlans and ports)


## Sauvegardes, gestion


#### Activation du mode debug

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# debug all` : lancement du mode debug.
- `MONSWITCH# debug destination session` : affichage des infos sur la session actuelle. 
- `MONSWITCH# no debug all` : ne surtout pas oublier d’arrêter le debug !

#### Exporter le résultat d’une commande vers un serveur TFTP

Lancer tftpd32 sur le portable (OS Windows 32 bits), vérifier que l'adresse IP correspond à celle du switch.

Tester la liaison avec le switch à l'aide d'un ping.

Le portable a pour IP 192.168.1.2. Le switch a pour IP 192.168.1.3.

- `MONSWITCH>enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# copy command-output 'show mac-address' tftp 192.168.1.2 show-MAC-Address.txt` : envoi du résultat show mac-address sur le portable.
- `MONSWITCH# exit` : sortir du menu configuration.

#### Récupérer configuration par tftp
Lancer tftpd32 sur le portable (OS windows 32 bits), vérifier que l'adresse IP correspond à celle du switch.

#### Tester la liaison avec le switch à l'aide d'un ping.
Le portable a pour IP 192.168.1.2. L’IP du switch est 192.168.1.3.

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# copy running-config tftp 192.168.1.2 maconfigswitch.txt` : copie de la configuration sur le portable avec le nom maconfig.switch.txt (le fichier maconfigswitch.txt doit exister sur le serveur !).
- `MONSWITCH# exit` : sortir du menu configuration.

#### Copier la configuration par tftp sur le switch

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# copy tftp startup-config 192.168.1.2 maconfig.txt` : copie de la config maconfig.txt vers le switch.
- `Device may be rebooted, do you want to continue [y/n]? y` : répondre Yes.  
`Rebooting switch...	⇒ reboot du switch.`


#### Déterminer la version du firmware utilisée (pour les deux parties de la ROM)

- `HP2910 > enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `HP2910 > show flash` : affiche les images système installées sur les deux parties de la ROM.
- `HP2910 > show version` : affiche l’image système en cours d’utilisation.
```
Image stamp: /sw/code/build/fish(mf_v10_fishp)	⇒ Nom du firmware.
May 11 2007 10:06:39					⇒ Date de publication du firmware.
H.10.38									⇒ Version du firmware.
575										⇒ Révision de la version.
Boot Image: Primary
```

#### Mettre à jour le firmware

La mise à jour du firmware ne détruit pas la configuration du switch.
 
Télécharger le firmware depuis le site HP.

- `MONSWITCH> enable` : passage en mode manager.
- `Password:********` : mot de passe du manager.
- `MONSWITCH# copy tftp flash 192.168.1.2 monfirmware secondary` : Copie du firmware (fichier monfirmware) depuis le serveur TFTP ayant l'IP 192.168.1.2 dans la seconde partie de la ROM.
- `MONSWITCH# boot system flash secondary` : redémarrage du switch avec l’indication de choisir l’image système située sur la seconde partie de la ROM.
- `MONSWITCH# copy flash flash secondary` : si le système fonctionne normalement, on copie l’image système dans la première partie de la ROM. Elle devient l’image système par défaut.
- `MONSWITCH# boot` : rédémarrage du système sur l’image par défaut.


#### Diagnostic SAV HP

En cas de souci avec un switch HP qui est encore joignable en console. Le SAV va demander de récupérer le résultat de la commande show tech all. 
Le résultat de cette commande est à récupérer à l'aide de TFTP.
Lancer tftpd32 sur le portable, vérifier que l'adresse IP correspond à celle du switch.
Tester la liaison avec le switch à l'aide d'un ping.
Le portable a pour IP 192.168.1.2. Le switch a pour IP 192.168.1.3.

MONSWITCH>enable	⇒ passage en mode manager.
Password:********	⇒ mot de passe du manager.
MONSWITCH# copy command-output 'show tech all' tftp 192.168.1.2 monshowtechall.txt	⇒ envoi du résultat show tech all sur le portable.
MONSWITCH# exit	⇒ sortir du menu configuration.

## DHCP Snooping

DHCP Snooping prevents unauthorized DHCP servers from being used and providing invalid configuration data to clients on the network HP-Switch(Config)#dhcp-snooping (Turns on DHCP Snooping)
HP-Switch(Config)#dhcp-snooping vlan 1 (Turns on DHCP Snooping for vlan 1)
HP-Switch(eth-a1)#dhcp-snooping trust (Makes interface a1 a trusted DHCP snooping interface i.e. an uplink to known DHCP Server)
HP-Switch(Config)#dhcp-snooping authorized-server 192.168.1.2 (Authorized DHCP Server address, the DHCP Server packet must also be received on a trusted port)
HP-Switch(Config)#show dhcp-snooping stats (Shows packet type action and reason. i.e. Server, Client, forward, drop, Reason and count)
Flow Control You can turn on Flow Control between switch uplinks. Flow Control will not allow packets to drop if the link is being saturated. HP-Switch(Config)#interface a4 (First step is to go into the interface)
HP-Switch(eth-A4)#flow-control (Second Step is to turn on Flow-Control on the interface)
