<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        
        <xsl:variable name="varaccel" select="Mariokart/characters/character/accel" />
        <results >
            <xsl:for-each-group select="Mariokart/characters/character" group-by="accel">
                <xsl:sort select="accel"/> 
                <xsl:variable name="ACL"  select="current-grouping-key()"/>
                <result accel = "{$ACL}"> 
                    <xsl:for-each select="current-group()">
                        <xsl:copy-of select="name"/>
                    </xsl:for-each> 
                </result > 
            </xsl:for-each-group> 
            
        </results >   
    </xsl:template>
 
</xsl:stylesheet>