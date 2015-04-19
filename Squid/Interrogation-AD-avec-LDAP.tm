<TeXmacs|1.99.2>

<style|<tuple|generic|french>>

<\body>
  <with|color|dark orange|<with|color|black|<doc-data|<doc-title|<name|Squid><nbsp>:
  authentification par interrogation d'un serveur <abbr|Active Directory>
  grâce au protocole <abbr|LDAP>>|<doc-author|<author-data|<author-name|DL>>>>>>

  <with|color|dark green|<section|Résolution de noms>>

  <code*|/etc/resolv.conf> doit être correctement renseigné afin que
  l'<abbr|AD> soit joignable.

  <with|color|dark green|<section|Installation de <name|squid>>>

  <\enumerate>
    <item>Installation du logiciel

    <\code>
      yum upgrade -y

      yum install squid
    </code>

    <item>Le logiciel est-il correctement installé ?

    <\code>
      rpm -qa \| grep squid
    </code>

    <item>Le service <code*|squid> est-il bien stoppé ?

    <\code>
      service squid status
    </code>
  </enumerate>

  <with|color|dark green|<section|Création dans l'<abbr|AD> de l'utilisateur
  que <name|squid> doit utiliser pour interroger l'AD>>

  <\enumerate>
    <item>Création de l'utilisateur <verbatim|squid> dans une <verbatim|OU>.

    <item>Attribution de privilèges à l'utilisateur <verbatim|squid> :

    <\enumerate>
      <item>Clic droit sur le nom du domaine dans la console de l'<abbr|AD>.

      <item>Choix de \S<nbsp><em|Délégation de contrôle><nbsp>\T.

      <item>Ajout de l'utilisateur <em|squid>.

      <item>Sélection des privilèges<nbsp>:

      <\itemize-arrow>
        <item><em|Lire toutes les informations sur l'utilisateur>

        <item><em|Lire toutes les informations inetOrgPerson>
      </itemize-arrow>
    </enumerate>
  </enumerate>

  <with|color|dark green|<section|Dossiers à connaître>>

  <\enumerate>
    <item><code*|/etc/squid><nbsp>: fichiers de configuration de squid.

    <item><code*|/var/log/squid><nbsp>: fichiers de log.

    <item><code*|/usr/lib64/squid><nbsp>: helpers (CentOS 64 bits). Un
    \S<nbsp>helper<nbsp>\T est un programme qui réaliser l'authentification
    pour squid.
  </enumerate>

  <with|color|dark green|<section|Test du \S<nbsp>helper<nbsp>\T qui sera
  utilisé pour l'authentification>>

  <\example>
    Test de <code*|squid_ldap_auth><nbsp>:

    <\code>
      echo "anthony 123456" \| /usr/lib64/squid/squid_ldap_auth -R -b
      \ "dc=corot,dc=local" -D "cn=squid,ou=proxy,dc=corot,dc=local" -w
      "azerty" -f sAMAccountName=%s -h 172.16.1.15
    </code>

    <verbatim|anthony> est un utilisateur présent dans l'AD,
    <verbatim|123456> son mot de passe. <verbatim|azerty> est le mot de passe
    de l'utilisateur <verbatim|squid>. <verbatim|172.16.1.15> est l'IP du
    contrôleur de domaine.
  </example>

  <\example>
    Test de <code*|squid_ldap_group><nbsp>:

    <\code>
      echo "maria level1" \| /usr/lib64/squid/squid_ldap_group -R -b
      "dc=corot,dc=local" -D "cn=squid,ou=proxy,dc=corot,dc=local" -w
      "azerty" -f "(&(objectclass=person) (sAMAccountName=%v)
      (memberof=cn=%a,ou=proxy,dc=corot,dc=local))" -h 172.16.1.15
    </code>

    L'utilisateur <verbatim|maria> appartient au groupe <verbatim|level1>. Le
    test est effectué sur un objet de type <verbatim|person>, il vérifie que
    l'objet ayant pour <verbatim|sAMAccountName> <verbatim|maria> appartient
    au groupe <code*|cn=level1,ou=proxy,dc=corot,dc=local>.
  </example>

  <\remark*>
    <em|Tous les groupes doivent se situer dans la même OU>.
  </remark*>

  <with|color|dark green|<section|Configuration de <name|Squid>>>

  Dans <code*|/etc/squid/squid.conf>, ajouter<nbsp>:

  <\code>
    #\ 

    # Commandes pour déterminer l'existence et la correction d'un

    # couple identifiant/mot de passe

    #

    auth_param basic program /usr/lib64/squid/squid_ldap_auth -R -b
    \ "dc=corot,dc=local" -D "cn=squid,ou=proxy,dc=corot,dc=local" -w
    "azerty" -f sAMAccountName=%s -h 172.16.1.15

    \;

    auth_param basic chidren 5

    \;

    auth_param basic realm Please insert your windows credentials to navigate

    \;

    auth_param basic credentialsttl 1 hour

    #

    # Commandes pour déterminer l'appartenance à un groupe d'un

    # utilisateur

    #

    external_acl_type ldap_group %LOGIN /usr/lib64/squid/squid_ldap_group -R
    -b "dc=corot,dc=local" -D "cn=squid,ou=proxy,dc=corot,dc=local" -w
    "azerty" -f "(&(objectclass=person) (sAMAccountName=%v)
    (memberof=cn=%a,ou=proxy,dc=corot,dc=local))" -h 172.16.1.15

    #

    # acl pour les groupes (en premier nom de l'acl, ensuite nom du # groupe
    dans l'AD)

    #

    acl level1 external ldap_group level1

    acl level2 external ldap_group level2

    acl level3 external ldap_group level3

    #

    # Nouvelles acl

    #

    acl rule1 url_regex -i facebook.com

    acl rule2 url_regex -i youtube.com

    acl ruel3 url_regex -i twitter.com

    #

    # Règles d'accès

    #

    http_access allow level1 !rule1

    http_access allow level2 !rule2

    http_access allow level3 !rule3

    http_access deny all
  </code>

  <\remark*>
    Il n'y a aucune règle d'accès sur <verbatim|localnet> ! Apparemment, il
    faut choisir entre un filtrage basé sur les machines ou un filtrage basé
    sur les comptes.
  </remark*>

  <with|color|dark green|<section|Ouverture du port d'écoute dans le
  parefeu>>

  Ouvrir le port 3128 en udp et tcp. Action faisable en ligne de commande ou
  interface (texte) :

  <\code>
    yum install system-config-firewall-tui
  </code>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|papyrus>
    <associate|page-screen-margin|true>
    <associate|page-width-margin|false>
    <associate|par-kerning-margin|true>
    <associate|par-width|18.5cm>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|2|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|3|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|4|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|6|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|7|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Résolution
      de noms> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Installation
      de <with|font-shape|<quote|small-caps>|squid>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Création
      dans l'<rigid|AD> de l'utilisateur que
      <with|font-shape|<quote|small-caps>|squid> doit utiliser pour
      interroger l'AD> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Dossiers
      à connaître> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Test
      du \S <no-break><specific|screen|<resize|<move|<with|color|<quote|#A0A0FF>|->|-0.3em|>|0em||0em|>>helper
      <no-break><specific|screen|<resize|<move|<with|color|<quote|#A0A0FF>|->|-0.3em|>|0em||0em|>>\T
      qui sera utilisé pour l'authentification>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Configuration
      de <with|font-shape|<quote|small-caps>|Squid>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Ouverture
      du port d'écoute dans le parefeu> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>