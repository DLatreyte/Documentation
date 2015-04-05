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


**Remarque :** réciser l'IP me semble être une très bonne idée.


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

### Conclusion de la partie « configuration du réseau »

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

