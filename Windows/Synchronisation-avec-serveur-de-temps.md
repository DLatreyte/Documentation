# Synchronisation d'un serveur Windows avec un serveur de temps

L'authentification kerberos nécessite que toutes les machines soient synchronisées. Par défaut, une station synchronise son horloge à celle du contrôleur de domaine qui a répondu à sa requête. Ce contrôleur de domaine utilise lui-même l'horloge de celui qui a le rôle : *PDC Operation Master*. C'est donc ce dernier qu'il faut paramétrer pour qu'un serveur de temps externe soit utilisé sur le réseau.

## Procédure

- Localisation du contrôleur de domaine ayant le rôle de PDC :

```
C:>netdom /query fsmo
```

- Arrêt du service de temps `W32Time`:

```
C:>net stop w32time
```

- Modification de la configuration pour l'utilisation de serveurs de temps externes :

```
C:> w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org"
```

-  Modification de la configuration pour rendre le PDC source de temps fiable :

```
 C:>w32tm /config /reliable:yes
```

- Démarrage du service de temps `W32Time`:

```
C:>net start w32time
```

- Vérification de l'utilisation du serveur de temps externe par le PDC : 

```
C:>w32tm /query /configuration
```

