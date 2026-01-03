<icecast>
  <authentication>
    <admin-password>{{ ( ds "config" ).credentials.admin.password }}</admin-password>
    <admin-user>{{ ( ds "config" ).credentials.admin.user }}</admin-user>
  </authentication>

  <listen-socket>
    <bind-address>{{ ( ds "config" ).server.host }}</bind-address>
    <port>{{ ( ds "config" ).server.port }}</port>
  </listen-socket>

  <logging>
    <!-- Log access to stdout -->
    <accesslog>stdout</accesslog>

    <!-- Log errors to stderr -->
    <errorlog>stderr</errorlog>

    <!-- 4 Debug, 3 Info, 2 Warn, 1 Error -->
    <loglevel>3</loglevel>
  </logging>

  <mount type="default">
    <charset>UTF-8</charset>
    <password>{{ ( ds "config" ).credentials.source.password }}</password>
    <username>{{ ( ds "config" ).credentials.source.user }}</username>
  </mount>

  <paths>
    <logdir>/dev/</logdir>

    <adminroot>src/admin/</adminroot>
    <webroot>src/web/</webroot>

    <alias source="/admin/" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/admin.cgi" destination="/forbidden-html.xsl"/>
    <alias source="/admin/buildm3u" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/dashboard" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/dashboard.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/dashboard.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/dumpfilecontrol" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/dumpfilecontrol.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/eventfeed" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/fallbacks" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/fallbacks.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/fallbacks.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/killclient" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/killclient.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/killclient.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/killsource" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/killsource.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/killsource.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/listclients" destination="/admin/listclients.json"/>
    <alias source="/admin/listclients.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/listensocketlist" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/listensocketlist.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/listmounts" destination="/admin/listmounts.json"/>
    <alias source="/admin/listmounts.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/manageauth" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/manageauth.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/manageauth.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/marklog" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/marklog.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/marklog.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/metadata" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/metadata.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/moveclients" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/moveclients.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/moveclients.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/publicstats" destination="/admin/publicstats.json"/>
    <alias source="/admin/reloadconfig" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/reloadconfig.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/reloadconfig.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/showlog" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/showlog.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/showlog.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/stats" destination="/admin/stats.json"/>
    <alias source="/admin/stats.xml" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/stats.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/streamlist" destination="/admin/streamlist.json"/>
    <alias source="/admin/streamlist.txt" destination="/forbidden-txt.xsl"/>
    <alias source="/admin/streamlist.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/response.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/updatemetadata" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/updatemetadata.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/updatemetadata.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/version" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/version.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/ping" destination="/ping.xsl"/>
  </paths>

  <security>
    <prng-seed type="profile">linux</prng-seed>
  </security>
</icecast>
