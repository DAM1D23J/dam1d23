<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejer01</title>
        <styles type="text/css">
        .rojo {
          color= red;
         }
        </styles>
      </head>
      <body>
        <h1>CD Catalog</h1>
        <ol>
          <xsl:for-each select="//cd[position()&lt;6]">
            <li>
              <div class="rojo">
                <xsl:value-of select="title"/>
                <br/>
              </div>
              <xsl:value-of select="artist"/>
              <xsl:text>, </xsl:text>
              <xsl:value-of select="year"/>
              <br/>
              <xsl:text>$</xsl:text>
              <xsl:value-of select="price"/>
            </li>
            <br/>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>