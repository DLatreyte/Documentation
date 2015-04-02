# Installation de MacPorts


### Installation de Xcode et des outils en ligne de commande

1. Installer la dernière version de Xcode
2. Accepter la licence : `xcodebuild -license `
3. Installer les outils en ligne de commande : `xcode-select --install`


### Installation de MacPorts

Télécharger depuis [site de MacPorts](https://www.macports.org).


### Vérification de la configuration - variables d’environnement

Dans `.bash_profile` insérer les lignes suivantes :

```
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export EDITOR=/usr/bin/vi
```


### Utilisation de macPorts

1. `sudo port selfupdate` : met à jour la base des logiciels

2. `sudo port -d selfupdate` : même chose mais en mode « verbose »

3. `port help nom_de_la_commande` : aide sur la commande

4. `port list` : énumère les différents logiciels installables (ce n'est pas la commande à privilégier car son exécution peut être lente et le résultat retourné pas toujours évident à analyser)

5. `port installed` ou `port echo installed` : énumération des logiciels installés 

6. `port search xxx` : recherche dans les noms des logiciels et dans les descriptions

7. `port search --name --line --glob "php*"` : ne cherche que parmi les noms de paquets, utilise un affichage condensé (une ligne par proposition) et filtre sur les noms débutant par ‘php’

8. `port info nom_du_port` : description du port

9. `port deps nom_du_port` : énumère les dépendances du port (pour son installation ou son utilisation)

10. `port deps --no-build nom_du_port` : énumère les dépendances du port (pour son fonctionnement)

11. `port variants nom_du_port` : permet de découvrir les options à l’installation

12. `sudo port install nom_du_port -variante1 +variante2` : installation d’un port (avec choix des options)

13. `sudo port -v install nom_du_port` : en cas de problème, fournit plus d’informations

14. `sudo port clean nom_du_port` : efface les fichiers créés lors de l’installation du port.  
**Remarque :** peut être nécessaire lorsque l’installation d’un logiciel ne s’effectue pas correctement.

15. `sudo port clean --dist nom_du_port` : efface tous les fichiers téléchargés pour l’installation du port (utile si le téléchargement s’est mal passé)

16. `sudo port uninstall nom_du_port` : suppression du port. Si ce port est une dépendance pour un autre port, sa désinstallation est impossible.

17. `sudo port uninstall --follow-dependents nom_du_port` : supprimer récursivement tous les ports qui dépendent du port indiqué

18. `sudo port uninstall --follow-dependencies nom_du_port` : supprimer récursivement tous les ports installés lors de l’installation du port indiqué

19. `port outdated` : liste des ports installés qui nécessitent une mise à jour

20. `sudo port upgrade outdated` : met à jour les ports installés dont la version est inférieure à celle présente dans les dépôts.  
**Remarque :** la commande précédente ne désinstalle pas la version précédente mais la désactive (utile pour le cas où un dysfonctionnement apparaitrait). Il est ainsi possible de revenir à l’ancienne version : 
```
port installed nom_du_port
sudo port activate nom_du_port @ancienne_version
```

21. `sudo port -u upgrade outdated` : met à jour les ports installés dont la version est inférieure à celle présente dans les dépôts et supprime les anciennes versions

22. `sudo port uninstall inactive`: supprime les versions inactives.


