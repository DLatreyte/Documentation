<TeXmacs|1.99.1>

<style|<tuple|tmmanual|french>>

<\body>
  <doc-data|<doc-title|Samba>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|Liste
    de tableaux> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-1><vspace|0.5fn>

    1.<space|2spc>Processus <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>

    2.<space|2spc>Configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    <with|par-left|1tab|2.1.<space|2spc>Modification de la configuration
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|2.2.<space|2spc>Conclusion
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    3.<space|2spc><with|font-family|tt|smb.conf>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>

    <with|par-left|1tab|3.1.<space|2spc>Variables
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|3.2.<space|2spc>Fichier de configuration
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|3.3.<space|2spc>Serveur
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|3.4.<space|2spc>Partage
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|3.5.<space|2spc>Réseau
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <with|par-left|1tab|3.6.<space|2spc>Serveurs virtuels
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>>

    <with|par-left|1tab|3.7.<space|2spc>Fichiers de log
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>>

    4.<space|2spc>Comptes utilisateurs, authentifications et autorisations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>

    <with|par-left|1tab|4.1.<space|2spc>Les différents modes de sécurité
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>>

    <with|par-left|1tab|4.2.<space|2spc>Accès anonyme à un partage en mode
    <with|font-family|tt|user> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>>

    <with|par-left|1tab|4.3.<space|2spc>Mots de passe et authentification
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>>

    <with|par-left|1tab|4.4.<space|2spc>Identifiant de sécurité
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>>

    <with|par-left|1tab|4.5.<space|2spc>Stockage des comptes
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>>

    <with|par-left|1tab|4.6.<space|2spc>Mappage d'utilisateurs
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    <with|par-left|1tab|4.7.<space|2spc>Utilitaires de gestion des
    utilisateurs : <with|font-family|tt|smbpasswd> et
    <with|font-family|tt|pdbedit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>>

    <with|par-left|1tab|4.8.<space|2spc>Synchronisation des mots de passe
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>>

    <with|par-left|1tab|4.9.<space|2spc>Mappage de groupes
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>>

    <with|par-left|1tab|4.10.<space|2spc>La commande
    <with|font-family|tt|net> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>>

    <with|par-left|2tab|4.10.1.<space|2spc><with|font-family|tt|net rpc>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>

    <with|par-left|4tab|Utilisateurs et groupes
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36><vspace|0.15fn>>

    <with|par-left|4tab|Partages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38><vspace|0.15fn>>

    <with|par-left|4tab|Services <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40><vspace|0.15fn>>

    <with|par-left|2tab|4.10.2.<space|2spc><with|font-family|tt|net ads>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>>

    <with|par-left|1tab|4.11.<space|2spc>Attribution de droits spécifiques
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>>

    <with|par-left|1tab|4.12.<space|2spc>Autorisations sur les partages
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>>

    5.<space|2spc>Options avancées <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>

    <with|par-left|1tab|5.1.<space|2spc>Noms des fichiers/dossiers
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>>

    <with|par-left|1tab|5.2.<space|2spc>Liens symboliques
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51>>

    <with|par-left|1tab|5.3.<space|2spc>Masquage de fichiers
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>>

    <with|par-left|1tab|5.4.<space|2spc>Verrous
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>>

    <with|par-left|1tab|5.5.<space|2spc>Attributs DOS
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56>>

    <with|par-left|1tab|5.6.<space|2spc>Permissions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>>

    <with|par-left|1tab|5.7.<space|2spc>ACL
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>>

    <with|par-left|1tab|5.8.<space|2spc>MS-DFS
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>>

    <with|par-left|1tab|5.9.<space|2spc>VFS
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>>

    <with|par-left|1tab|5.10.<space|2spc>Scripts
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>>

    6.<space|2spc>Résolution de noms et exploration du réseau
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>

    <with|par-left|1tab|6.1.<space|2spc>Résolution de noms
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>>

    <with|par-left|2tab|6.1.1.<space|2spc>Systèmes d'exploitation windows
    modernes <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>>

    <with|par-left|2tab|6.1.2.<space|2spc>Interaction entre un client WINS et
    un serveur WINS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66>>

    <with|par-left|1tab|6.2.<space|2spc>Exploration du réseau
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>>

    Quelques règles à retenir pour améliorer l'exploration
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70><vspace|0.15fn>

    7.<space|2spc>Contrôleur de domaine <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>

    <with|par-left|1tab|7.1.<space|2spc>Configuration du PDC
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-72>>

    <with|par-left|4tab|Domain Admins <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-73><vspace|0.15fn>>

    <with|par-left|4tab|Gestion des privilèges
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-74><vspace|0.15fn>>

    8.<space|2spc>Programme smbclient <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-75>

    9.<space|2spc>Montages CIFS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-76>
  </table-of-contents>

  \;

  <\list-of-tables|table>
    <glossary-1|Fichier de configuration|<pageref|auto-9>>

    <glossary-1|Serveur|<pageref|auto-11>>

    <glossary-1|Partage|<pageref|auto-13>>

    <glossary-1|Réseau|<pageref|auto-15>>

    <glossary-1|Les différents modes de sécurité|<pageref|auto-20>>

    <glossary-1|Accès anonyme à un partage|<pageref|auto-22>>

    <glossary-1|Paramètre <with|font-family|tt|map to
    guest>|<pageref|auto-23>>

    <glossary-1|Paramètres relatifs à LDAP|<pageref|auto-27>>

    <glossary-1|Mappage d'utilisateurs|<pageref|auto-29>>

    <glossary-1|Synchronisation des mots de passe|<pageref|auto-32>>

    <glossary-1|net rpc -- utilisateurs et groupes|<pageref|auto-37>>

    <glossary-1|net rpc share|<pageref|auto-39>>

    <glossary-1|net rpc service|<pageref|auto-41>>

    <glossary-1|Attribution de droits spécifiques|<pageref|auto-44>>

    <glossary-1|Droits spécifiques|<pageref|auto-45>>

    <glossary-1|Autorisations sur les partages|<pageref|auto-47>>

    <glossary-1|Noms de Fichiers/dossiers|<pageref|auto-50>>

    <glossary-1|Liens symboliques|<pageref|auto-52>>

    <glossary-1|Masquage de fichiers|<pageref|auto-54>>

    <glossary-1|MS-DFS|<pageref|auto-60>>

    <glossary-1|Résolution de noms|<pageref|auto-67>>

    <glossary-1|Exploration|<pageref|auto-69>>
  </list-of-tables>

  \;

  <new-page*><section|Processus>

  <\description>
    <item*|nmbd>entre en jeu lors de l'exploration du réseau (résolution de
    nom, ...). Utilise le protocole UDP.

    <item*|smbd>prend en charge toutes les connexions TCP/IP (services de
    fichiers, imprimantes, ...) et l'authentification.

    <item*|winbindd>utilisé lorsque samba apparient à un domaine NT ou ADS.
    Prend en charge l'authentification et les relations d'approbation.
  </description>

  <section|Configuration>

  Samba utilise le fichier <code*|smb.conf> et des fichiers binaires situés
  dans <code*|/usr/local/samba/var/locks/> (fichiers <code*|tdb>). Ce dossier
  est contrôlable à l'aide du paramètre <code*|lock directory> dans
  <code*|smb.conf>.

  Niveaux de configuration <space|0.2spc>:

  <\itemize>
    <item>partages ;

    <item>exploration ;

    <item>authentification ;

    <item>impression.
  </itemize>

  Les <em|noms des paramètres> sont <strong|insensibles> à la casse. La règle
  est moins claire pour la <em|valeur de ces paramètres> puisque par exemple
  les chemins sont sensibles à la casse sous Unix.

  <subsection|Modification de la configuration>

  <\itemize>
    <item>À chaque nouvelle demande de connexion, un fork du processus
    <verbatim|smbd> est créé. Le processus fils relit les fichiers de
    configuration et prend donc en compte toute modification.

    <item>Une fois démarré, le processus <verbatim|smbd> principal vérifie
    toutes les trois minutes si les fichiers de configuration ont été
    modifiés.

    <item>Un administrateur peut forcer la relecture des fichiers de
    configuration (<code*|reload-config message> via <code*|smbcontrol>).

    <item>Le paramètre <code*|printcap cache time> règle l'exploration de
    nouvelles imprimantes.
  </itemize>

  <subsection|Conclusion>

  <\enumerate>
    <item>Travailler sur une copie du fichier <code*|smb.conf> ;

    <item>Vérifier sa syntaxe ;

    <item>Remplacer <code*|smb.conf>.
  </enumerate>

  <\remark*>
    Le fichier <code*|smb.conf> étant lu régulièrement, il est préférable
    qu'il soit le plus petit possible. Il faut donc travailler sur, par
    exemple, <code*|smb.conf.master> (fichier dans lequel on place toutes les
    instructions avec leur commentaire) et générer le fichier
    <code*|smb.conf> à l'aide de la commande : <code*|testparm -s
    smb.conf.master \<gtr\> smb.conf>
  </remark*>

  <section|<code*|smb.conf>>

  <subsection|Variables>

  Chaque nouvelle demande de connexion étant prise en charge par un processus
  nouveau, il est possible de déterminer un paramétrage unique pour chaque
  client grâce à l'utilisation de variables (voir liste page 87).

  <\example>
    \;

    <\code>
      [pub]

      \ \ \ \ path = /home/ftp/pub/%a
    </code>
  </example>

  le partage <verbatim|pub> pointe vers un dossier sur le serveur dépendant
  du type d'os du client.

  <\example>
    \;

    <\code>
      [homes]

      \ \ \ \ path = /export/smb/home/%U
    </code>
  </example>

  les dossiers personnels accessibles via Samba pointent vers un dossier
  dépendant du nom de l'utilisateur du client.

  <subsection|Fichier de configuration>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|1|4|1|1|cell-halign|c>|<cwith|1|4|1|1|cell-width|3.5cm>|<cwith|1|4|1|1|cell-hmode|exact>|<cwith|1|4|2|2|cell-width|2cm>|<cwith|1|4|2|2|cell-hmode|exact>|<cwith|1|4|4|5|cell-width|1.5cm>|<cwith|1|4|4|5|cell-hmode|exact>|<cwith|1|4|3|3|cell-width|8cm>|<cwith|1|4|3|3|cell-hmode|exact>|<cwith|2|4|3|3|cell-halign|l>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|config file>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        fichier à utiliser à la place de celui-ci
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Global\ 
      </cell>>|<row|<\cell>
        <code*|include>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        inclure le contenu de ce fichier dans celui-ci
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|copy>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        permet de cloner la configuration d'un partage
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Share
      </cell>>>>>
    </with>
  </big-table|Fichier de configuration>

  <\description>
    <item*|config file>

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ config file = /etc/samba/smb.conf.%m
      </code>
    </example>

    indique d'utiliser un fichier de configuration dépendant du nom NETBIOS
    du client. Si ce fichier n'existe pas, cette ligne est ignorée.

    <item*|include>

    <\example>
      <\code>
        \;

        [global]

        \ \ \ \ include = /usr/local/samba/lib/smb.conf.%m
      </code>
    </example>

    permet de redéfinir certains paramètres en fonction du nom NETBIOS du
    client.

    <item*|copy>

    <\example>
      \;

      <\code>
        [basic]

        \ \ \ \ read only = no

        \ \ \ \ browseable = yes

        \ \ \ \ available = no

        [data]

        \ \ \ \ copy = basic

        \ \ \ \ available = yes

        \ \ \ \ path = /data
      </code>
    </example>
  </description>

  <subsection|Serveur>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|1|3|3|cell-halign|c>|<cwith|1|4|1|1|cell-width|3.5cm>|<cwith|1|4|1|1|cell-hmode|exact>|<cwith|1|4|2|2|cell-width|2cm>|<cwith|1|4|2|2|cell-hmode|exact>|<cwith|1|4|3|3|cell-width|8cm>|<cwith|1|4|3|3|cell-hmode|exact>|<cwith|1|4|4|5|cell-width|1.5cm>|<cwith|1|4|4|5|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|netbios name>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        nom NETBIOS du serveur
      </cell>|<\cell>
        hostname
      </cell>|<\cell>
        Global\ 
      </cell>>|<row|<\cell>
        <code*|workgroup>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        nom NETBIOS du groupe de travail (ou du domaine)
      </cell>|<\cell>
        Workgroup
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|serveur string>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        chaîne de caractère
      </cell>|<\cell>
        samba %v
      </cell>|<\cell>
        Global
      </cell>>>>>
    </with>
  </big-table|Serveur>

  <subsection|Partage>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|4|6|3|3|cell-halign|l>|<cwith|1|6|4|5|cell-width|1.5cm>|<cwith|1|6|4|5|cell-hmode|exact>|<cwith|1|6|3|3|cell-width|8cm>|<cwith|1|6|3|3|cell-hmode|exact>|<cwith|1|6|2|2|cell-width|2cm>|<cwith|1|6|2|2|cell-hmode|exact>|<cwith|1|6|1|1|cell-width|3.5cm>|<cwith|1|6|1|1|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|path (directory)>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        dossier Unix (pour les fichiers ou le spool d'impression)
      </cell>|<\cell>
        <code*|/tmp>
      </cell>|<\cell>
        \ Share
      </cell>>|<row|<\cell>
        <code*|comment>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        commentaire
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|volume>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        nom du volume pour le partage
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|read only>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        le client est-il autorisé à écrire dans le partage ?
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|writable> (ou <code*|write ok> ou <code*|writeable>)
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        l'inverse de <code*|read-only> (équivalent à <code*|read-only = no>)
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Share
      </cell>>>>>
    </with>
  </big-table|Partage>

  <subsection|Réseau>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|4|5|3|3|cell-halign|l>|<cwith|1|5|3|3|cell-width|8cm>|<cwith|1|5|3|3|cell-hmode|exact>|<cwith|1|5|2|2|cell-width|2cm>|<cwith|1|5|2|2|cell-hmode|exact>|<cwith|1|5|1|1|cell-width|3.5cm>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|1|5|4|4|cell-width|1.5cm>|<cwith|1|5|4|4|cell-hmode|exact>|<cwith|1|5|5|5|cell-width|1.5cm>|<cwith|1|5|5|5|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|hosts allow>

        (<code*|allow hosts>)
      </cell>|<\cell>
        string
      </cell>|<\cell>
        clients autorisés à se connecter à Samba
      </cell>|<\cell>
        None
      </cell>|<\cell>
        \ Share

        Global
      </cell>>|<row|<\cell>
        <code*|hosts deny>

        (<code*|deny hosts>)
      </cell>|<\cell>
        string
      </cell>|<\cell>
        clients interdits de connexion
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Share

        Global
      </cell>>|<row|<\cell>
        <code*|interfaces>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        interfaces réseau qu'écoute samba
      </cell>|<\cell>
        Toutes les interfaces
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|bind interfaces only>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        indique à Samba de n'écouter que les interfaces spécifiée par
        <code*|interfaces>
      </cell>|<\cell>
        No
      </cell>|<\cell>
        Global
      </cell>>>>>
    </with>
  </big-table|Réseau>

  Le comportement de <code*|hosts allow> et <code*|hosts deny> est opposé à
  celui attendu. Leur positionnement dans la section <code*|global> prend le
  pas sur toute apparition dans la définition d'un partage.

  <subsection|Serveurs virtuels>

  <\description>
    <item*|Idée>Faire apparaître le serveur Samba comme plusieurs serveurs
    différents proposant des services différents.
  </description>

  Les clients Win 9x envoient leur demande de connexion au serveur
  <strong|(port 139)> en se basant sur le protocole NETBIOS (nom qui fait
  donc parti de la trame que reçoit le serveur). Un administrateur peut
  utiliser la variable %L pour établir plusieurs fichiers de configuration.

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ netbios name = PIGEON

      \ \ \ \ netbios aliases = SEAGULL PELICAN

      \ \ \ \ server string = Engr Dept Server (Samba %v)

      \ \ \ \ workgroup = GARDEN

      \ \ \ \ include = /usr/local/samba/lib/%L.conf
    </code>
  </example>

  Les clients CIFS (win2000, XP, ...) n'utilisent pas, par défaut, la couche
  NETBIOS et le nom NETBIOS du serveur n'est pas utilisable (il ne fait pas
  parti de la trame que reçoit le serveur). De plus, le port utilisé, par
  défaut, par ces clients est le 145 (samba écoute donc aussi ce port).

  Il est possible de forcer les clients CIFS à utiliser le port 139 (et donc
  la couche NETBIOS) en obligeant Samba à n'écouter que le port 139.

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ netbios name = PIGEON

      \ \ \ \ netbios aliases = SEAGULL PELICAN

      \ \ \ \ server string = Engr Dept Server (Samba %v)

      \ \ \ \ workgroup = GARDEN

      \ \ \ \ smb ports = 139

      \ \ \ \ include = /usr/local/samba/lib/%L.conf
    </code>
  </example>

  Pour faire de la virtualisation sur le port 145 (et donc uniquement avec
  des clients CIFS), il faut utiliser <strong|plusieurs IP> (donc interfaces,
  qu'elles soient réelles ou virtuelles).

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ netbios name = PIGEON

      \ \ \ \ workgroup = GARDEN

      \ \ \ \ include = /usr/local/samba/lib/%i.conf
    </code>
  </example>

  et au niveau du serveur DNS

  <\code>
    ; Bind 9 address entries

    pigeon IN A 192.168.1.10

    seagull IN A 192.168.1.11

    pelican IN A 192.168.1.12
  </code>

  <subsection|Fichiers de log>

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ log level = 1

      \ \ \ \ log file = /var/log/samba/log.%m

      \ \ \ \ max log size = 50
    </code>
  </example>

  Le niveau peut varier de 0 à 10. Le niveau 0 ne fournit que les messages
  d'erreurs critiques, le niveau 1 fournit les informations de connexion. En
  pratique se limiter aux niveaux 1, 2 et 3.

  <\remark*>
    On peut personnaliser le fichier par ordinateur, utilisateur, ...
  </remark*>

  <\remark*>
    Si on utilise <code*|log.%m>, deux fichiers de log seront créés, le
    premier nommé à partir de l'IP, le second utilisant le nom de la machine.
    C'est du à l'utilisation du port 445 par les nouveaux clients Windows et
    donc la non utilisation de la couche NETBIOS (voir la partie sur la
    virtualisation).
  </remark*>

  <section|Comptes utilisateurs, authentifications et autorisations>

  <subsection|Les différents modes de sécurité>

  <big-table|<block*|<tformat|<cwith|2|2|2|2|cell-hyphen|c>|<cwith|1|2|2|2|cell-width|2cm>|<cwith|1|2|2|2|cell-hmode|exact>|<cwith|2|2|3|3|cell-width|8cm>|<cwith|2|2|3|3|cell-hmode|exact>|<cwith|2|2|4|4|cell-width|1.5cm>|<cwith|2|2|4|4|cell-hmode|exact>|<cwith|2|2|5|5|cell-width|1.5cm>|<cwith|2|2|5|5|cell-hmode|exact>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|2|2|3|3|cell-halign|l>|<cwith|1|1|1|5|cell-background|grey>|<cwith|2|2|2|2|cell-halign|L>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<cell|<code*|security>>|<\cell>
    user

    ads

    domain

    share

    server
  </cell>|<\cell>
    modes d'authentification utilisés pour répondre aux difféntes requêtes.
  </cell>|<cell|user>|<cell|Global>>>>>|Les différents modes de sécurité>

  Les modes <code*|share> et <code*|server> sont obsolètes et ne doivent plus
  être utilisés. Ils ne sont conservés qu'à des fins de compatibilité.

  <subsection|Accès anonyme à un partage en mode <code*|user>>

  En principe, accéder à un partage nécessite l'enchaînement
  \S<space|0.2spc><em|authentification> <emdash>
  <em|autorisation><space|0.2spc>\T. Le problème ici est : comment autoriser
  sans authentifier ?

  <big-table|<block*|<tformat|<cwith|1|1|4|5|cell-width|1.5cm>|<cwith|1|1|4|5|cell-hmode|exact>|<cwith|1|1|3|3|cell-width|8cm>|<cwith|1|1|3|3|cell-hmode|exact>|<cwith|1|1|2|2|cell-width|2cm>|<cwith|1|1|2|2|cell-hmode|exact>|<cwith|1|1|1|1|cell-width|3.5cm>|<cwith|1|1|1|1|cell-hmode|exact>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|8cm>|<cwith|2|2|3|3|cell-hmode|exact>|<cwith|3|5|1|1|cell-width|3.5cm>|<cwith|3|5|1|1|cell-hmode|exact>|<cwith|3|5|2|2|cell-width|2cm>|<cwith|3|5|2|2|cell-hmode|exact>|<cwith|3|5|3|3|cell-width|8cm>|<cwith|3|5|3|3|cell-hmode|exact>|<cwith|3|5|4|5|cell-width|1.5cm>|<cwith|3|5|4|5|cell-hmode|exact>|<cwith|3|5|2|5|cell-hyphen|c>|<cwith|5|5|2|2|cell-halign|l>|<cwith|1|1|1|5|cell-background|grey>|<cwith|2|5|3|3|cell-halign|l>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<cell|<code*|guest
  account>>|<cell|username>|<\cell>
    compte Unix utilisé par smbd lorsque l'accès
    \S<space|0.2spc>invité<space|0.2spc>\T est activé au niveau d'un partage
  </cell>|<cell|nobody>|<cell|Global>>|<row|<cell|<code*|guest ok>>|<\cell>
    boolean
  </cell>|<\cell>
    active (ou pas) l'accès \S<space|0.2spc>invité<space|0.2spc>\T dans le
    partage
  </cell>|<\cell>
    no
  </cell>|<\cell>
    Share
  </cell>>|<row|<cell|<code*|guest only>>|<\cell>
    boolean
  </cell>|<\cell>
    si activé, smbd considère que tout utilisateur accédant au partage est
    authentifié sous le compte Unix définit par <code*|guest account>
  </cell>|<\cell>
    no
  </cell>|<\cell>
    Share
  </cell>>|<row|<cell|<code*|map to guest>>|<\cell>
    never,

    bad password,

    bad user,

    bad uid
  </cell>|<\cell>
    détermine si, malgrè un echec lors de l'authentification (et en fonction
    du type de l'échec) une autorisation est possible en tant
    qu'\S<space|0.2spc>invité<space|0.2spc>\T (il faut <code*|guest ok = yes>
    au niveau du partage bien sur)
  </cell>|<\cell>
    never
  </cell>|<\cell>
    Global
  </cell>>>>>|Accès anonyme à un partage>

  <big-table|<block*|<tformat|<cwith|1|1|1|2|cell-background|grey>|<cwith|1|5|2|2|cell-width|13cm>|<cwith|1|5|2|2|cell-hmode|exact>|<cwith|1|5|1|1|cell-width|3.5cm>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|2|5|2|2|cell-halign|l>|<cwith|2|5|2|2|cell-hyphen|c>|<table|<row|<cell|Valeur>|<cell|Portée>>|<row|<cell|<code*|never>>|<\cell>
    autorisation refusée si échec de l'authentification
  </cell>>|<row|<cell|<code*|bad password>>|<\cell>
    si le compte de l'utilisateur existe mais que le mot de passe donné lors
    de l'authentification ne correspond pas à celui attendu, l'accès est
    autorisé en tant qu'\S<space|0.2spc>invité<space|0.2spc>\T (et non pas
    donc sous l'identité du l'utilisateur).
  </cell>>|<row|<cell|<code*|bad uid>>|<\cell>
    Valide seulement pour les serveurs membres (<code*|security = ads> ou
    <code*|security = domain>). L'accès est autorisé si l'authentification
    sur le domaine a réussi mais qu'il n'existe pas de compte local
    correspondant sur le serveur.
  </cell>>|<row|<cell|<code*|bad user>>|<\cell>
    autorise l'accès en tant qu'\S<space|0.2spc>invité<space|0.2spc>\T si le
    compte est inconnu de Samba
  </cell>>>>>|Paramètre <code*|map to guest>>

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ netbios name = OAK

      \ \ \ \ workgroup = GARDEN

      \ \ \ \ server string = Public access file server

      \ \ \ \ security = user

      \ \ \ \ map to guest = bad user

      \ \ \ \ guest account = smbguest

      [public]

      \ \ \ \ path = /export/public

      \ \ \ \ guest ok = yes

      \ \ \ \ read only = no
    </code>
  </example>

  Avant d'utiliser <code*|map to guest>, il faut comprendre qu'en mode
  <code*|user>, il n'existe qu'<em|une seule session d'authentification>. Une
  fois l'utilisateur authentifié en tant qu'invité, il conserve cette
  identité pour tous les partages qu'il visite sur le serveur (que ceux-ci
  autorisent ou pas l'accès public).

  Si l'on souhaite vraiment héberger des partages publics et d'autres à accès
  restreint, une des méthodes est la virualisation : une des identités du
  serveur est destinée aux partages publics, une autre peut être utilisée
  pour les partages à accès restreint (<code*|map to guest> peut prendre
  différentes valeurs dans chaque serveur virtuel).

  <\description>
    <item*|never>

    <\enumerate>
      <item>un utilisateur n'appartenant pas au domaine ne voit pas le
      serveur ;

      <item>un utilisateur du domaine, ayant donné un mauvais mot de passe,
      ne voit pas le serveur ;

      <item>un utilisateur du domaine correctement authentifié voit le
      serveur et peut accéder aux partages.
    </enumerate>

    <item*|bad user>

    <\enumerate>
      <item>un utilisateur n'appartenant pas au domaine voit le serveur, un
      mot de passe est demandé lors de l'accès à un partage ;

      <item>un utilisateur du domaine, ayant donné un mauvais mot de passe,
      ne voit pas le serveur ;

      <item>un utilisateur du domaine correctement authentifié voit le
      serveur et peut accéder aux partages.
    </enumerate>

    <item*|bad password>

    <\enumerate>
      <item>un utilisateur n'appartenant pas au domaine voit le serveur, un
      mot de passe est demandé lors de l'accès à un partage ;

      <item>un utilisateur du domaine, ayant donné un mauvais mot de passe,
      un mot de passe est demandé lors de l'accès à un partage ;

      <item>un utilisateur du domaine correctement authentifié voit le
      serveur et peut accéder aux partages.
    </enumerate>
  </description>

  <subsection|Mots de passe et authentification>

  <subsection|Identifiant de sécurité>

  Tout objet (utilisateur, groupe, machine) est identifié de façon unique à
  l'aide d'une chaîne de caractère (SID), comme :

  <\equation*>
    S-1-5-21-3489264249-1556752242-1837584028-1003
  </equation*>

  À partir d'un SID, il est impossible de déterminer de quel type d'objet il
  s'agit.

  Le dernier nombre 1003 constitue (ce n'est pas tout à fait vrai) le RID.
  Lorsqu'on retire le RID au SID, on obtient l'identifiant de sécurité du
  domaine, accessible en ligne de commande :

  <\example>
    \;

    <\code>
      root# net getlocalsid

      SID for domain RAIN is : <math|S-1-5-21-3489264249-1556752242-1837584028>
    </code>
  </example>

  <subsection|Stockage des comptes>

  <\description>
    <item*|<code*|passdb backend = smbpasswd>>

    Les comptes sont conservés dans un fichier texte au format
    <code*|username:uid:lanman_hash:nt_hash:flags:pw_lct>

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ security = user

        \ \ \ \ encrypt passwords = yes

        \ \ \ \ passdb backend = smbpasswd:/etc/smbpasswd
      </code>
    </example>

    <item*|<code*|passdb backend = tdbsam>>

    Les comptes sont conservés dans une base de donnée élémentaire. C'est la
    solution conseillée lorsqu'on construit un PDC sans BDC (puisqu'il n'y a
    pas de réplication possible).

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ security = user

        \ \ \ \ encrypt passwords = yes

        \ \ \ \ passdb backend = tdbsam:/etc/passdb.tdb
      </code>
    </example>

    <item*|<code*|passdb backend = ldapsam>>

    <big-table|<block*|<tformat|<cwith|1|10|1|1|cell-width|3.5cm>|<cwith|1|10|1|1|cell-hmode|exact>|<cwith|1|10|2|2|cell-width|2cm>|<cwith|1|10|2|2|cell-hmode|exact>|<cwith|1|10|3|3|cell-width|8cm>|<cwith|1|10|3|3|cell-hmode|exact>|<cwith|1|10|4|5|cell-width|1.5cm>|<cwith|1|10|4|5|cell-hmode|exact>|<cwith|1|1|1|5|cell-background|grey>|<cwith|3|3|2|2|cell-hyphen|c>|<cwith|4|4|2|2|cell-hyphen|c>|<cwith|10|10|2|2|cell-hyphen|c>|<cwith|2|10|3|3|cell-hyphen|c>|<cwith|2|10|3|3|cell-halign|l>|<cwith|2|10|1|1|cell-hyphen|c>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<\cell>
      <code*|ldap admin dn>
    </cell>|<cell|DN>|<\cell>
      le DN de l'entrée de l'annuaire ayant les droits de lecture et de
      modification
    </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
      <code*|ldap replication sleep>
    </cell>|<\cell>
      integer (en millisecondes)
    </cell>|<\cell>
      délai pour la réplication de l'annuaire
    </cell>|<cell|1000>|<cell|Global>>|<row|<\cell>
      <code*|ldap ssl>
    </cell>|<\cell>
      off

      start_tls
    </cell>|<\cell>
      couche de transport (ssl ou pas) à utiliser lorsqu'on indique pas ldaps
      dans l'URI de <code*|ldapsam>
    </cell>|<cell|off>|<cell|Global>>|<row|<\cell>
      <code*|ldap suffix>
    </cell>|<cell|DN>|<\cell>
      suffixe base de toute recherche dans l'annuaire
    </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
      <code*|ldap group suffix>
    </cell>|<cell|DN>|<\cell>
      sufixe base de la recherche dans la branche de l'annuaire des groupes
    </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
      <code*|ldap idmap suffix>
    </cell>|<cell|DN>|<\cell>
      suffixe base de la recherche dans la branche de l'annuaire réservée à
      <code*|winbindd>
    </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
      <code*|ldap machine suffix>
    </cell>|<cell|DN>|<\cell>
      suffixe base de la recherche dans la branche de l'annuaire des machines
    </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
      <code*|ldap user suffix>
    </cell>|<cell|DN>|<\cell>
      suffixe base de la recherche dans la branche de l'annuaire des
      utilisateurs
    </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
      <code*|ldap timeout>
    </cell>|<\cell>
      integer (en secondes)
    </cell>|<\cell>
      durée maximale d'attente d'une réponse de l'annuaire
    </cell>|<cell|15>|<cell|Global>>>>>|Paramètres relatifs à LDAP>

    <\example>
      \;

      <\code>
        [Global]

        \ \ \ \ security = user

        \ \ \ \ encrypt passwords = yes

        \ \ \ \ passdb backend = ldapsam:''ldap://ldap1/ ldap://ldap2/''

        \ \ \ \ ldap_ssl = start_tls

        \ \ \ \ ldap admin dn = cn=smbadmin,ou=people,dc=example,dc=com

        \ \ \ \ ldap suffix = dc=example,dc=com

        \ \ \ \ ldap user suffix = ou=people

        \ \ \ \ ldap group suffix = ou=group

        \ \ \ \ ldap machine suffix = ou=people # on ne sépare pas les
        machines des utilisateurs ici

        \ \ \ \ ldap idmap suffix = ou=idmap
      </code>
    </example>
  </description>

  Le mot de passe du DN de l'annuaire doit être conservé en clair dans
  <code*|secrets.tdb> :

  <\example>
    \;

    <\code>
      root# smbpasswd -W

      Setting stored password for ``cn=smbadmin,ou=people,dc=example,dc=com''
      in secrets.tdb

      ...
    </code>
  </example>

  <subsection|Mappage d'utilisateurs>

  <big-table|<block*|<tformat|<cwith|1|3|1|1|cell-width|3.5cm>|<cwith|1|3|1|1|cell-hmode|exact>|<cwith|1|3|2|2|cell-width|2cm>|<cwith|1|3|2|2|cell-hmode|exact>|<cwith|1|3|3|3|cell-width|8cm>|<cwith|1|3|3|3|cell-hmode|exact>|<cwith|1|3|4|5|cell-width|1.5cm>|<cwith|1|3|4|5|cell-hmode|exact>|<cwith|1|1|1|5|cell-background|grey>|<cwith|2|3|3|3|cell-hyphen|c>|<cwith|3|3|1|1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<cell|<code*|username
  map>>|<cell|string>|<\cell>
    chemin absolu du fichier contenant les équivalences
  </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
    <code*|username map script>
  </cell>|<cell|string>|<\cell>
    chemin absolu du script ou de l'outil qui accepte le nom d'utilisateur en
    paramètre et retourne le nom mappé
  </cell>|<cell|''''>|<cell|Global>>>>>|Mappage d'utilisateurs>

  Le fichier, souvent nommé <code*|smbusers>, a comme format :
  <code*|map_to_Unix_name = ''map_from''> (les guillemets sont nécessaires en
  présence d'une espace dans le login.

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ username map = /etc/samba/smbusers

      \ \ \ \ ....
    </code>
  </example>

  <subsection|Utilitaires de gestion des utilisateurs : <code*|smbpasswd> et
  <code*|pdbedit>>

  Ces outils fonctionnent de la même façon quel que soit le backend utilisé
  pour stocker les comptes et mots de passe. Il n'est, par exemple, pas
  nécessaire de remplir l'annuaire à la main (Samba doit donc être démarré
  lorsqu'on les utilise).

  <vspace*|1fn><code*|smbpasswd> peut fonctionner selon deux modes :

  <\itemize>
    <item>utilisé par l'utilisateur <code*|root>, il permet de modifier les
    comptes des utilisateurs sur le serveur ;

    <\code>
      smbpasswd [options] username
    </code>

    <item>utilisé par un utilisateur, il permet de modifier le mot de passe
    crypté à distance.

    <\code>
      smbpasswd [options]
    </code>
  </itemize>

  <\description>
    <item*|utilisateur <code*|root>>

    <\description>
      <item*|-a username>ajoute le compte <em|username> s'il existe déjà un
      compte Unix correspondant. Si <em|username> existe déjà, seul le mot de
      passe est modifié.

      <item*|-d username>invalide <em|username>. Le compte existe toujours
      mais l'utilisateur ne peut plus s'authentifier.

      <item*|-e username>autorise ou refuse l'authentification à
      <em|username>. Cette option annulé <code*|-d username>.

      <item*|-m>indique que le compte est un compte machine (déprécié).

      <item*|-n>positionne le mot de passe de l'utilisateur à <code*|null>.
      Pour qu'il puisse s'authentifier, il faut que la directive <code*|null
      passwords = yes> apparaisse dans la section <code*|[global]> de
      <code*|smb.conf>.

      <item*|-R>permet d'effectuer une résolution de nom différente de celle
      choisie dans <code*|smb.conf>. Les paramètres sont identiques.

      <item*|-W>enregistre le mot de passe du <code*|ldap admin dn> de
      l'annuaire.

      <item*|-w>identique à <code*|-W> si ce n'est que le mot de passe
      n'apparaît pas sur la ligne de commande.

      <item*|-x username>détruit le compte (login, mot de passe,
      informations, ...) <em|username>.
    </description>

    <item*|tout utilisateur>

    <\description>
      <item*|-c filename>indique un fichier de configuration autre que
      smb.conf.

      <item*|-D debug_level>niveau de debug.

      <item*|-r NETBIOS_name>indique sur quelle machine (généralement le PDC)
      le compte doit-être modifié.

      <item*|-s>le mot de passe n'est pas demandé, mais attendu comme
      paramètre. Utile dans les scripts.

      <\code>
        root# (echo ``cat''; echo''cat'') \| smbpasswd -s -a smitty
      </code>

      crée le compte <em|smitty> avec le mot de passe <em|cat> répété deux
      fois pour répondre aux deux questions posées par smbpasswd (valeur puis
      confirmation).

      <item*|-U username>change le mot de passe de <em|username> sur une
      machine distante. Ce paramètre permet au compte <em|username> d'être
      différent sur les machines locales et distantes. Nécessite donc le
      paramètre <code*|-r NETBIOS_name>.
    </description>
  </description>

  <vspace*|1fn><code*|pdbedit> possède une syntaxe plus complexe que celle de
  <code*|smbpasswd>. Il fournit néanmoins plus de fonctionnalité. En
  particulier il permet :

  <\itemize>
    <item>de configurer les propriétés des comptes telles que la durée
    maximale d'existence d'un mot de passe, le nombre de mots de passe faux
    tolérés avant de bloquer le compte, ....

    <item>de configurer les attributs de l'utilisateur comme les scripts de
    login, le SUD, la localisation des profils itinérants, ...

    <item>de convertir le fichier de comptes d'un backend vers un autre :

    <\code>
      root# pdbedit -ismbpasswd:/tmp/smbpasswd -etdbsam:/tmp/passdb.tdb
    </code>
  </itemize>

  <subsection|Synchronisation des mots de passe>

  De façon à modifier les mots de passe Unix des utilisateurs, <code*|smbd>
  peut :

  <\itemize>
    <item>communiquer avec un programme externe ;

    <item>utiliser PAM ;

    <item>demander à l'annuaire LDAP de faire la modification.
  </itemize>

  <big-table|<block*|<tformat|<cwith|1|9|1|1|cell-width|3.5cm>|<cwith|1|9|1|1|cell-hmode|exact>|<cwith|1|9|2|2|cell-width|2cm>|<cwith|1|9|2|2|cell-hmode|exact>|<cwith|1|9|4|5|cell-width|1.5cm>|<cwith|1|9|4|5|cell-hmode|exact>|<cwith|1|9|3|3|cell-width|8cm>|<cwith|1|9|3|3|cell-hmode|exact>|<cwith|1|1|1|5|cell-background|grey>|<cwith|2|9|1|1|cell-hyphen|c>|<cwith|2|9|3|3|cell-hyphen|c>|<cwith|2|9|3|3|cell-halign|l>|<cwith|6|6|4|4|cell-hyphen|c>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<\cell>
    <code*|check password script>
  </cell>|<cell|string>|<\cell>
    script externe vérifiant la validité du mot de passe
  </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
    <code*|ldap password sync>
  </cell>|<cell|boolean>|<\cell>
    <code*|smbd> envoye l'instruction à l'annuaire de modifier l'attribut mot
    de passe posix (seulement pour OpenLDAP)
  </cell>|<cell|no>|<cell|Global>>|<row|<\cell>
    <code*|pam password change>
  </cell>|<cell|boolean>|<\cell>
    <code*|smbd> utilise PAM pour changer le mot de passe
  </cell>|<cell|no>|<cell|Global>>|<row|<\cell>
    <code*|passwd program>
  </cell>|<cell|string>|<\cell>
    programme externe servant à changer le mot de passe
  </cell>|<cell|''''>|<cell|Global>>|<row|<\cell>
    <code*|passwd chat>
  </cell>|<cell|string>|<\cell>
    chaîne de caractères que <code*|smbd> utilise pour interagir avec le
    programme qui modifie le mot de passe
  </cell>|<\cell>
    voir exemple
  </cell>|<cell|Global>>|<row|<\cell>
    <code*|passwd chat debug>
  </cell>|<cell|boolean>|<\cell>
    verbosité dans les fichiers de log du processus de synchronisation
  </cell>|<cell|no>|<cell|Global>>|<row|<\cell>
    <code*|passwd chat timeout>
  </cell>|<cell|integer>|<\cell>
    durée maximale (en secondes) pour le processus de synchronisation
  </cell>|<cell|2>|<cell|Global>>|<row|<\cell>
    <code*|unix password sync>
  </cell>|<cell|boolean>|<\cell>
    définit si Samba doit tenter de synchroniser le mot de passe Unix
  </cell>|<cell|no>|<cell|Global>>>>>|Synchronisation des mots de passe>

  Utilisation :

  <\description>
    <item*|d'un programme externe>

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ encrypt passwords = yes

        \ \ \ \ unix password sync = yes

        \ \ \ \ passwd program = /usr/bin/passwd %u

        \ \ \ \ passwd chat = *New*password*
        %n<math|\<backslash\>>n<math|\<backslash\>>

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ *Reenter*new*password*
        %n<math|\<backslash\>>n<math|\<backslash\>>

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ *Passwd*changed*
      </code>
    </example>

    car l'utilisation de la commande <code*|passwd> génère la sortie :

    <\code>
      root# passwd lizard

      Changing password for lizard.

      New password:

      Reenter New Password:

      Passwd changed.
    </code>

    <item*|de PAM>

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ encrypt passwords = yes

        \ \ \ \ unix password sync = yes

        \ \ \ \ pam password change = yes

        \ \ \ \ passwd chat = *New*password*
        %n<math|\<backslash\>>n<math|\<backslash\>>

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ *Reenter*new*password*
        %n<math|\<backslash\>>n<math|\<backslash\>>

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ *Passwd*changed*
      </code>
    </example>
  </description>

  <subsection|Mappage de groupes>

  <\description>
    <item*|Création d'un groupe>

    <\code>
      root# net groupmap add ntgroup=''System Managers'' unixgroup=sysadmin
    </code>

    <item*|Modification d'un groupe>

    <\code>
      root# net groupmap modify ntgroup=''System Managers'' unixgroup=sysops
      comment=''Server administrators group''
    </code>

    <item*|Destruction d'un groupe>

    <\code>
      root# net groupmap delete ntgroup=''System Managers''
    </code>

    <item*|Énumération des groupes>

    <\code>
      root# net groupmap list
    </code>

    <item*|Information sur un groupe>

    <\code>
      root# net groupmap list verbose ntgroup=''Printers Admins''
    </code>
  </description>

  <subsection|La commande <code*|net>>

  <subsubsection|<code*|net rpc>>

  <paragraph|Utilisateurs et groupes>

  <big-table|<block*|<tformat|<cwith|7|7|2|3|cell-row-span|1>|<cwith|2|2|2|3|cell-row-span|1>|<cwith|2|6|1|1|cell-row-span|5>|<cwith|2|6|1|4|cell-col-span|1>|<cwith|7|13|1|1|cell-row-span|7>|<cwith|7|13|1|4|cell-col-span|1>|<cwith|1|1|1|4|cell-background|grey>|<cwith|2|2|4|4|cell-halign|l>|<cwith|3|3|4|4|cell-halign|l>|<cwith|4|4|4|4|cell-halign|l>|<cwith|5|5|4|4|cell-halign|l>|<cwith|6|6|4|4|cell-halign|l>|<cwith|7|7|4|4|cell-halign|l>|<cwith|8|8|4|4|cell-halign|l>|<cwith|9|9|4|4|cell-halign|l>|<cwith|10|10|4|4|cell-halign|l>|<cwith|11|11|4|4|cell-halign|l>|<cwith|12|12|4|4|cell-halign|l>|<cwith|13|13|4|4|cell-halign|l>|<table|<row|<cell|Option
  principale>|<cell|Option secondaire>|<cell|Paramètre>|<cell|Description>>|<row|<cell|user>|<cell|>|<cell|>|<cell|énumère
  les comptes utilisateurs>>|<row|<cell|>|<cell|<code*|add>>|<cell|<em|username[password]>>|<cell|crée
  un compte utilisateur (mot de passe possible)>>|<row|<cell|>|<cell|<code*|delete>>|<cell|<em|username>>|<cell|supprime
  un compte utilisateur>>|<row|<cell|>|<cell|<code*|info>>|<cell|<em|username>>|<cell|énumère
  les groupes auxquels appartient l'utilisateur>>|<row|<cell|>|<cell|<code*|rename>>|<cell|<em|oldname
  newname>>|<cell|renomme un compte>>|<row|<cell|group>|<cell|>|<cell|>|<cell|énumère
  les groupes>>|<row|<cell|>|<cell|<code*|list>>|<cell|[global\|local\|builtin]>|<cell|énumère
  les groupes spécifiques>>|<row|<cell|>|<cell|<code*|add>>|<cell|<em|name>>|<cell|crée
  un nouveau groupe>>|<row|<cell|>|<cell|<code*|delete>>|<cell|<em|name>>|<cell|supprime
  un groupe>>|<row|<cell|>|<cell|<code*|members>>|<cell|<em|name>>|<cell|énumère
  les membres d'un groupe>>|<row|<cell|>|<cell|<code*|addmem>>|<cell|<em|group
  user>>|<cell|ajoute l'utilisateur <em|user> au groupe
  <em|group>>>|<row|<cell|>|<cell|<code*|delmem>>|<cell|<em|group
  user>>|<cell|supprime l'utilisateur <em|user> du groupe <em|group>>>>>>|net
  rpc -- utilisateurs et groupes>

  On peut aussi préciser :

  <\description>
    <item*|-U user>le nom d'utilisateur sous lequel on lance la
    recherche/commande ;

    <item*|-S server>le nom NETBIOS du serveur cible ;

    <item*|-w workgroup>le nom du groupe de travail cible ;

    <item*|-I address>l'adresse IP du serveur cible.
  </description>

  <\example>
    \;

    <\code>
      net rpc user -S windc -U lizard # comptes utilisateurs sur windc
    </code>

    <\code>
      net rpc user info lizard -S windc -U lizard # groupes auxquels
      appartient lizard
    </code>

    <\code>
      net rpc user add jsmith -S windc -U Administrator # création du compte
      jsmith
    </code>

    <\code>
      net rpc user rename jsmith smitty -S windc -U Administrator # renomme
      le compte jsmith smitty
    </code>

    <\code>
      net rpc password smitty LeAv3: -S windc -U Administrator # attribue le
      mot de passe LeAv3: au compte smitty
    </code>

    <\code>
      net rpc group addmem ``Domain Admins'' smitty -S windc -U Administrator
      # ajoute smitty au groupe spécifié
    </code>

    <\code>
      net rpc group members ``Domain Admins'' -S windc -U Administrator #
      énumère les membres du groupe spécifié
    </code>
  </example>

  <paragraph|Partages>

  <big-table|<block*|<tformat|<cwith|2|6|3|3|cell-halign|l>|<cwith|1|1|1|3|cell-background|grey>|<table|<row|<cell|Paramètre>|<cell|Options>|<cell|Description>>|<row|<cell|None>|<cell|>|<cell|énumère
  les partages sur le serveur>>|<row|<cell|add>|<cell|<em|sharename=path>>|<cell|crée
  un nouveau partage sur le serveur à partir du chemin
  spécifié>>|<row|<cell|allowusers>|<cell|<em|sharename>>|<cell|liste des SID
  autorisés à explorer le partage>>|<row|<cell|delete>|<cell|<em|sharename>>|<cell|supprime
  le partage sur le serveur>>|<row|<cell|migrate>|<cell|<em|\<less\>all\|files\|security\|shares\<gtr\>[share]>>|<cell|migre
  les paramétrages du partage du serveur distant au serveur local>>>>>|net
  rpc share>

  <\example>
    \;

    <\code>
      net rpc share -S windc -U Administrator # liste les partages du serveur
      windc
    </code>

    <\code>
      net rpc share add ``UserHome=C:<math|\<backslash\>\<backslash\>>users''
      -S windc -U Administrator # crée le partage UserHome
    </code>
  </example>

  <paragraph|Services>

  <big-table|<block*|<tformat|<cwith|2|7|3|3|cell-halign|l>|<cwith|1|1|1|3|cell-background|grey>|<table|<row|<cell|Paramètre>|<cell|Options>|<cell|Description>>|<row|<cell|list>|<cell|>|<cell|énumère
  les services installés sur le serveur>>|<row|<cell|pause>|<cell|<em|servicename>>|<cell|met
  le service en pause (pas supporté par tous les
  services)>>|<row|<cell|start>|<cell|<em|servicename>>|<cell|démarre le
  service>>|<row|<cell|status>|<cell|<em|servicename>>|<cell|indique l'état
  du service>>|<row|<cell|stop>|<cell|<em|servicename>>|<cell|stoppe le
  service>>|<row|<cell|resume>|<cell|<em|servicename>>|<cell|redémarre le
  service>>>>>|net rpc service>

  <\example>
    \;

    <\code>
      net rpc service list -S windc -U Administrator # liste les services sur
      windc
    </code>

    <\code>
      net rpc service status w32time -S windc -U Administrator # état du
      service w32time
    </code>

    <\code>
      net rpc service stop w32time -S windc -U Administrator # stoppe le
      service w32time
    </code>

    <\code>
      net rpc service start w32time -S windc -U Administrator # démarre le
      service w32time
    </code>

    <\code>
      net rpc shutdown -r -t 120 <math|\<backslash\>>

      \ \ \ \ -C ``Maintenance redémarrage nécessaire. Déconnectez-vous !''
      <math|\<backslash\>>

      \ \ \ \ -S dorn -U Administrator \ \ \ \ \ \ # reboot dans 120 s
    </code>
  </example>

  <subsubsection|<code*|net ads>>

  <subsection|Attribution de droits spécifiques>

  <big-table|<block*|<tformat|<cwith|2|2|3|3|cell-width|8cm>|<cwith|2|2|3|3|cell-hmode|exact>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|2|2|3|3|cell-halign|l>|<cwith|1|2|4|5|cell-width|1.5cm>|<cwith|1|2|4|5|cell-hmode|exact>|<cwith|1|2|1|1|cell-width|3.5cm>|<cwith|1|2|1|1|cell-hmode|exact>|<cwith|1|2|2|2|cell-width|2cm>|<cwith|1|2|2|2|cell-hmode|exact>|<cwith|1|1|1|5|cell-background|grey>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<cell|<code*|enable
  privileges>>|<cell|boolean>|<\cell>
    autorise ou pas l'octroie de privilèges aux utilisateurs
  </cell>|<cell|no>|<cell|Global>>>>>|Attribution de droits spécifiques>

  <big-table|<block*|<tformat|<cwith|1|9|1|1|cell-width|5.5cm>|<cwith|1|9|1|1|cell-hmode|exact>|<cwith|1|9|2|2|cell-width|11cm>|<cwith|1|9|2|2|cell-hmode|exact>|<cwith|1|1|1|2|cell-background|grey>|<cwith|2|9|2|2|cell-hyphen|c>|<cwith|2|9|2|2|cell-halign|l>|<table|<row|<cell|Privilège>|<cell|Description>>|<row|<cell|<code*|SeAddUsersPrivilege>>|<\cell>
    peut ajouter, modifier et détruire des utilisateurs. Peut aussi modifier
    l'appartenance à un groupe
  </cell>>|<row|<cell|<code*|SeBackupPrivilege>>|<\cell>
    pas utilisé pour l'instant
  </cell>>|<row|<cell|<code*|SeDiskOperatorPrivilege>>|<\cell>
    peut créer, modifier ou détruire des fichiers dans un partage. Peut aussi
    modifier les ACL
  </cell>>|<row|<cell|<code*|SePrintOperatorPrivilege>>|<\cell>
    peut ajouter, modifier ou retirer des imprimantes
  </cell>>|<row|<cell|<code*|SeMachineAccountPrivilege>>|<\cell>
    peut ajouter ou retirer une machine du domaine
  </cell>>|<row|<cell|<code*|SeRemoteShutdownPrivilege>>|<\cell>
    peut éteindre ou redémarrer un serveur Samba
  </cell>>|<row|<cell|<code*|SeRestorePrivilege>>|<\cell>
    peut rendre un utilisateur lambda propriétaire d'un fichier ou d'un
    dossier
  </cell>>|<row|<cell|<code*|SeTakeOwnershipPrivilege>>|<\cell>
    peut devenir le propriétaire d'un fichier ou d'un dossier
  </cell>>>>>|Droits spécifiques>

  <\example>
    \;

    <\code>
      net rpc rights list -S localhost -U Administrator -W AD # privilèges
      définis sur la machine
    </code>

    <\code>
      net rpc rights grant 'RAIN<math|\<backslash\>>lizard'
      SeDiskOperatorPrivilege <math|\<backslash\>>

      \ \ \ \ \ \ \ \ -S localhost -U root -W RAIN
    </code>

    <\code>
      net rpc rights list accounts -S localhost -U% # énumère tous les
      comptes contenus dans la base de donnée
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ maintenue
      par Samba et les droits associés
    </code>
  </example>

  <subsection|Autorisations sur les partages>

  <big-table|<block*|<tformat|<cwith|1|7|1|1|cell-width|3.5cm>|<cwith|1|7|1|1|cell-hmode|exact>|<cwith|1|7|2|2|cell-width|2cm>|<cwith|1|7|2|2|cell-hmode|exact>|<cwith|1|7|3|3|cell-width|8cm>|<cwith|1|7|3|3|cell-hmode|exact>|<cwith|1|7|4|5|cell-width|1.5cm>|<cwith|1|7|4|5|cell-hmode|exact>|<cwith|1|1|1|5|cell-background|grey>|<cwith|2|7|3|3|cell-hyphen|c>|<cwith|2|7|1|1|cell-hyphen|c>|<cwith|2|7|3|3|cell-halign|l>|<cwith|2|7|2|2|cell-hyphen|c>|<table|<row|<cell|Paramètre>|<cell|Valeur>|<cell|Description>|<cell|Défaut>|<cell|Portée>>|<row|<\cell>
    <code*|admin users>
  </cell>|<\cell>
    <em|user/group list>
  </cell>|<\cell>
    liste d'utilisateurs ou de groupes à qui l'on attribue tous les droits
    sur le partage
  </cell>|<cell|''''>|<cell|Share>>|<row|<\cell>
    <code*|invalid users>
  </cell>|<\cell>
    <em|user/group list>
  </cell>|<\cell>
    liste d'utilisateurs ou de groupes à qui l'on refuse l'accès au partage
  </cell>|<cell|''''>|<cell|Share>>|<row|<\cell>
    <code*|max connections>
  </cell>|<\cell>
    Integer
  </cell>|<\cell>
    nombre maximal de connexions simultanées au partage (0 signifie que
    l'accès n'est pas restreint)
  </cell>|<cell|0>|<cell|Share>>|<row|<\cell>
    <code*|read list>
  </cell>|<\cell>
    <em|user/group list>
  </cell>|<\cell>
    liste des utilisateurs ou groupes qui n'ont qu'un accès en lecture dans
    le partage
  </cell>|<cell|''''>|<cell|Share>>|<row|<\cell>
    <code*|valid users>
  </cell>|<\cell>
    <em|user/group list>
  </cell>|<\cell>
    liste des utilisateurs ou groupes qui ont accès au partage
  </cell>|<cell|''''>|<cell|Share>>|<row|<\cell>
    <code*|write list>
  </cell>|<\cell>
    <em|user/group list>
  </cell>|<\cell>
    liste des utilisateurs ou groupes qui ont un accès en écriture dans le
    partage
  </cell>|<cell|''''>|<cell|Share>>>>>|Autorisations sur les partages>

  <\example>
    \;

    <\code>
      [document]

      \ \ \ \ path = /data/docs

      \ \ \ \ read only = no

      \ \ \ \ admin users = rose, lily, +staff
    </code>

    <\remark*>
      tout fichier ou dossier créé dans le partage sera la propriété de root
      et pas de l'utilisateur de <code*|admin users>
    </remark*>

    <\code>
      [administration]

      \ \ \ \ path = /data/administration

      \ \ \ \ read only = yes

      \ \ \ \ write list = +pcadmins
    </code>

    toute personne n'appartenant pas au groupe <code*|pcadmins> n'a qu'un
    accès en lecture au partage.

    <\code>
      [administration]

      \ \ \ \ path = /data/administration

      \ \ \ \ read only = no

      \ \ \ \ read list = +guest
    </code>

    les utilisateurs du groupe <code*|guest> n'ont pas le droit de modifier
    le partage.
  </example>

  <section|Options avancées>

  <subsection|Noms des fichiers/dossiers>

  Sous Windows, le système de fichier <em|préserve> et est <em|insensible> à
  la casse. Sous Unix, ils la <em|préservent> et y sont <em|sensibles>.

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|1|7|1|1|cell-width|3.5cm>|<cwith|1|7|1|1|cell-hmode|exact>|<cwith|1|7|2|2|cell-width|2cm>|<cwith|1|7|2|2|cell-hmode|exact>|<cwith|1|7|3|3|cell-width|8cm>|<cwith|1|7|3|3|cell-hmode|exact>|<cwith|1|7|4|5|cell-width|1.5cm>|<cwith|1|7|4|5|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|max stat cache size>
      </cell>|<\cell>
        integer
      </cell>|<\cell>
        limite la quantité max (en ko) de mémoire allouée au
        \S<space|0.2spc>stat cache<space|0.2spc>\T de chaque démon smbd
      </cell>|<\cell>
        0
      </cell>|<\cell>
        Global\ 
      </cell>>|<row|<\cell>
        <code*|stat cache>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        si oui, Samba conserve en cache les noms des fichiers déjà recherchés
        avec différentes casses
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|case sensitive>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        Samba doit-il considérer que le client envoie le nom du fichier avec
        la bonne casse ?
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|default case>
      </cell>|<\cell>
        upper or lower
      </cell>|<\cell>
        quelle casse utiliser si le paramètre précédent est positionén à
        \S<space|0.2spc>yes<space|0.2spc>\T
      </cell>|<\cell>
        lower
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|preserve case>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        Samba doit-il écrire les noms de fichiers longs tels que les ont
        écrit les utilisateurs (voir <code*|case sensitive>) ?
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|short preserve case>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        Samba doit-il conserver le format original 8.3 des noms courts ?
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Share
      </cell>>>>>
    </with>
  </big-table|Noms de Fichiers/dossiers>

  <\example>
    \;

    <\enumerate>
      <item>Utilisateur enregiste Foo.txt ;

      <item>Utilisateur recherche foo.txt.
    </enumerate>

    Samba recherche foot.txt puis toutes les combinaisons possibles jusqu'à
    trouver Foo.txt. Ce nom est ensuite gardé en mémoire pour répondre plus
    vite lors d'une demande ultérieure.

    <\code>
      [drawings]

      \ \ \ \ path = /data/drawings

      \ \ \ \ read only = no

      \ \ \ \ case sensitive = yes

      \ \ \ \ default case = lower

      \ \ \ \ preserve case = no

      \ \ \ \ short preserve case = no
    </code>

    On demande à Samba de ne plus préserver \ la casse et de systématiquement
    enregistrer les noms des fichiers en minuscule. On peut donc surement
    diminuer <code*|max stat cache size> et on gagne du temps sur des
    serveurs très chargés.
  </example>

  <\remark*>
    Les systèmes de fichiers sous Unix sont généralement lents lorsqu'il
    s'agit de lire des dossiers comportant un très grand nombre de petits
    fichiers. Dans ce cas, adopter la technique employée ci-dessus.
  </remark*>

  <subsection|Liens symboliques>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|1|3|3|3|cell-width|8cm>|<cwith|1|3|3|3|cell-hmode|exact>|<cwith|1|3|4|5|cell-width|1.5cm>|<cwith|1|3|4|5|cell-hmode|exact>|<cwith|1|3|2|2|cell-width|2cm>|<cwith|1|3|2|2|cell-hmode|exact>|<cwith|1|3|1|1|cell-width|3.5cm>|<cwith|1|3|1|1|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|follow symlinks>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        Samba doit-il suivre les liens symboliques ?
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|wide links>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        Samba doit-il suivre les liens symboliques pointant à l'extérieur du
        partage ?
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Share
      </cell>>>>>
    </with>
  </big-table|Liens symboliques>

  Pour des raisons de performances, laisser le premier paramètre à
  \S<space|0.2spc>yes<space|0.2spc>\T.

  <subsection|Masquage de fichiers>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|1|8|3|3|cell-width|8cm>|<cwith|1|8|3|3|cell-hmode|exact>|<cwith|1|8|4|5|cell-width|1.5cm>|<cwith|1|8|4|5|cell-hmode|exact>|<cwith|1|8|2|2|cell-width|2cm>|<cwith|1|8|2|2|cell-hmode|exact>|<cwith|1|8|1|1|cell-width|3.5cm>|<cwith|1|8|1|1|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|delete veto files>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        Samba peut-il effacer les fichiers exclus de la navigation lorsqu'on
        efface le dossier qui les contient ?
      </cell>|<\cell>
        no
      </cell>|<\cell>
        \ Share
      </cell>>|<row|<\cell>
        <code*|hide dot files>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        quand activé, Samba positionne l'attribut
        \S<space|0.2spc>hidden<space|0.2spc>\T sur les fichiers ou les
        répertoires dont le nom commence par un point
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|hide files>
      </cell>|<\cell>
        filename pattern
      </cell>|<\cell>
        Samba place l'attribut \S<space|0.2spc>hidden<space|0.2spc>\T sur les
        fichiers ou répertoires correspondants à l'expression régulière (ou
        les expressions régulières)
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|hide special files>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        exclut de la navigation les fichiers spéciaux (socket, pipes, ...)
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|hide unreadable files>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        exclut de la navigation les fichiers/dossiers que l'utilisateur n'a
        pas le droit de lire
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|hide unwriteable files>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        exclut de la navigation les fichiers/dossiers que l'utilisateur n'a
        pas le droit de modifier
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Share
      </cell>>|<row|<\cell>
        <code*|veto files>
      </cell>|<\cell>
        filename pattern
      </cell>|<\cell>
        Samba exclut de la navigation les fichiers ou répertoires
        correspondants à l'expression régulière (ou les expressions
        régulières)
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Share
      </cell>>>>>
    </with>
  </big-table|Masquage de fichiers>

  Il existe une différence entre \S<space|0.2spc>cacher<space|0.2spc>\T de la
  navigation et \S<space|0.2spc>exclure<space|0.2spc>\T de la navigation :
  dans le premier cas l'accès au fichier reste possible si on connaît le
  chemin direct pour y parvenir, dans le second, il est impossible d'accéder
  au fichier.

  <\example>
    \;

    <\code>
      [homes]

      \ \ \ \ read only = no

      \ \ \ \ hide files = /*.ini/*.log/
    </code>
  </example>

  <subsection|Verrous>

  <subsection|Attributs DOS>

  <subsection|Permissions>

  <subsection|ACL>

  <subsection|MS-DFS>

  C'est l'équivalent Windows de l'automonteur présent sous Unix. À utiliser
  donc pour répartir la charge de travail du serveur de fichiers.

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|1|3|1|1|cell-width|3.5cm>|<cwith|1|3|1|1|cell-hmode|exact>|<cwith|1|3|2|2|cell-width|2cm>|<cwith|1|3|2|2|cell-hmode|exact>|<cwith|1|3|3|3|cell-width|8cm>|<cwith|1|3|3|3|cell-hmode|exact>|<cwith|1|3|4|5|cell-width|1.5cm>|<cwith|1|3|4|5|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|host msdfs>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        si activé permet à Samba de supporter MS-DFS
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|msdfs root>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        si activé, Samba informe les clients que le partage est la racine
        MS-DFS
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Share
      </cell>>>>>
    </with>
  </big-table|MS-DFS>

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ hosts msdfs = yes

      [common]

      \ \ \ \ path = /data/dfs

      \ \ \ \ read only = yes

      \ \ \ \ msdfs root = yes
    </code>
  </example>

  Les références vers les partages situés sur les autres serveurs de fichiers
  sont enregistrées sous forme de liens symboliques de la forme :
  <code*|msdfs:server<math|\<backslash\>>share>.

  <\code>
    ln -s 'msdfs:sleet<math|\<backslash\>>staff' staff
  </code>

  Le partage est en lecture seule puisqu'on considère qu'il ne contient que
  des liens symboliques (ce n'est donc pas obligatoire).

  <\remark*>
    \;

    <strong|msdfs proxy> définit un partage qui fait simplement référence à
    un autre partage. Par exemple si on a bougé le contenu de
    <code*|<math|\<backslash\>\<backslash\>>RAIN<math|\<backslash\>>templates>
    vers <code*|<math|\<backslash\>\<backslash\>>SNOW<math|\<backslash\>templates>>
    mais que certaines machines clientes persistent à interroger
    <code*|<math|\<backslash\>\<backslash\>>RAIN>, on peut utiliser :

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ netbios name = RAIN

        [templates]

        \ \ \ \ msdfs proxy = <math|\<backslash\>\<backslash\>>snow<math|\<backslash\>templates>
      </code>
    </example>
  </remark*>

  <subsection|VFS>

  <subsection|Scripts>

  <section|Résolution de noms et exploration du réseau>

  <subsection|Résolution de noms>

  <subsubsection|Systèmes d'exploitation windows modernes>

  Différentes méthodes utilisées par les systèmes d'exploitation windows
  modernes :

  <\itemize>
    <item>recherche du nom dans le cache des noms récemment résolus ;

    <item>interrogation d'un serveur DNS ;

    <item>utilisation d'un fichier hosts ;

    <item>interrogation d'un serveur WINS ;

    <item>utilisation d'un fichier LMHOSTS ;

    <item>envoi d'une demande sur l'adresse de broadcast.
  </itemize>

  <subsubsection|Interaction entre un client WINS et un serveur WINS>

  Lorsque le client rejoint le réseau, il enregistre son nom NETBIOS auprès
  du serveur WINS, qui stocke l'association nom NETBIOS/adresse IP dans sa
  base de données (<code*|wins.dat>). Cette entrée est notée
  \S<space|0.2spc>active<space|0.2spc>\T.

  Le client est censé, périodiquement, recontacter le serveur pour l'informer
  qu'il utilise toujours le nom. Cette période est appelée time to live
  (TTL). Lorsqu'il quitte le réseau, le client doit informer le serveur que
  le nom est à nouveau disponible. Dans le cas contraire, le serveur attend
  la fin du bail.

  La base <code*|wins.dat>, gérée par le démon <code*|nmbd> n'est donc qu'une
  photo de l'état du réseau à une certaine date, elle ne traduit pas
  forcément fidélement la réalité à une date ultérieure (machine non
  correctement arrêtée, ...).

  <\remark*>
    Samba est incapable de répliquer sa base WINS vers un autre serveur.
  </remark*>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|1|7|1|1|cell-width|3.5cm>|<cwith|1|7|1|1|cell-hmode|exact>|<cwith|1|7|2|2|cell-width|2cm>|<cwith|1|7|2|2|cell-hmode|exact>|<cwith|1|7|3|3|cell-width|8cm>|<cwith|1|7|3|3|cell-hmode|exact>|<cwith|1|7|4|4|cell-width|1.5cm>|<cwith|1|7|4|4|cell-hmode|exact>|<cwith|1|7|5|5|cell-width|1.5cm>|<cwith|1|7|5|5|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|wins support>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        détermine si <code*|nmbd> agit fait office de serveur WINS
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Global\ 
      </cell>>|<row|<\cell>
        <code*|wins server>
      </cell>|<\cell>
        string (IP adress ou DNS name)
      </cell>|<\cell>
        indique à Samba le ou les serveurs WINS à utiliser
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|wins proxy>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        indique à Samba d'agir comme un proxy à un serveur WINS situé sur un
        autre sous-réseau
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|wins hook>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        commande externe à exécuter lorsque wins.dat est modifiée
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|dns proxy>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        permet à nmbd d'interroger un serveur DNS si le nom à résoudre ne se
        trouve pas dans wins.dat
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|name resolve order>
      </cell>|<\cell>
        string
      </cell>|<\cell>
        dans quel ordre smbd effectue-t-il la résolution
      </cell>|<\cell>
        lmhosts wins host bcast
      </cell>|<\cell>
        Global
      </cell>>>>>
    </with>
  </big-table|Résolution de noms>

  <\itemize>
    <item><code*|wins support> et <code*|wins server> sont exclusifs ;

    <item>configuration serveur

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ name resolve order = wins lmhosts hosts bcast

        \ \ \ \ wins support = yes

        \ \ \ \ dns proxy = yes # par défaut

        \ \ \ \ wins hook = /usr/local/bin/dns_update # voir
        examples/scripts/wins_hook
      </code>
    </example>

    <item>configuration client

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ name resolve order = wins lmhosts hosts bcast

        \ \ \ \ wins server = 192.168.1.2 192.168.1.3

        \ \ \ \ wins proxy = yes # pas toujours utile
      </code>
    </example>
  </itemize>

  <subsection|Exploration du réseau>

  <\big-table>
    \;

    <\with|par-mode|justify>
      <block*|<tformat|<cwith|1|1|1|5|cell-background|grey>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|3|3|3|cell-halign|l>|<cwith|1|7|4|5|cell-width|1.5cm>|<cwith|1|7|4|5|cell-hmode|exact>|<cwith|1|7|3|3|cell-width|8cm>|<cwith|1|7|3|3|cell-hmode|exact>|<cwith|1|7|2|2|cell-width|2cm>|<cwith|1|7|2|2|cell-hmode|exact>|<cwith|1|7|1|1|cell-width|3.5cm>|<cwith|1|7|1|1|cell-hmode|exact>|<table|<row|<\cell>
        Paramètre
      </cell>|<\cell>
        Valeur
      </cell>|<\cell>
        Description
      </cell>|<\cell>
        Défaut
      </cell>|<\cell>
        Portée
      </cell>>|<row|<\cell>
        <code*|local master>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        si activé, permet à Samba de participer à l'élection du Local Master
        Browser
      </cell>|<\cell>
        yes
      </cell>|<\cell>
        Global\ 
      </cell>>|<row|<\cell>
        <code*|preferred master>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        si activé, force une réélection pour permettre à Samba de devenir le
        Local Master Browser
      </cell>|<\cell>
        yes (si à la fois master et domain browser sont activés)
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|domain master>
      </cell>|<\cell>
        boolean
      </cell>|<\cell>
        si activé, Samba devient le Domain Master Browser (<em|les stations
        win s'attendent à ce qu'il soit alors aussi PDC s'il y en a un>)
      </cell>|<\cell>
        no
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|os level>
      </cell>|<\cell>
        numeric (0-255)
      </cell>|<\cell>
        niveau pour participer à l'élection
      </cell>|<\cell>
        20
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|remote browse sync>
      </cell>|<\cell>
        string (liste d'adresses IP)
      </cell>|<\cell>
        dans un réseau avec sous-réseaux géré uniquement par des serveurs
        Samba et sans PDC, liste des Local Master Browser pour synchroniser
        les listes
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Global
      </cell>>|<row|<\cell>
        <code*|remote announce>
      </cell>|<\cell>
        string (liste d'adresses IP/nom des workgroup)
      </cell>|<\cell>
        sous-réseaux et workgroups auxquels il faut envoyer une demande
        broadcast pour synchroniser les listes dans une situation équivalente
        à celle directement dessus. La plupart des routeurs filtrant les
        broadcast !!!
      </cell>|<\cell>
        None
      </cell>|<\cell>
        Global
      </cell>>>>>
    </with>
  </big-table|Exploration>

  <\remark*>
    Le dhcp doit indiquer le serveur WINS et le serveur PDC (ou DMB) au
    minimum, afin que les LMB contactent le DMB.
  </remark*>

  <\description>
    <item*|LMB>

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ local master = yes # défaut

        \ \ \ \ preferred master = yes

        \ \ \ \ os level = 20 # défaut suffisant si pas d'autres Samba,
        choisir sinon un nombre \<gtr\> 20 et \<less\> 33 (DMB donc PDC)
      </code>
    </example>

    <item*|DMB donc PDC>

    <\example>
      \;

      <\code>
        [global]

        \ \ \ \ domain master = yes

        \ \ \ \ preferred master = yes

        \ \ \ \ local master = yes

        \ \ \ \ os level = 33
      </code>
    </example>

    Le DMB est donc LMB de son sous-réseau.
  </description>

  <subparagraph|Quelques règles à retenir pour améliorer l'exploration>

  <\itemize>
    <item>Placer un serveur Windows NT ou Samba faisant office de LMB dans
    chaque sous-réseau du groupe de travail/domaine ;

    <item>Utiliser un PDC faisant office de DMB ;

    <item>Utiliser un serveur WINS.
  </itemize>

  <section|Contrôleur de domaine>

  <subsection|Configuration du PDC>

  <\enumerate>
    <item>Choisir le mode de sécurité <code*|user> : <code*|security = user>
    ;

    <item>Forcer l'utilisation des mots de passe cryptés : <code*|encrypt
    passwords = yes> ;

    <item>Définir un partage <code*|[netlogon]> ;

    <item>Configurer la machine comme \S explorateur principal de domaine \T
    (DMB) : <code*|domain master = yes> ;

    <item>Configurer la machine comme serveur de \S logon \T : <code*|domain
    logon = yes>
  </enumerate>

  Activer le paramètre <code*|domain master> oblige <code*|nmbd> à
  s'enregistrer comme <code*|DOMAIN\<less\>0<math|\<times\>>1b\<gtr\>> auprès
  du serveur WINS. Ce nom est utilisé par les clients Windows pour localiser
  le PDC qui, lui, est enregistré comme <code*|DOMAIN\<less\>0<math|\<times\>>1c\<gtr\>>.
  C'est le rôle du paramètre <code*|domain logon> que d'obliger <code*|nmbd>
  à s'enregistrer comme tel.

  <\example>
    \;

    <\code>
      [global]

      \ \ \ \ netbios name = STORK

      \ \ \ \ workgroup = ORA

      \ \ \ \ security = user

      \ \ \ \ encrypt passwords = yes

      \;

      \ \ \ \ # enable PDC functionality

      \ \ \ \ domain master = yes

      \ \ \ \ domain logons = yes

      \;

      \ \ \ \ # local master browser

      \ \ \ \ os level = 33

      \ \ \ \ preferred master = yes

      \ \ \ \ local master = yes

      \;

      [netlogon]

      \ \ \ \ comment = Net Logon service

      \ \ \ \ path = /data/netlogon

      \ \ \ \ read only = yes

      \ \ \ \ write list = +ntadmin
    </code>
  </example>

  <\description>
    <item*|Exploration du réseau>

    <\code>
      nmblookup 'COROT#1b' 'COROT#1c'
    </code>
  </description>

  Il reste à :

  <\enumerate>
    <item>Créer un groupe \S Administrateurs de domaine \T : <code*|Domain
    Admins> ;

    <item>Associer des utilisateurs à ce groupe ;

    <item>Implémenter l'infrastructure de gestion des comptes machines.
  </enumerate>

  <paragraph|Domain Admins>

  Ce groupe doit toujours posséder un RID de 512. Tout membre de ce groupe
  est automatiquement administrateur des machines du domaine.

  <\example>
    \;

    Obtention du SID du domaine :

    <\code>
      # net getlocalsid COROT

      SID for domain COROT is : <math|S-1-5-21-3489264249-1556752242-1837584028>
    </code>

    Ajout du RID du groupe au SID du domaine, pour la création du SID du
    groupe :

    <\code>
      net groupmap add sid=<math|S-1-5-21-3489264249-1556752242-1837584028-512>
      <math|\<backslash\>>

      ntgroup=''Domain Admins'' unixgroup=ntadmin
    </code>
  </example>

  <paragraph|Gestion des privilèges>

  <\enumerate>
    <item>Mapper un groupe Unix à un groupe Windows ;

    <item>Attribuer le privilège souhaité au groupe Windows (utiliser un
    compte du groupe <code*|Domain Admins>, ici cindy) ;
  </enumerate>

  <\example>
    \;

    Création d'un groupe ayant le droit d'intégrer une machine dans le
    domaine

    <\code>
      # net groupmap add unixgroup=srvadmin ntgroup=''Server Admins''

      # net rpc rights grant 'COROT<math|\<backslash\>>Server Admins'
      SeMachineAccountPrivilege <math|\<backslash\>>

      \ \ -S stork -U cindy
    </code>
  </example>

  <section|Programme smbclient>

  <\description>
    <item*|Liste des partages publiés par une machine>

    <\code>
      smbclient -L WinClient -U username

      smbclient -L WinClient -U username%password

      smbclient -L WinClient -A /home/.../filename
    </code>

    La seconde commande est à éviter puisque le mot de passe apparaît en
    clair (et reste dans l'historique des commandes). Il est donc possible,
    comme dans la troisième commande, d'utiliser les paramètres de connexion
    dans un fichier au format :

    <\code>
      username = \<less\>value\<gtr\>

      password = \<less\>value\<gtr\>

      domain = \<less\>value\<gtr\>
    </code>

    <item*|Découverte du contenu d'un partage>

    <\code>
      smbclient //server/partage -U username

      smbclient //server/partage -A /home/.../filename
    </code>

    <item*|Envoie d'un message à \ l'utilisateur d'une machine>

    <\code>
      cat myMessage.txt \| smbclient -M nomMachine
    </code>

    ici le message est contenu dans le fichier <code*|myMessage.txt>. Les
    options <code*|-U> et <code*|-I> permettent de contrôler les parties
    <code*|FROM> et <code*|TO> du message.

    <item*|Backup>

    <\code>
      smbclient //myPC/myShare `` `` -N -Tx backup.tar
    </code>

    restore depuis l'archive <code*|backup.tar> dans <code*|myShare> sur
    <code*|myPC> (aucun mot de passe sur le partage).

    <\code>
      smbclient //myPC/myShare `` `` -N -TXx backup.tar users/docs
    </code>

    restore tout depuis l'archive <code*|backup.tar> dans <code*|myShare> sur
    <code*|myPC> excepté <code*|users/doc> (aucun mot de passe sur le
    partage).

    <\code>
      smbclient //myPC/myShare `` `` -N -Tc backup.tar users/docs
    </code>

    crée une archive <code*|backup.tar> de tous les fichiers dans
    <code*|users/docs>.

    <\code>
      smbclient //myPC/myShare `` `` -N -Tc backup.tar
      users<math|\<backslash\>>docs
    </code>

    idem mais avec un chemin de type DOS.

    <\code>
      smbclient //myPC/myShare `` `` -N -TcF backup.tar tarlist
    </code>

    crée une archive <code*|backup.tar> de tous les fichiers dont le nom est
    dans le fichier <verbatim|tarlist>.

    <\code>
      smbclient //myPC/myShare `` `` -N -Tc backup.tar *
    </code>

    crée une archive contenant tous les fichiers et répertoires du partage.

    <\remark>
      l'option <verbatim|-N> est pratique car elle supprime la demande de
      mots de passe pour les partages n'en demandant pas.
    </remark>

    <item*|ftp><code*|smbclient //server/share -U username>

    <\description>
      <item*|? [command]>informations sur la commande.

      <item*|! [shell command]>lance une commande dans un shell local à la
      machine sur laquelle on travaille.

      <item*|chown file uid gid>cette commande dépend des caractéristiques du
      serveur distant.

      <item*|chmod file \<less\>mode in octal\<gtr\>>

      <item*|del \<less\>mask\<gtr\>>détruit tous les fichiers correspondant
      au masque dans le partage.

      <item*|dir \<less\>mask\<gtr\>>liste les fichiers correspondant au
      maque dans le partage.

      <item*|get \<less\>remote file name\<gtr\> [local file name]>copie le
      fichier <code*|remote file name> du serveur vers la machine locale.

      <item*|lcd [directory name]>permet de lister ou changer de répertoire
      sur l'ordinateur local.

      <item*|mget \<less\>mask\<gtr\>>copie tous les fichiers correspondant
      au masque depuis le serveur.

      <item*|mkdir \<less\>directory name\<gtr\>>

      <item*|mput \<less\>mask\<gtr\>>copie tous les fichiers correspondant
      au masque depuis la machine locale vers le serveur.

      <item*|print \<less\>file name\<gtr\>>imprime le fichier de la machine
      locale vers un serveur d'impression.

      <item*|put \<less\>local file name\<gtr\> [remote file name]>

      <item*|recurse>établi ou supprime la récursion pour les commandes
      <code*|mput>, <code*|mget>, <code*|rm> et <code*|rmdir>.
    </description>

    Exemple de sauvegarde de tout un partage :

    <\code>
      smbclient //server/share -U username

      \<gtr\> prompt

      \<gtr\> recurse

      \<gtr\> mget *
    </code>

    S'il existe plusieurs domaines, utiliser les options <code*|-n
    netbiosname -W workgroup>.

    <\remark>
      On peut changer la taille du buffer utilisé par smbclient.

      <\code>
        smblcient -b buffer_size //server/share [password] [options]
      </code>
    </remark>
  </description>

  <section|Montages CIFS>

  <\description>
    <item*|/etc/fstab>

    <\code>
      //server/share /mnt/local_folder cifs
      user,noauto,credentials=/etc/.../filename,uid=500,gid=500 0 0
    </code>

    <item*|Syntaxe de filename>

    <\code>
      username = \<less\>value\<gtr\>

      password = \<less\>value\<gtr\>
    </code>
  </description>

  <\remark>
    forcer l'uid et le gid s'ils sont différents sur le serveur et sur la
    machine locale. Ceci ne fonctionne pas si le serveur supporte les
    \S<space|0.2spc>CIFS Unix extensions<space|0.2spc>\T (si problème
    utiliser <code*|unix extensions = no>).
  </remark>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-even|1.5cm>
    <associate|page-medium|paper>
    <associate|page-odd|1.5cm>
    <associate|page-right|1.5cm>
    <associate|page-width-margin|true>
    <associate|par-first|0cm>
    <associate|par-hyphen|professional>
    <associate|par-kerning-margin|true>
    <associate|par-width|18.5cm>
    <associate|preamble|false>
    <associate|sfactor|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|5>>
    <associate|auto-10|<tuple|3.3|8>>
    <associate|auto-11|<tuple|2|8>>
    <associate|auto-12|<tuple|3.4|8>>
    <associate|auto-13|<tuple|3|8>>
    <associate|auto-14|<tuple|3.5|8>>
    <associate|auto-15|<tuple|4|8>>
    <associate|auto-16|<tuple|3.6|9>>
    <associate|auto-17|<tuple|3.7|10>>
    <associate|auto-18|<tuple|4|10>>
    <associate|auto-19|<tuple|4.1|10>>
    <associate|auto-2|<tuple|1|6>>
    <associate|auto-20|<tuple|5|10>>
    <associate|auto-21|<tuple|4.2|10>>
    <associate|auto-22|<tuple|6|11>>
    <associate|auto-23|<tuple|7|11>>
    <associate|auto-24|<tuple|4.3|12>>
    <associate|auto-25|<tuple|4.4|12>>
    <associate|auto-26|<tuple|4.5|12>>
    <associate|auto-27|<tuple|8|13>>
    <associate|auto-28|<tuple|4.6|14>>
    <associate|auto-29|<tuple|9|14>>
    <associate|auto-3|<tuple|2|6>>
    <associate|auto-30|<tuple|4.7|14>>
    <associate|auto-31|<tuple|4.8|15>>
    <associate|auto-32|<tuple|10|16>>
    <associate|auto-33|<tuple|4.9|17>>
    <associate|auto-34|<tuple|4.10|17>>
    <associate|auto-35|<tuple|4.10.1|17>>
    <associate|auto-36|<tuple|4.10.1.1|17>>
    <associate|auto-37|<tuple|11|17>>
    <associate|auto-38|<tuple|4.10.1.2|18>>
    <associate|auto-39|<tuple|12|18>>
    <associate|auto-4|<tuple|2.1|6>>
    <associate|auto-40|<tuple|4.10.1.3|18>>
    <associate|auto-41|<tuple|13|18>>
    <associate|auto-42|<tuple|4.10.2|19>>
    <associate|auto-43|<tuple|4.11|19>>
    <associate|auto-44|<tuple|14|19>>
    <associate|auto-45|<tuple|15|19>>
    <associate|auto-46|<tuple|4.12|20>>
    <associate|auto-47|<tuple|16|20>>
    <associate|auto-48|<tuple|5|20>>
    <associate|auto-49|<tuple|5.1|20>>
    <associate|auto-5|<tuple|2.2|6>>
    <associate|auto-50|<tuple|17|21>>
    <associate|auto-51|<tuple|5.2|21>>
    <associate|auto-52|<tuple|18|21>>
    <associate|auto-53|<tuple|5.3|22>>
    <associate|auto-54|<tuple|19|22>>
    <associate|auto-55|<tuple|5.4|22>>
    <associate|auto-56|<tuple|5.5|22>>
    <associate|auto-57|<tuple|5.6|22>>
    <associate|auto-58|<tuple|5.7|22>>
    <associate|auto-59|<tuple|5.8|22>>
    <associate|auto-6|<tuple|3|7>>
    <associate|auto-60|<tuple|20|23>>
    <associate|auto-61|<tuple|5.9|23>>
    <associate|auto-62|<tuple|5.10|23>>
    <associate|auto-63|<tuple|6|23>>
    <associate|auto-64|<tuple|6.1|23>>
    <associate|auto-65|<tuple|6.1.1|23>>
    <associate|auto-66|<tuple|6.1.2|24>>
    <associate|auto-67|<tuple|21|24>>
    <associate|auto-68|<tuple|6.2|25>>
    <associate|auto-69|<tuple|22|25>>
    <associate|auto-7|<tuple|3.1|7>>
    <associate|auto-70|<tuple|6.2.0.0.1|26>>
    <associate|auto-71|<tuple|7|26>>
    <associate|auto-72|<tuple|7.1|26>>
    <associate|auto-73|<tuple|7.1.0.1|27>>
    <associate|auto-74|<tuple|7.1.0.2|27>>
    <associate|auto-75|<tuple|8|28>>
    <associate|auto-76|<tuple|9|30>>
    <associate|auto-77|<tuple|9|?>>
    <associate|auto-8|<tuple|3.2|7>>
    <associate|auto-9|<tuple|1|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|Fichier de configuration|<pageref|auto-9>>

      <tuple|normal|Serveur|<pageref|auto-11>>

      <tuple|normal|Partage|<pageref|auto-13>>

      <tuple|normal|Réseau|<pageref|auto-15>>

      <tuple|normal|Les différents modes de sécurité|<pageref|auto-20>>

      <tuple|normal|Accès anonyme à un partage|<pageref|auto-22>>

      <tuple|normal|Paramètre <with|font-family|<quote|tt>|map to
      guest>|<pageref|auto-23>>

      <tuple|normal|Paramètres relatifs à LDAP|<pageref|auto-27>>

      <tuple|normal|Mappage d'utilisateurs|<pageref|auto-29>>

      <tuple|normal|Synchronisation des mots de passe|<pageref|auto-32>>

      <tuple|normal|net rpc -- utilisateurs et groupes|<pageref|auto-37>>

      <tuple|normal|net rpc share|<pageref|auto-39>>

      <tuple|normal|net rpc service|<pageref|auto-41>>

      <tuple|normal|Attribution de droits spécifiques|<pageref|auto-44>>

      <tuple|normal|Droits spécifiques|<pageref|auto-45>>

      <tuple|normal|Autorisations sur les partages|<pageref|auto-47>>

      <tuple|normal|Noms de Fichiers/dossiers|<pageref|auto-50>>

      <tuple|normal|Liens symboliques|<pageref|auto-52>>

      <tuple|normal|Masquage de fichiers|<pageref|auto-54>>

      <tuple|normal|MS-DFS|<pageref|auto-60>>

      <tuple|normal|Résolution de noms|<pageref|auto-67>>

      <tuple|normal|Exploration|<pageref|auto-69>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Liste
      de tableaux> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      1.<space|2spc>Processus <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      2.<space|2spc>Configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <with|par-left|<quote|1tab>|2.1.<space|2spc>Modification de la
      configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.2.<space|2spc>Conclusion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      3.<space|2spc><with|font-family|<quote|tt>|smb.conf>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      <with|par-left|<quote|1tab>|3.1.<space|2spc>Variables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.2.<space|2spc>Fichier de configuration
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.3.<space|2spc>Serveur
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3.4.<space|2spc>Partage
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|3.5.<space|2spc>Réseau
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|3.6.<space|2spc>Serveurs virtuels
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.7.<space|2spc>Fichiers de log
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      4.<space|2spc>Comptes utilisateurs, authentifications et autorisations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      <with|par-left|<quote|1tab>|4.1.<space|2spc>Les différents modes de
      sécurité <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|4.2.<space|2spc>Accès anonyme à un partage
      en mode <with|font-family|<quote|tt>|user>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|4.3.<space|2spc>Mots de passe et
      authentification <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|4.4.<space|2spc>Identifiant de sécurité
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|4.5.<space|2spc>Stockage des comptes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|4.6.<space|2spc>Mappage d'utilisateurs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|4.7.<space|2spc>Utilitaires de gestion des
      utilisateurs : <with|font-family|<quote|tt>|smbpasswd> et
      <with|font-family|<quote|tt>|pdbedit>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|4.8.<space|2spc>Synchronisation des mots de
      passe <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|4.9.<space|2spc>Mappage de groupes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|4.10.<space|2spc>La commande
      <with|font-family|<quote|tt>|net> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|4.10.1.<space|2spc><with|font-family|<quote|tt>|net
      rpc> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|4tab>|Utilisateurs et groupes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Partages
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Services
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40><vspace|0.15fn>>

      <with|par-left|<quote|2tab>|4.10.2.<space|2spc><with|font-family|<quote|tt>|net
      ads> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|4.11.<space|2spc>Attribution de droits
      spécifiques <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|4.12.<space|2spc>Autorisations sur les
      partages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      5.<space|2spc>Options avancées <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>

      <with|par-left|<quote|1tab>|5.1.<space|2spc>Noms des fichiers/dossiers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1tab>|5.2.<space|2spc>Liens symboliques
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|5.3.<space|2spc>Masquage de fichiers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1tab>|5.4.<space|2spc>Verrous
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|5.5.<space|2spc>Attributs DOS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|1tab>|5.6.<space|2spc>Permissions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|5.7.<space|2spc>ACL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1tab>|5.8.<space|2spc>MS-DFS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|5.9.<space|2spc>VFS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|5.10.<space|2spc>Scripts
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      6.<space|2spc>Résolution de noms et exploration du réseau
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>

      <with|par-left|<quote|1tab>|6.1.<space|2spc>Résolution de noms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|6.1.1.<space|2spc>Systèmes d'exploitation
      windows modernes <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|6.1.2.<space|2spc>Interaction entre un
      client WINS et un serveur WINS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|1tab>|6.2.<space|2spc>Exploration du réseau
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      Quelques règles à retenir pour améliorer l'exploration
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70><vspace|0.15fn>

      7.<space|2spc>Contrôleur de domaine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      <with|par-left|<quote|1tab>|7.1.<space|2spc>Configuration du PDC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <with|par-left|<quote|4tab>|Domain Admins
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Gestion des privilèges
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74><vspace|0.15fn>>

      8.<space|2spc>Programme smbclient <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>

      9.<space|2spc>Montages CIFS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>
    </associate>
  </collection>
</auxiliary>