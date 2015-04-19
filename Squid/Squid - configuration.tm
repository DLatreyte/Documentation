<TeXmacs|1.99.2>

<style|<tuple|generic|french>>

<\body>
  <doc-data|<doc-title|Squid<nbsp>: Configuration>>

  <with|color|dark green|<section|Configuration des informations réseau>>

  <with|color|dark blue|<subsection|Nom du serveur Squid>>

  <\code>
    visible_hostname srv-proxy.corot.local
  </code>

  <with|color|dark blue|<subsection|Port d'écoute>>

  <\itemize-minus>
    <item>Un seul port à écouter<nbsp>:

    <\code>
      http_port 3128
    </code>

    <item>Plusieurs ports à écouter<nbsp>:

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
    Préciser l'IP permet ajoute un élément de sécurité.
  </remark*>

  <with|color|dark blue|<subsection|Gestion du <abbr|DNS>>>

  <subsubsection|Serveurs DNS>

  Par défaut, pour résoudre un nom d'hôte, Squid utilise le résolveur du
  système d'exploitation. Les serveurs de nom sont donc renseignés dans
  <code*|/etc/resolv.conf>.

  Il est tout de même possible d'outre-passer cette configuration grâce à la
  directive<nbsp>:

  <\code>
    dns_nameservers 172.16.1.15 172.16.1.16
  </code>

  <subsubsection|Cache DNS>

  Par défaut, Squid garde en cache les résultats des résolutions de nom
  (positifs ou négatifs). Cette durée est de 6 heures pour les requêtes ayant
  abouti et 5 minutes pour celles qui ont échoué.

  <\code>
    positive_dns_ttl 12 hours negative_dns_ttl 5 minutes
  </code>

  <\remark*>
    Ne pas trop augmenter cette dernière valeur, un échec peut n'être que
    temporaire.
  </remark*>

  <subsubsection|Taille du cache DNS>

  Afin de ne pas systématiquement refaire les mêmes recherches, Squid peut
  mettre en cache les résultats. Ici est indiqué le nombre de requêtes
  conservées (<em|pas leur taille donc !>). Le défaut est 1024.

  <\code>
    fqdncache_size 4096
  </code>

  <subsubsection|Résolution de nom interne>

  Squid ne lit pas la directive <code*|search> dans le fichier
  <code*|/etc/resolv.conf>. Il lui est donc impossible d'atteindre un serveur
  du <abbr|LAN> dont l'adresse serait indiquée ainsi<nbsp>:
  <code*|http://srv-interne>.

  La directive <code*|append_domain >permet de résoudre ce problème<nbsp>:

  <\code>
    append_domain .corot.local
  </code>

  <subsection|Conclusion de la partie \S<nbsp>configuration des informations
  réseau<nbsp>\T>

  <\code>
    # Configuration réseau minimale

    #

    # Utilisateur de Squid

    cache_effective_user squid\ 

    cache_effective_group squid

    #

    # Nom du serveur\ 

    visible_hostname srv-proxy.corot.local

    #

    # Port d'écoute de Squid\ 

    http_port 172.16.1.1:3128

    #

    # Serveurs DNS\ 

    dns_nameservers 172.16.1.15 172.16.1.16

    #

    # Mise en cache des requêtes DNS\ 

    positive_dns_ttl 12 hours\ 

    negative_dns_ttl 1 minutes

    #

    # Taille du cache DNS\ 

    fqdncache_size 4096

    #

    # Domaine par défaut\ 

    append_domain .corot.local
  </code>

  <with|color|dark green|<section|Configuration du contrôle d'accès>>

  Le contrôle d'accès permet d'autoriser ou de refuser les utilisateurs en
  fonction de leur adresse IP, des plages horaires, de leur groupe, \<ldots\>

  <with|color|dark blue|<subsection|Principe du contrôle d'accès>>

  Il faut définir deux directives<nbsp>:

  <\itemize-minus>
    <item>Une <abbr|ACL> (Access Control List)<nbsp>;

    <item>Une règle d'accès avec la directive <code*|http_access>.
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
    <item><verbatim|nom_acl><nbsp>: nom donné à la règle de contrôle d'accès
    ;

    <item><verbatim|type_acl><nbsp>: type d'objet défini par l'ACL ;

    <item><verbatim|valeur><nbsp>: valeur de l'objet de l'ACL. Cette valeur
    dépend du type de l'ACL. Il est possible d'affecter plusieurs valeurs à
    une ACL ou de stocker ces valeurs dans un fichier.
  </itemize-minus>

  <subsubsection|Types d'ACL (les types pour l'authentification ne sont pas
  présentés ici)>

  <\description>
    <item*|src>Adresses IP ou adresses du réseau source.

    <\code>
      acl reseau_local src 10.0.0.0/24\ 

      acl hote src 10.0.0.1/32
    </code>

    <item*|dst>Adresses IP ou adresses du réseau de destination. Squid
    transforme cette adresse en nom de domaine.

    <\code>
      acl reseau_dest dst 80.125.40.64/28
    </code>

    <item*|srcdomain>Nom de domaine source. Ce type réclame plus de travail à
    Squid qui doit effectuer une résolution de nom pour chaque requête.

    <\code>
      acl domaine_source srcdomain .corot.local
    </code>

    <item*|dstdomain>Nom de domaine de destination ou une URL.

    <\code>
      acl domaine_destination dstdomain www.google.com
    </code>

    <item*|port>Spécifie les numéros des ports des protocoles.

    <\code>
      acl port_http port 80
    </code>

    <item*|proto>Spécifie un protocole applicatif particulier.

    <\code>
      acl ftp proto FTP
    </code>

    <item*|myip>Spécifie l'adresse IP du serveur cache sur laquelle les
    clients émettent leurs requêtes. Cet type d'ACL peut être utile si le
    serveur cache possède plusieurs interfaces réseau et que l'on souhaite
    que Squid n'écoute que l'une seule d'entre elles.

    <\code>
      acl @ip_proxy myip 10.0.0.254
    </code>

    <item*|myport>Spécifie le numéro de port sur lequel <name|Squid> reçoit
    les requêtes des clients. Type surtout utilisé lorsque <name|Squid> est
    employé en tant qu'accélérateur HTTP.

    <\code>
      acl port_srv_cache myport 3128
    </code>

    <item*|time>Permet de spécifier un ou plusieurs jours de la semaine ainsi
    qu'une plage horaire.

    <\code>
      acl heures_bureau time MTWHF 9:00-17:00
    </code>

    En fait la syntaxe est la suivante<nbsp>:

    <\code>
      acl nom_acl time [Days] [H1:M1-H2:M2]
    </code>

    Les jours sont définis de ma sorte<nbsp>: Lundi (M), Mardi (T), Mercredi
    (W), Jeudi (H), Vendredi (F), Samedi (A) et Dimanche (S). La lettre D
    déclare tous les jours de la semaine.
  </description>

  <\remark*>
    Par défaut, <name|Squid> définit des <abbr|ACL> pour les plages
    d'adresses non routables et pour les ports \S<nbsp>surs<nbsp>\T.
  </remark*>

  <with|color|dark blue|<subsection|Comment <name|Squid> lit-il les ACL ?>>

  <name|Squid> lit les <abbr|ACL> référencées une fois avant d'aller trouver
  une correspondance dans les règles d'accès.

  <em|Il est donc nécessaire de regrouper les <abbr|ACL> avant de définir les
  règles de contrôle d'accès.>

  Si une <abbr|ACL> possède plusieurs valeurs, lors de la lecture,
  <name|Squid> effectue un <verbatim|OU> logique entre celles-ci. Une fois
  une correspondance trouvée, <name|Squid> stoppe le traitement de
  l'<abbr|ACL> et l'applique à une directive de règles d'accès.

  <with|color|dark blue|<subsection|ACL rapides, ACL lentes>>

  En fonction du traitement demandé, <name|Squid> peut être obligé de faire
  appel à des processus externes pour réaliser son travail (résolution de
  nom, par exemple). Cet appel ralentit le traitement de la demande.

  Cas typiques<nbsp>:

  <\itemize-minus>
    <item>utilisation de <code*|srcdomain> : <name|Squid> doit faire
    correspondre l'IP source au nom DNS.

    <item>utilisation de <code*|dst><nbsp>: <name|Squid> doit effectuer une
    résolution inverse de nom.
  </itemize-minus>

  Ces deux <abbr|ACL> sont dites \S lentes \T.

  <with|color|dark blue|<subsection|Les règles d'accès>>

  Les règles d'accès permettent d'autoriser ou non les connexions entrantes
  <abbr|HTTP>, de communiquer ou non avec d'autres serveurs cache, de stocker
  ou non certains éléments en cache, \<ldots\>

  <\code>
    # Autorise l'access aux machines du réseau local (ACL localnet)
    http_access allow localnet\ 

    # Autorise l'access au serveur lui-même (ACL localhost)\ 

    http_access allow localhost\ 

    # Interdit tout le reste (ACL all)\ 

    http_access deny all
  </code>

  Les règles sont lues de manière séquentielle, les unes à la suite des
  autres, jusqu'à ce qu'une règle corresponde. Si une correspondance est
  trouvée, la règle est appliquée et le processus s'arrête.

  <em|La dernière règle doit toujours être<nbsp>: <code*|http_access deny
  all>.>

  <subsubsection|Principales règles utilisées>

  <\itemize-minus>
    <item><code*|http_access><nbsp>: règle d'accès qui permet d'autoriser ou
    pas les requêtes <abbr|HTTP>.

    <item><code*|icp_access><nbsp>: règle d'accès qui permet d'autoriser ou
    pas le serveur à communiquer avec d'autres serveurs cache (protocole
    <abbr|ICP>).

    <item><code*|http_reply_access><nbsp>: règle d'accès qui permet
    d'autoriser ou pas les réponses aux requêtes des clients (par défaut,
    autorise).
  </itemize-minus>

  <subsubsection|Comment Squid lit-il les règles d'accès ?>

  Comme pour les <abbr|ACL>, on peut affecter plusieurs valeurs à une règle
  d'accès. Si une <verbatim|ACL> comporte plusieurs valeurs, <name|Squid>
  effectue un <verbatim|OU> logique pour trouver une correspondance, alors
  que si une règle d'accès comporte plusieurs <abbr|ACL>, il effectue un
  <verbatim|ET> logique.

  <name|Squid> s'arrête lorsqu'il trouve une correspondance exacte.

  <paragraph|Paramétrage incorrect.>

  <\code>
    acl client_reseau src 192.168.1.100\ 

    acl domaine_interdit dstdomain .google.fr

    \;

    http_access allow client_reseau_src\ 

    http_access deny client_reseau_src domaine_interdit\ 

    http_access deny all
  </code>

  La première règle d'accès est vérifiée pour la machine 192.168.1.100. La
  seconde n'est jamais lue et le domaine <verbatim|.google.fr> n'est jamais
  bloqué.

  <paragraph|Paramétrage correct.>

  <\code>
    acl client_reseau src 192.168.1.100\ 

    acl domaine_interdit dstdomain .google.fr

    \;

    http_access deny client_reseau_src domaine_interdit\ 

    http_access allow client_reseau_src\ 

    http_access deny all
  </code>

  <with|color|dark blue|<subsection|Conclusion de la partie
  \S<nbsp>Configuration du contrôle d'accès<nbsp>\T>>

  Exemple basé sur trois sous-réseaux<nbsp>:

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

    [...] # ACL par défaut (en particulier, celles sur les ports).

    \;

    # Règles d'accès

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
      des informations réseau> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Nom du serveur Squid
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Port d'écoute
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