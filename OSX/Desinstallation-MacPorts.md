# Désinstallation de MacPorts

- Si  la commande `port` est toujours installée et fonctionnelle, taper la commande :

```
sudo port -fp uninstall installed
```

Tous les fichiers/programmes définis dans des ports sont alors désinstallés.

- Si la commande `port` n'est plus fonctionnelle, effectuer directement le dernier point ci-dessous.

- Il peut être utile de sauvegarder au préalable les configurations de certains programmes situées dans `/opt/local/etc` ou les bases de données...

- Pour effacer les dernières traces, taper la commande :
```
sudo rm -rf \
		/opt/local/* \
		/Applications/MacPorts \
		/Library/LaunchDaemons/org.macports.* \
```
	
- Effacer les entrées relatives à MacPorts dans le fichier `~/.bash_profile`.