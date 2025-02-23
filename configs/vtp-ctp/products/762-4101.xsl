<xsl:stylesheet version='1.0'
  xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
  xmlns:_4101="my:my">

<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
<xsl:strip-space elements="*"/>


<_4101:hide>
  <uid>ADMIN_RS232</uid>
  <uid>ADMIN_SERVICE_INTERFACE</uid>
  <uid>PROFIBUS</uid>
  <uid>MODEM</uid>
  <uid>BACNET</uid>
</_4101:hide>

<xsl:template match="node()|@*">

  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>

</xsl:template>

<!-- CBM items -->
<xsl:template match="//simple_level">
  
  <xsl:choose>

    <!-- test expression adapted from 
    http://stackoverflow.com/questions/2885332/dynamically-generate-xpath-expression-using-xml-data  
    It is needed to work around XSLT's restrictions (no dynamic XPATH expressions, no variables within
    "match" clauses).
    -->
    <xsl:when test="@uid = document('')/*/_4101:hide/*">
    </xsl:when>
    <xsl:otherwise>
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </xsl:otherwise>
  </xsl:choose>

</xsl:template>

<!-- WBM items -->
<xsl:template match="//level">
  
  <xsl:choose>

    <!-- test expression adapted from 
    http://stackoverflow.com/questions/2885332/dynamically-generate-xpath-expression-using-xml-data  
    It is needed to work around XSLT's restrictions (no dynamic XPATH expressions, no variables within
    "match" clauses).
    -->
    <xsl:when test="@uid = document('')/*/_4101:hide/*">
    </xsl:when>
    <xsl:otherwise>
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </xsl:otherwise>
  </xsl:choose>

</xsl:template>

</xsl:stylesheet>
