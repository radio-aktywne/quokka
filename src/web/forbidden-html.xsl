<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output
    encoding="UTF-8"
    media-type="text/html"
    method="html"
    omit-xml-declaration="yes"
  />
  <xsl:template match="/node()">
    <html>
      <head>
        <meta charset="UTF-8" />
        <title>Error • quokka</title>
      </head>
      <body>
        <main role="main">
          <h1>Error</h1>
          <p>Forbidden</p>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
