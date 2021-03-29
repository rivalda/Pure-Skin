<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Produktet </h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Emri</th>
            <th>Cmimi</th>
            <th>KategoriID</th>
          </tr>
          
          <xsl:for-each select="Produktet/Produkte">
            <tr>
              <td><xsl:value-of select="Emri"/> </td>

              <td>
                <xsl:value-of select="Cmimi"/>
              </td>
              <xsl:choose>
                <xsl:when test="KategoriID = 1">
                  <td bgcolor="#ff00ff">
                    <xsl:value-of select="KategoriID"/>
                  </td>
                </xsl:when>
                
                <xsl:when test="KategoriID = 3 ">
                  <td bgcolor ="#CCCCCC ">
                    <xsl:value-of select="KategoriID"/> </td>
                </xsl:when>
                
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="KategoriID"/>
                  </td>
                </xsl:otherwise>
                
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

