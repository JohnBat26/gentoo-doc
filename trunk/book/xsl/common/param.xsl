<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


  <!-- OVERRIDDEN STYLESHEET PARAMETERS: -->
  <xsl:param name="l10n.gentext.language">ru</xsl:param>
  
  <!-- These two have been moved here because they should be the same
       for each build target (HTML, PDF etc.) -->
  <xsl:param name="runinhead.default.title.end.punct" select="':'"/>
  <xsl:param name="runinhead.title.end.punct" select="'.!?:-'"/>
  <xsl:param name="index.method">kosek</xsl:param>

<xsl:param name="chapter.autolabel" select="1"></xsl:param>
<xsl:param name="part.autolabel" select="1"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.autolabel.max.depth">8</xsl:param>
    

<xsl:param name="appendix.autolabel">A</xsl:param>
<xsl:param name="graphic.default.extension"/>

  <!-- PARAMETERS INTRODUCED BY US -->

  <xsl:param name="fb-home.url" select="'http://gentoo.theserverside.ru/book'"/>
  <xsl:param name="fb-home.title" select="'Gentoo-doc HOME'"/>

  <xsl:param name="fb-docindex.url" select="'index.html'"/>
  <xsl:param name="fb-docindex.title" select="'В начало'"/>

  <xsl:param name="runinhead.bold" select="1"/>
  <xsl:param name="runinhead.italic" select="0"/>

</xsl:stylesheet>