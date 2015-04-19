# Synchronisation d'un serveur Windows avec un serveur de temps

L'authentification kerberos nécessite que toutes les machines soient synchronisées. Par défaut, une station synchronise son horloge à celle du contrôleur de domaine qui a répondu à sa requête. Ce contrôleur de domaine utilise lui-même l'horloge de celui qui a le rôle : *PDC Operation Master*. C'est donc ce dernier qu'il faut paramétrer pour qu'un serveur de temps externe soit utilisé sur le réseau.

## Procédure

1. Localisation du contrôleur de domaine ayant le rôle de PDC :

```
C:>netdom /query fsmo
```

2. 