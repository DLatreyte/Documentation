# Installation de Python pour le calcul numérique avec MacPorts


### Installation de Python, Numpy, scipy, ipython et Matplotlib

```
sudo port install python34
sudo port install py34-tkinter
sudo port install py34-ipython +notebook +parallel +pyqt4
sudo port install py34-numpy py34-scipy py34-matplotlib py34-pandas 
sudo port install py34-sympy py34-nose py34-psutil py34-pylint
sudo port install py34-spyder
```

**Remarque :** `py34-tkinter` est une dépendance pour IDLE.


### Dossiers d'installation de Python

- *Apple* : `/usr/local/bin`

- *MacPorts* : `/opt/local/bin`

- *Python.org* : `/Library/Frameworks/python`


### Configurations possibles

- Faire en sorte que python soit un alias de python34 :
  
```
port select --list python    sudo port select --set python python34
```

- Faire en sorte que ipython soit un alias de  ipython34 : 
 
```
port select --list ipython sudo port select --set ipython ipython34
```

- Choix du backend pour Matplotlib : 
	modifier le fichier  `~/.matplotlib/matplotlibrc` (http://matplotlib.sourceforge.net/faq/installing_faq.html#what-is-a-backend)