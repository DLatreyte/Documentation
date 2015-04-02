# Commande net

	Cette commande semble dépréciée depuis l'apparition de Samba 4.
	

> **Remarque :** dans le cas d'un serveur membre d'un domaine AD, utiliser `net ads`. Si cette commande ne fonctionne pas, elle est automatiquement remplacée par `net rpc`.

> **Remarque :** par défaut `net` interroge la machine locale. Pour dialoguer avec une machine distante, préciser `-S servername`.


## Manipuler des groupes (globaux)


#### Lister les groupes

```
net rpc group list -Uroot%password
```

#### Ajouter un groupe Windows

```
net rpc group add "SupportEngrs" -Uroot%password
```

#### Détruire un groupe

```
net rpc group delete SupportEngineers -Uroot%password
```

#### Renommer un groupe

```
net rpc group rename SupportEngrs CustomerSupport -Uroot%password
```

#### Lister le mappage entre groupes Unix et Windows

```
net groupmap list 
```


## Modifier l'appartenance à un groupe



#### Retirer l'utilisateur ajt du groupe MIDEARTH\Engineers

```
net rpc group delmem "MIDEARTH\Engineers" ajt -Uroot%password
```

#### Lister les membres du groupe Engineers

```
net rpc group members "Engineers" -Uroot%password 
```

#### Ajouter l'utilisateur ajt au groupe MIDEARTH\Engineers

```
net rpc group addmem "MIDEARTH\Engineers" ajt -Uroot%password
```



## Manipuler des groupes imbriqués

> **Idée :** groupe local contenant des utilisateurs, des groupes, ...


#### Créer le groupe local demo sur le serveur MORDON

```
net rpc group add demo -L -S MORDON -Uroot%password 
```

#### Ajouter le groupe DOM\Domain Users au groupe local demo

```
net rpc group addmem demo "DOM\Domain Users" -Uroot%password
```

#### Lister les membres du groupe local demo

```
net rpc group members demo -Uroot%password
```

#### Retirer le membre DOM\jht du groupe local demo

```
net rpc group delmem demo "DOM\jht" -Uroot%password
```



## Agir sur une station de travail depuis un serveur


##### Ajouter au groupe Administrators de la machine WINPC032 tous les membres du domaine

```
net rpc group addmem "Administrators" "Domain Users" -S WINPC032 -Uadministrator%secret
```


## Gérer des utilisateurs

##### Ajouter un utilisateur
```
net [<method>] user ADD <name> [-c container] [-F user flags] [misc. options] [targets]
```

```
net rpc user add jacko -S FRODO -Uroot%password
```

#### Modifier/Attribuer un mot de passe

```
net rpc password <username> [<password>] -Uadmin_username%admin_pass
```

```
net rpc password jacko f4sth0rse -S FRODO -Uroot%password
net rpc user password jacko f4sth0rse -S FRODO -Uroot%password
```


#### Retirer un utilisateur

```
net [<method>] user DELETE <name> [misc. options] [targets]
```

```
net rpc user delete jacko -Uroot%password
```


#### Obtenir des informations sur un compte utilisateur

```
net rpc user info jacko -S SAURON -Uroot%password
```


#### Renommer un utilisateur

```
net rpc user rename oldusername newusername
```


## Droits et délégation

```
net rpc rights list accounts -U root%password
net rpc rights list -U root%password
net rpc rights grant "MIDEARTH\Domain Admins" \
    SeMachineAccountPrivilege SePrintOperatorPrivilege \
    SeAddUsersPrivilege SeRemoteShutdownPrivilege \
    SeDiskOperatorPrivilege  -U root%password
net rpc rights grant "MIDEARTH\jht" \
	SeMachineAccountPrivilege SePrintOperatorPrivilege \
	SeAddUsersPrivilege SeDiskOperatorPrivilege \
	-U root%password
```


## Appartenance d'une machine à un domaine


#### Intégration d'une machine à un domaine

```
net ads join -UAdministrator%password
```

#### Tester le résultat de l'intégration

```
net ads testjoin -UAdministrator%secret
```

#### Quitter un domaine AD
---------------------
net ads leave

#### Obtenir des détails sur l'intégration dans un domaine AD

```
net ads status
```


## Gérer les SIDs


#### Sauvegarder le SID d'une machine

```
net getlocalsid > /etc/samba/my-sid
```


#### Restaurer le SID d'une machine

```
Copier le SID dans le fichier my-sid
net setlocalsid S-1-5-21-1385457007-882775198-1210191635
```

## Gérer les volumes réseau



#### Créer un partage Bulge correspondant à /data sur le fs

```
net rpc share add Bulge=/data -S MERLIN -Uroot%password
``


#### Lister les partages sur un serveur

```
net rpc share -S MERLIN -Uroot%password
```

#### Supprimer un partage

``
net rpc share delete Bulge -S MERLIN -Uroot%password
```

...


## Temps

```
net time -S SAURON
net time system -S FRODO
net time set -S MAGGOT -U Administrator%password
net time zone -S SAURON
```


