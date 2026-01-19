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
    <accesslog>-</accesslog>

    <!-- Log errors to stdout -->
    <errorlog>-</errorlog>

    <!-- 4 Debug, 3 Info, 2 Warn, 1 Error -->
    <loglevel>3</loglevel>
  </logging>

  <mount type="default">
    <charset>UTF-8</charset>
    <password>{{ ( ds "config" ).credentials.source.password }}</password>
    <username>{{ ( ds "config" ).credentials.source.user }}</username>
  </mount>

  <paths>
    <adminroot>src/admin/</adminroot>
    <webroot>src/web/</webroot>

    <alias source="/admin/" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/admin.cgi" destination="/forbidden-html.xsl"/>
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
    <alias source="/admin/listclients.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/listensocketlist" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/listensocketlist.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/listmounts.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/manageauth" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/manageauth.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/manageauth.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/marklog" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/marklog.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/marklog.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/metadata.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/moveclients" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/moveclients.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/moveclients.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/reloadconfig" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/reloadconfig.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/reloadconfig.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/showlog" destination="/forbidden-xml.xsl"/>
    <alias source="/admin/showlog.json" destination="/forbidden-json.xsl"/>
    <alias source="/admin/showlog.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/stats.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/streamlist.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/response.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/updatemetadata.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/admin/version.xsl" destination="/forbidden-html.xsl"/>
    <alias source="/ping" destination="/ping.xsl"/>
  </paths>

  <security>
    <prng-seed type="profile">linux</prng-seed>
  </security>
</icecast>
