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

**Exemple 1 :** 

```
squidclient http://www.google.fr
```

**Arguments :**
  
- `-s` : mode silencieux. Aucune information n'est envoyée sur la console.
	
- `-h` : IP ou nom du serveur Squid.
	
- `-p` : numéro du port sur lequel le serveur est à l'écoute.
	
- `-r` : force le serveur cache à recharger la ressource auprès du serveur d'origine.

**Exemple 2 :**

```
squidclient -s srv-proxy.corot.local -p 3128 http://www.google.fr
```


## Configuration d'un client (navigateur Web) à l'aide d'un fichier proxy.pac

À faire.