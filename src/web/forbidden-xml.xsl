<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output
    encoding="UTF-8"
    media-type="application/xml"
    method="xml"
    omit-xml-declaration="no"
  />
  <xsl:template match="/node()">
    <error>Forbidden</error>
  </xsl:template>
</xsl:stylesheet>
