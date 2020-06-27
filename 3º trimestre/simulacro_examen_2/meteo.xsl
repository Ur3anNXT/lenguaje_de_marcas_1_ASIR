<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/meteo">
      <hmtl>
        <body>
            <p>Registro de la temperatura en el dia: <xsl:value-of select="fecha"/> a las <xsl:value-of select="hora"/></p>
           
            <table border="1px">
                 <tr>
                    <td>nombre</td>
                    <td>temperatura</td>
                    <td>humedad</td>
                    <td>viento</td>
                    <td>precipitaciones</td>
                </tr>
                
                 <xsl:for-each select="ciudades/ciudad">
                    <xsl:sort select="temperatura" order="descending"/>
                     <xsl:call-template name="ciudades"/>
                </xsl:for-each>
             
            </table>
        </body>
      </hmtl>
      
    </xsl:template>
    <xsl:template name="ciudades">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td>
                <xsl:if test="temperatura&gt;35">
                    <xsl:attribute name="style">background-color: red</xsl:attribute>
                </xsl:if>
                 <xsl:value-of select="temperatura"/>
            </td>
            <td><xsl:value-of select="humedad"/></td>
            <td><xsl:value-of select="viento"/></td>
            <td><xsl:value-of select="precipitaciones"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
