# Compilation et installation de pygame à l'aide de MacPorts

## Compte root (administrateur)

La compilation de pygame nécessite de définir quelques variables d'environnement. Ces dernières sont inaccessibles lors de l'utilisation de la commande `sudo`.

Il est donc plus pratique de travailler en étant adminstrateur (root) de la machine.

* Ouvrir une fenêtre terminal.

* Le compte root n'est pas utilisable directement tant qu'aucun mot de passe ne lui ait été attribué :
```bash
sudo passwd root
```

Choisir le mot de passe.

* Devenir l'administrateur de la machine :
```bash
su -
```

Entrer le mot de passe.

**Remarque :** le prompt ne doit plus contenir `$` mais `#`.


## Installation des dépendances pour la compilation

La compilation de *pygame* nécessite l'installation préalable de dépendances. 

### Depuis MacPorts :

```
port selfupdate

port install libsdl2 libsdl_image libsdl_mixer libsdl_ttf

port install portmidi

port install smpeg

port install mercurial

port install py34-pip
```

**Remarque :** pour vérifier que la SDL est bien installée : 

```
port install SDLInvaders
```
	
et lancer le programme `SDLInvaders` depuis le terminal.


### XQuartz

[XQuartz](http://xquartz.macosforge.org/landing/) est le serveur X11 à utiliser sous OS X.


## Définition des variables d'environnement pour la compilation

Toujours dans la fenêtre terminal, entrer les commandes suivantes :

```
export CC='/usr/bin/gcc'

export CFLAGS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk -I /opt/X11/include -arch x86_64'

export LDFLAGS='-arch x86_64'

export ARCHFLAGS='-arch x86_64'
```

**Remarque :** Remplacer x86_64 par i386 si le Mac date d'avant 2009.


## Modification du PATH pour l'utilisateur root

Dans le dossier personnel de l'utilisateur `root`, écrire le fichier caché `.bash_profile` contenant les lignes suivantes (il est possible de copier le fichier qui se trouve dans le dossier personnel de l'utilisateur qui a installé MacPorts) : 
```
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export MANPATH=/opt/local/share/man:$MANPATH
```


## Compilation de pygame

```
pip-3.4 install hg+https://bitbucket.org/pygame/pygame
```
