# Squid - Introduction

## Parties du fichiers de configuration

- Règles d'accès (ACL). Elles définissent des objets du réseau sur lesquels on veut apposer des contrôles (IP, protocoles, utilisateurs, ...).

- Directives `http_access`. Elles permettent d'accepter ou de refuser l'accès aux objets définis dans les ACL.

- Port réseau utilisé.

- Gestion du cache (taille, localisation sur le disque dur, mémoire vive utilisée).

## Modification du parefeu

`iptables -A INPUT -p tcp -m tcp --dport 3128 -j ACCEPT`

## Vérification de la syntaxe du fichier de configuration
- `squid -k ` : permet d'envoyer des commandes à Squid, même s'il est en cours de fonctionnement.
- `squid -k parse` : vérifie la syntaxe du fichier de configuration.

## Squidclient

Utilitaire qui permet de dialoguer avec le serveur Squid comme le ferait un navigateur (demande d'accès à une ressource). L'utilisation de cet outil permet de vérifier le fonctionnement du serveur cache.

- Exemple : `squidclient http://www.google.fr`

- Arguments :
	- 