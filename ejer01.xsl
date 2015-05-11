<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejer01</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Titulo</th>
            <th>Artista</th>
            <th>año</th>
          </tr>
          <xsl:for-each select="//cd">
          <xsl:choose>
          <xsl:when test="year&gt;1969 and year&lt;1980">
            <tr>
              <td><xsl:apply-templates select="title" mode="verde"/></td>
              <td><xsl:apply-templates select="artist" mode="verde"/></td>
              <td><xsl:apply-templates select="year" mode="verde"/></td>
            </tr>
            </xsl:when>
             <xsl:when test="year&gt;1979 and year&lt;1990">
            <tr>
              <td><xsl:apply-templates select="title" mode="rojo"/></td>
              <td><xsl:apply-templates select="artist" mode="rojo"/></td>
              <td><xsl:apply-templates select="year" mode="rojo"/></td>
            </tr>
            </xsl:when>
            <xsl:when test="year&gt;1989">
            <tr>
              <td><xsl:apply-templates select="title" mode="azul"/></td>
              <td><xsl:apply-templates select="artist" mode="azul"/></td>
              <td><xsl:apply-templates select="year" mode="azul"/></td>
            </tr>
            </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="title" mode="verde">
    <span style="color:#00ff00">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  <xsl:template match="artist" mode="verde">
    <span style="color:#00ff00">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  <xsl:template match="year" mode="verde">
    <span style="color:#00ff00">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  
  <xsl:template match="title" mode="rojo">
    <span style="color:#ff0000">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  <xsl:template match="artist" mode="rojo">
    <span style="color:#ff0000">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  <xsl:template match="year" mode="rojo">
    <span style="color:#ff0000">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  
  <xsl:template match="title" mode="azul">
    <span style="color:#0000ff">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  <xsl:template match="artist" mode="azul">
    <span style="color:#0000ff">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  <xsl:template match="year" mode="azul">
    <span style="color:#0000ff">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>
  
</xsl:stylesheet>
