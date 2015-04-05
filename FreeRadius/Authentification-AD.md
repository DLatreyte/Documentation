# FreeRadius : utilisation d'Active Directory pour l'authentification 


## Principe 

FreeRadius permet d'effectuer une authentification par ports : l'accès au réseau n'est possible pour une station qu'une fois l'identifiant de l'utilisateur validé par le serveur Radius. Dans le cas contraire, le port, au niveau du switch, reste fermé.


	Le port n'est pas totalement fermé, les paquets nécessaires à l'authentification sont transmis.
	
Le serveur Radius peut communiquer avec un serveur AD afin que ce dernier valide les identifiant et mot de passe de l'utilisateur. Si c'est le cas, l'ordre est envoyé au switch d'ouvrir le port.


## Étapes

1. Mise en place d'un serveur Linux intégré au domaine Windows (avec samba donc).

2. Installation de FreeRadius.

3. Configuration du fichier clients.conf. Le serveur Radius ne doit pas répondre à toute demande ! Il est donc nécessaire de déclarer les switchs qui seront autorisés à se renseigner auprès du serveur.

4. Configuration des switchs