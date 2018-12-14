
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
<xsl:template match="/">
    <results>
        <xsl:for-each select="Mariokart/characters/character | Mariokart/tires/tire | Mariokart/bodies/body | Mariokart/gliders/glider">
            <xsl:sort select="name"/>
            <xsl:copy-of select="name"/>
        </xsl:for-each>
    </results>
</xsl:template>
</xsl:stylesheet>