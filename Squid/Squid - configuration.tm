<TeXmacs|1.99.2>

<style|<tuple|generic|french>>

<\body>
  <doc-data|<doc-title|Squid<nbsp>: Configuration>>

  <with|color|dark green|<section|Configuration des informations r�seau>>

  <with|color|dark blue|<subsection|Nom du serveur Squid>>

  <\code>
    visible_hostname srv-proxy.corot.local
  </code>

  <with|color|dark blue|<subsection|Port d'�coute>>

  <\itemize-minus>
    <item>Un seul port � �couter<nbsp>:

    <\code>
      http_port 3128
    </code>

    <item>Plusieurs ports � �couter<nbsp>:

    <\code>
      http_port 3128\ 

      http_port 8080
    </code>

    <item>Si plusieurs interfaces<nbsp>:

    <\code>
      http_port 192.168.1.1:3128\ 

      http_port 172.16.1.1:8080
    </code>
  </itemize-minus>

  <\remark*>
    Pr�ciser l'IP permet ajoute un �l�ment de s�curit�.
  </remark*>

  <with|color|dark blue|<subsection|Gestion du <abbr|DNS>>>

  <subsubsection|Serveurs DNS>

  Par d�faut, pour r�soudre un nom d'h�te, Squid utilise le r�solveur du
  syst�me d'exploitation. Les serveurs de nom sont donc renseign�s dans
  <code*|/etc/resolv.conf>.

  Il est tout de m�me possible d'outre-passer cette configuration gr�ce � la
  directive<nbsp>:

  <\code>
    dns_nameservers 172.16.1.15 172.16.1.16
  </code>

  <subsubsection|Cache DNS>

  Par d�faut, Squid garde en cache les r�sultats des r�solutions de nom
  (positifs ou n�gatifs). Cette dur�e est de 6 heures pour les requ�tes ayant
  abouti et 5 minutes pour celles qui ont �chou�.

  <\code>
    positive_dns_ttl 12 hours negative_dns_ttl 5 minutes
  </code>

  <\remark*>
    Ne pas trop augmenter cette derni�re valeur, un �chec peut n'�tre que
    temporaire.
  </remark*>

  <subsubsection|Taille du cache DNS>

  Afin de ne pas syst�matiquement refaire les m�mes recherches, Squid peut
  mettre en cache les r�sultats. Ici est indiqu� le nombre de requ�tes
  conserv�es (<em|pas leur taille donc !>). Le d�faut est 1024.

  <\code>
    fqdncache_size 4096
  </code>

  <subsubsection|R�solution de nom interne>

  Squid ne lit pas la directive <code*|search> dans le fichier
  <code*|/etc/resolv.conf>. Il lui est donc impossible d'atteindre un serveur
  du <abbr|LAN> dont l'adresse serait indiqu�e ainsi<nbsp>:
  <code*|http://srv-interne>.

  La directive <code*|append_domain >permet de r�soudre ce probl�me<nbsp>:

  <\code>
    append_domain .corot.local
  </code>

  <subsection|Conclusion de la partie \S<nbsp>configuration des informations
  r�seau<nbsp>\T>

  <\code>
    # Configuration r�seau minimale

    #

    # Utilisateur de Squid

    cache_effective_user squid\ 

    cache_effective_group squid

    #

    # Nom du serveur\ 

    visible_hostname srv-proxy.corot.local

    #

    # Port d'�coute de Squid\ 

    http_port 172.16.1.1:3128

    #

    # Serveurs DNS\ 

    dns_nameservers 172.16.1.15 172.16.1.16

    #

    # Mise en cache des requ�tes DNS\ 

    positive_dns_ttl 12 hours\ 

    negative_dns_ttl 1 minutes

    #

    # Taille du cache DNS\ 

    fqdncache_size 4096

    #

    # Domaine par d�faut\ 

    append_domain .corot.local
  </code>

  <with|color|dark green|<section|Configuration du contr�le d'acc�s>>

  Le contr�le d'acc�s permet d'autoriser ou de refuser les utilisateurs en
  fonction de leur adresse IP, des plages horaires, de leur groupe, \<ldots\>

  <with|color|dark blue|<subsection|Principe du contr�le d'acc�s>>

  Il faut d�finir deux directives<nbsp>:

  <\itemize-minus>
    <item>Une <abbr|ACL> (Access Control List)<nbsp>;

    <item>Une r�gle d'acc�s avec la directive <code*|http_access>.
  </itemize-minus>

  <paragraph|Exemple.>

  <\code>
    acl reseau_local src 192.168.1.0\ 

    http_access allow reseau_local
  </code>

  <with|color|dark blue|<subsection|Les ACL>>

  <subsubsection|Syntaxe>

  <center|<code*|acl nom_acl type_acl valeur1 valeur2 ...>>

  ou

  <center|<code*|acl nom_acl type_acl chemin_fichier_a_lire>>

  <\itemize-minus>
    <item><verbatim|nom_acl><nbsp>: nom donn� � la r�gle de contr�le d'acc�s
    ;

    <item><verbatim|type_acl><nbsp>: type d'objet d�fini par l'ACL ;

    <item><verbatim|valeur><nbsp>: valeur de l'objet de l'ACL. Cette valeur
    d�pend du type de l'ACL. Il est possible d'affecter plusieurs valeurs �
    une ACL ou de stocker ces valeurs dans un fichier.
  </itemize-minus>

  <subsubsection|Types d'ACL (les types pour l'authentification ne sont pas
  pr�sent�s ici)>

  <\description>
    <item*|src>Adresses IP ou adresses du r�seau source.

    <\code>
      acl reseau_local src 10.0.0.0/24\ 

      acl hote src 10.0.0.1/32
    </code>

    <item*|dst>Adresses IP ou adresses du r�seau de destination. Squid
    transforme cette adresse en nom de domaine.

    <\code>
      acl reseau_dest dst 80.125.40.64/28
    </code>

    <item*|srcdomain>Nom de domaine source. Ce type r�clame plus de travail �
    Squid qui doit effectuer une r�solution de nom pour chaque requ�te.

    <\code>
      acl domaine_source srcdomain .corot.local
    </code>

    <item*|dstdomain>Nom de domaine de destination ou une URL.

    <\code>
      acl domaine_destination dstdomain www.google.com
    </code>

    <item*|port>Sp�cifie les num�ros des ports des protocoles.

    <\code>
      acl port_http port 80
    </code>

    <item*|proto>Sp�cifie un protocole applicatif particulier.

    <\code>
      acl ftp proto FTP
    </code>

    <item*|myip>Sp�cifie l'adresse IP du serveur cache sur laquelle les
    clients �mettent leurs requ�tes. Cet type d'ACL peut �tre utile si le
    serveur cache poss�de plusieurs interfaces r�seau et que l'on souhaite
    que Squid n'�coute que l'une seule d'entre elles.

    <\code>
      acl @ip_proxy myip 10.0.0.254
    </code>

    <item*|myport>Sp�cifie le num�ro de port sur lequel <name|Squid> re�oit
    les requ�tes des clients. Type surtout utilis� lorsque <name|Squid> est
    employ� en tant qu'acc�l�rateur HTTP.

    <\code>
      acl port_srv_cache myport 3128
    </code>

    <item*|time>Permet de sp�cifier un ou plusieurs jours de la semaine ainsi
    qu'une plage horaire.

    <\code>
      acl heures_bureau time MTWHF 9:00-17:00
    </code>

    En fait la syntaxe est la suivante<nbsp>:

    <\code>
      acl nom_acl time [Days] [H1:M1-H2:M2]
    </code>

    Les jours sont d�finis de ma sorte<nbsp>: Lundi (M), Mardi (T), Mercredi
    (W), Jeudi (H), Vendredi (F), Samedi (A) et Dimanche (S). La lettre D
    d�clare tous les jours de la semaine.
  </description>

  <\remark*>
    Par d�faut, <name|Squid> d�finit des <abbr|ACL> pour les plages
    d'adresses non routables et pour les ports \S<nbsp>surs<nbsp>\T.
  </remark*>

  <with|color|dark blue|<subsection|Comment <name|Squid> lit-il les ACL ?>>

  <name|Squid> lit les <abbr|ACL> r�f�renc�es une fois avant d'aller trouver
  une correspondance dans les r�gles d'acc�s.

  <em|Il est donc n�cessaire de regrouper les <abbr|ACL> avant de d�finir les
  r�gles de contr�le d'acc�s.>

  Si une <abbr|ACL> poss�de plusieurs valeurs, lors de la lecture,
  <name|Squid> effectue un <verbatim|OU> logique entre celles-ci. Une fois
  une correspondance trouv�e, <name|Squid> stoppe le traitement de
  l'<abbr|ACL> et l'applique � une directive de r�gles d'acc�s.

  <with|color|dark blue|<subsection|ACL rapides, ACL lentes>>

  En fonction du traitement demand�, <name|Squid> peut �tre oblig� de faire
  appel � des processus externes pour r�aliser son travail (r�solution de
  nom, par exemple). Cet appel ralentit le traitement de la demande.

  Cas typiques<nbsp>:

  <\itemize-minus>
    <item>utilisation de <code*|srcdomain> : <name|Squid> doit faire
    correspondre l'IP source au nom DNS.

    <item>utilisation de <code*|dst><nbsp>: <name|Squid> doit effectuer une
    r�solution inverse de nom.
  </itemize-minus>

  Ces deux <abbr|ACL> sont dites \S lentes \T.

  <with|color|dark blue|<subsection|Les r�gles d'acc�s>>

  Les r�gles d'acc�s permettent d'autoriser ou non les connexions entrantes
  <abbr|HTTP>, de communiquer ou non avec d'autres serveurs cache, de stocker
  ou non certains �l�ments en cache, \<ldots\>

  <\code>
    # Autorise l'access aux machines du r�seau local (ACL localnet)
    http_access allow localnet\ 

    # Autorise l'access au serveur lui-m�me (ACL localhost)\ 

    http_access allow localhost\ 

    # Interdit tout le reste (ACL all)\ 

    http_access deny all
  </code>

  Les r�gles sont lues de mani�re s�quentielle, les unes � la suite des
  autres, jusqu'� ce qu'une r�gle corresponde. Si une correspondance est
  trouv�e, la r�gle est appliqu�e et le processus s'arr�te.

  <em|La derni�re r�gle doit toujours �tre<nbsp>: <code*|http_access deny
  all>.>

  <subsubsection|Principales r�gles utilis�es>

  <\itemize-minus>
    <item><code*|http_access><nbsp>: r�gle d'acc�s qui permet d'autoriser ou
    pas les requ�tes <abbr|HTTP>.

    <item><code*|icp_access><nbsp>: r�gle d'acc�s qui permet d'autoriser ou
    pas le serveur � communiquer avec d'autres serveurs cache (protocole
    <abbr|ICP>).

    <item><code*|http_reply_access><nbsp>: r�gle d'acc�s qui permet
    d'autoriser ou pas les r�ponses aux requ�tes des clients (par d�faut,
    autorise).
  </itemize-minus>

  <subsubsection|Comment Squid lit-il les r�gles d'acc�s ?>

  Comme pour les <abbr|ACL>, on peut affecter plusieurs valeurs � une r�gle
  d'acc�s. Si une <verbatim|ACL> comporte plusieurs valeurs, <name|Squid>
  effectue un <verbatim|OU> logique pour trouver une correspondance, alors
  que si une r�gle d'acc�s comporte plusieurs <abbr|ACL>, il effectue un
  <verbatim|ET> logique.

  <name|Squid> s'arr�te lorsqu'il trouve une correspondance exacte.

  <paragraph|Param�trage incorrect.>

  <\code>
    acl client_reseau src 192.168.1.100\ 

    acl domaine_interdit dstdomain .google.fr

    \;

    http_access allow client_reseau_src\ 

    http_access deny client_reseau_src domaine_interdit\ 

    http_access deny all
  </code>

  La premi�re r�gle d'acc�s est v�rifi�e pour la machine 192.168.1.100. La
  seconde n'est jamais lue et le domaine <verbatim|.google.fr> n'est jamais
  bloqu�.

  <paragraph|Param�trage correct.>

  <\code>
    acl client_reseau src 192.168.1.100\ 

    acl domaine_interdit dstdomain .google.fr

    \;

    http_access deny client_reseau_src domaine_interdit\ 

    http_access allow client_reseau_src\ 

    http_access deny all
  </code>

  <with|color|dark blue|<subsection|Conclusion de la partie
  \S<nbsp>Configuration du contr�le d'acc�s<nbsp>\T>>

  Exemple bas� sur trois sous-r�seaux<nbsp>:

  <\code>
    # Liste des ACL

    acl pole_chimie src 10.10.0.0/16\ 

    acl administratif 192.168.1.0/28\ 

    acl informatique src 192.168.2.0/28

    acl heures_bureau time MTWH 07:30-19:30\ 

    acl jours_chimie time MTWHF

    acl proto_ftp proto FTP

    acl sites_interdits url_regex -i sexe violent\ 

    acl audio-video urlpath_regex -i \\.(mp3\|mp4\|wav\|flv\|avi\|mov\|wma)$

    [...] # ACL par d�faut (en particulier, celles sur les ports).

    \;

    # R�gles d'acc�s

    http_access deny pole_chimie sites_interdits\ 

    http_access deny pole_chimie audio-video\ 

    http_access deny administratif sites_interdits\ 

    http_access deny administratif audio-video\ 

    http_access deny administratif proto_ftp\ 

    http_access allow pole_chimie jours_chimie\ 

    http_access allow administratif heures_bureau\ 

    http_access allow informatique\ 

    http_access allow localnet\ 

    http_access allow localhost\ 

    http_access deny all
  </code>

  <with|color|dark green|<section|Le stockage des objets>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-even-footer|<htab|5mm><page-the-page><htab|5mm>>
    <associate|page-even-header|>
    <associate|page-odd-footer|<htab|5mm><page-the-page><htab|5mm>>
    <associate|page-odd-header|>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|2.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|2.1.0.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-13|<tuple|2.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-14|<tuple|2.2.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-15|<tuple|2.2.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-16|<tuple|2.3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-17|<tuple|2.4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-18|<tuple|2.5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-19|<tuple|2.5.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-20|<tuple|2.5.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-21|<tuple|2.5.2.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-22|<tuple|2.5.2.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-23|<tuple|2.6|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-24|<tuple|3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|1.3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|1.3.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|1.3.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|1.3.3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|1.3.4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|1.4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Configuration
      des informations r�seau> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Nom du serveur Squid
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Port d'�coute
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Gestion
      du <rigid|DNS>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Serveurs DNS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>