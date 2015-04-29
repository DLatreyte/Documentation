# Installation de MacPorts


### Installation de Xcode et des outils en ligne de commande

1. Installer la dernière version de Xcode
2. Accepter la licence depuis le terminal : `xcodebuild -license `
3. Toujours depuis le terminal, installer les outils en ligne de commande : `xcode-select --install`


### Installation de MacPorts

Télécharger l'archive depuis le [site de MacPorts](https://www.macports.org).


### Vérification de la configuration - variables d’environnement

Dans `.bash_profile` insérer les lignes suivantes :

```
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export EDITOR=/usr/bin/vi   # seulement nécessaire pour utiliser par défaut vim
```


### Utilisation de macPorts, quelques commandes à connaître

- `sudo port selfupdate` : met à jour la base des logiciels.

- `sudo port -d selfupdate` : même chose mais en mode « verbose ».

- `port help nom_de_la_commande` : aide sur la commande.

- `port list` : énumère les différents logiciels installables (ce n'est pas la commande à privilégier car son exécution peut être lente et le résultat retourné pas toujours évident à analyser).

- `port installed` ou `port echo installed` : énumère les logiciels installés.

- `port search xxx` : recherche dans les noms des logiciels et dans les descriptions.

- `port search --name --line --glob "php*"` : ne cherche que parmi les noms de paquets. Utilise un affichage condensé (une ligne par proposition) et filtre sur les noms débutant par ‘php’.

- `port info nom_du_port` : description du port.

- `port deps nom_du_port` : énumère les dépendances du port (pour son installation ou son utilisation).

- `port deps --no-build nom_du_port` : énumère les dépendances du port (pour son utilisation uniquement).

- `port variants nom_du_port` : permet de découvrir les paramètres de compilation.

- `sudo port install nom_du_port -variante1 +variante2` : installation d’un port (avec choix des paramètres à ajouter ou à retirer).

- `sudo port -v install nom_du_port` : en cas de problème, fournit plus d’informations.

- `sudo port clean nom_du_port` : efface les fichiers créés lors de l’installation du port. 
 
**Remarque :** cette commande est très utile lorsque l’installation d’un logiciel ne s’effectue pas correctement.

- `sudo port clean --dist nom_du_port` : efface tous les fichiers téléchargés pour l’installation du port (utile si le téléchargement s’est mal passé).

- `sudo port uninstall nom_du_port` : suppression du port. Si ce port est une dépendance pour un autre port, sa désinstallation est impossible.

- `sudo port uninstall --follow-dependents nom_du_port` : supprime récursivement tous les ports qui dépendent du port indiqué.

- `sudo port uninstall --follow-dependencies nom_du_port` : supprime récursivement tous les ports installés lors de l’installation du port indiqué.

- `port outdated` : liste des ports installés qui nécessitent une mise à jour.

- `sudo port upgrade outdated` : met à jour les ports installés dont la version est inférieure à celle présente dans les dépôts.  

**Remarque :** la commande précédente ne désinstalle pas la version précédente mais la désactive (utile pour le cas où un dysfonctionnement apparaitrait). Il est ainsi possible de revenir à l’ancienne version : 

	port installed nom_du_port
	sudo port activate nom_du_port @ancienne_version


- `sudo port -u upgrade outdated` : met à jour les ports installés dont la version est inférieure à celle présente dans les dépôts et supprime les anciennes versions.

- `sudo port uninstall inactive`: supprime les versions inactives.


