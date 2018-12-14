<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    <xsl:template match="/">
        <Results>
            <xsl:for-each select="/Mariokart/bodies/body">
                <xsl:variable name="body_name" select="name"/>
                <xsl:variable name="body_speed" select="speed/land"/>
                <xsl:for-each select="/Mariokart/tires/tire">
                    <xsl:variable name="tire_name" select="name"/>
                    <xsl:variable name="tire_speed" select="speed/land"/> 
                    <Result>
                        <tire><xsl:value-of select="$tire_name"/></tire>
                        <body><xsl:value-of select="$body_name"/></body>
                        <speed>
                            <xsl:value-of select="sum($tire_speed|$body_speed)"/>
                        </speed>
                    </Result>
                </xsl:for-each>
            </xsl:for-each>
        </Results>      
    </xsl:template>
    
    
    
</xsl:stylesheet>