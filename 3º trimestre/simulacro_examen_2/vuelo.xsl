<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/vuelos">
      <hmtl>
        <body>
        <h1>Vuelos retrasados</h1>
        <ul>
            <xsl:attribute name="style">font-family:verdana</xsl:attribute>
            <xsl:for-each select="vuelo">
                <xsl:if test="retrasado">
                            <li>
                                <xsl:attribute name="style">color:blue</xsl:attribute>
                                <xsl:value-of select="aerolinea"/>  
                            </li>
                            <li>
                                <xsl:attribute name="style">color:green</xsl:attribute>
                                <xsl:value-of select="origen"/>
                            </li>
                            <li>
                                <xsl:attribute name="style">color:orange</xsl:attribute>
                                <xsl:value-of select="destino"/>
                            </li>
                            <li>
                                 <xsl:attribute name="style">color:red</xsl:attribute>
                                <xsl:value-of select="puerta"/>    
                            </li>
                            <li>
                                <xsl:attribute name="style">color:pink</xsl:attribute>
                                <xsl:value-of select="hora_salida"/>  
                            </li>
                            <li>
                                 <xsl:attribute name="style">color:purple</xsl:attribute>
                                <xsl:value-of select="hora_llegada"/>    
                            </li>
                            <li>
                                 <xsl:attribute name="style">color:brown</xsl:attribute>
                                <xsl:value-of select="retrasado"/>    
                            </li>
                </xsl:if>
            </xsl:for-each>
        </ul>
        <h1>Vuelos sin retraso</h1>
        <ul>
            <xsl:for-each select="vuelo">
               <xsl:choose>
                   <xsl:when test="retrasado"> </xsl:when>
                   <xsl:otherwise>
                            <li><xsl:value-of select="aerolinea"/></li>
                            <li><xsl:value-of select="origen"/></li>
                            <li><xsl:value-of select="destino"/></li>
                            <li><xsl:value-of select="puerta"/></li>
                            <li><xsl:value-of select="hora_salida"/></li>
                            <li><xsl:value-of select="hora_llegada"/></li>
                   </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
        </ul>
        </body>
      </hmtl>
    </xsl:template>   
</xsl:stylesheet>