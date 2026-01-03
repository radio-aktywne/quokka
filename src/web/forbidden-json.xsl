<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output
    encoding="UTF-8"
    media-type="application/json"
    method="text"
    omit-xml-declaration="yes"
  />
  <xsl:template match="/node()">{"error":"Forbidden"}</xsl:template>
</xsl:stylesheet>
