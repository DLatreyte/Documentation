## Fedora - Post-installation

 ### Installation de RPMFusion

```
$ sudo yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-21.noarch.rpm
$ sudo yum localinstall --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-21.noarch.rpm
```

```
yum update
```

### Installation de `Yum Fastest Mirror Plugin`

```
$ sudo yum install yum-plugin-fastestmirror
```

 ### Installation de VLC

**Rappel :** VLC est capable de changer de format une vidéo, d'extraire l'audio d'une vidéo, de lire des vidéos de ressources en ligne, ...

```
$ sudo yum install vlc
```

### Installation des codecs

```
$ sudo yum install gstreamer-plugins-ugly
```

 ### Installation des logiciels pour gérer les archives

```
$ sudo yum install unrar unzip
```

### Installation de Flash Player

- Systèmes 32 bits :

```
$ sudo rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
$ sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
$ sudo yum install flash-plugin
```

- Systèmes 64 bits :

```
$ sudo rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
$ sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
$ sudo yum install flash-plugin
```


### Installation de `Google Chrome`

- Systèmes 32 bits :

```
$ sudo yum localinstall --nogpgcheck https://dl.google.com/linux/direct/google-chrome-stable_current_i386.rpm
```

- Systèmes 64 bits :

```
$ sudo yum localinstall --nogpgcheck https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
```



### Installation de java (voir si l'alternative `openJDK` n'est pas suffisante)

- Se rendre sur le site de sun : [http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html)

- Télécharger la dernière version du JRE (ou SDK, pour la programmation).

- Installer le programme :

```
$ sudo rpm -Uvh jre-8u25-linux-i586.rpm
```

- Pour l'utilisation du programme java juste installée :

```
$ sudo alternatives --install /usr/bin/java java /usr/java/latest/jre/bin/java 200000
```

- Pour l'utilisation du plugin java :

	- Systèmes 32 bits
	
	```
	$ sudo alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so /usr/java/jdk1.8.0_11/lib/i386/libnpjp2.so 200000
	```
	
	- Systèmes 64 bits
	
	```
	$ sudo alternatives --install /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 /usr/java/jdk1.8.0_11/lib/amd64/libnpjp2.so 200000
	```
	

### Installation de `Gnome Tweak tool`

```
$ sudo yum install gnome-tweak-tool
```


 ### Choisir les extensions sur `Gnome Extensions site`

[https://extensions.gnome.org](https://extensions.gnome.org)

**Liste possible :** Windows List, Dash To Dock, User Themes, Application Menu, Advanced settings in user menu, etc.


### Installation de `Fedy Tool`

Interface graphique permettant de configurer un système Fedora : instalallation des logiciels les plus importants, réparation de bug connus, ajout de dépôts, etc.

```
$ su -c "curl https://satya164.github.io/fedy/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"
```

Ce logiciel peut être utilisé en ligne de commande ou dans un script (pour devenir un super ninite !)

```
$ fedy -e list
```

Les fichiers téléchargés sont sauvegardés dans un dossier dont le nom est : `fedy_dl` dans le dossier de l'utilisateur.

