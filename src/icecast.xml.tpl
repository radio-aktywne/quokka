<icecast>
  <authentication>
    <admin-password>{{ ( ds "config" ).credentials.admin.password }}</admin-password>
    <admin-user>{{ ( ds "config" ).credentials.admin.user }}</admin-user>
  </authentication>

  <http-headers>
    <header name="Access-Control-Allow-Headers" type="cors" value="*" />
    <header name="Access-Control-Allow-Methods" type="cors" value="*" />
    <header name="Access-Control-Allow-Origin" type="cors" value="*" />
    <header name="Access-Control-Expose-Headers" type="cors" value="*" />
  </http-headers>

  <limits>
    <clients>{{ ( ds "config" ).limits.clients }}</clients>
    <sources>{{ ( ds "config" ).limits.sources }}</sources>
  </limits>

  <listen-socket>
    <bind-address>{{ ( ds "config" ).server.host }}</bind-address>
    <port>{{ ( ds "config" ).server.port }}</port>
  </listen-socket>

  <logging>
    <!-- Log access to stderr -->
    <accesslog>-</accesslog>

    <!-- Log errors to stderr -->
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
    <mime-types>src/mime.types</mime-types>
    <webroot>src/web/</webroot>

    <!-- We are logging to stderr, so no files should be created here, but Icecast complains if this is missing -->
    <logdir>./</logdir>

    <!-- Block access to some paths by aliasing them to other paths that return error responses -->
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

    <!-- Alias some paths to other paths -->
    <alias source="/ping" destination="/ping.xsl"/>
  </paths>

  <security>
    <prng-seed type="profile">linux</prng-seed>
  </security>

  <!-- The values below are not important, but Icecast complains if they are missing -->
  <hostname>example.com</hostname>
  <location>Example</location>
  <admin>admin@example.com</admin>
</icecast>
