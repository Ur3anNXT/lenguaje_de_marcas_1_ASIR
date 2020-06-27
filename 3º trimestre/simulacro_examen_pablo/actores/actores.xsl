<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/actores">
        <html>
            <body>
                <h1>Los mejores actores del mundo</h1>
                <table border="1px">
                    <tr>
                        <th>Nombre</th>
                        <th>Nacionalidad</th>
                        <th>Oscars</th>
                        <th>Globos de Oro</th>
                    </tr>
                    <xsl:for-each select="actor"> <!-- He tenido que poner tres  bucles ya que con uno no vale y no se pueden anidar los if aunque pienso que dichos bucles se podrian cambiar por templates  -->
                           
                                <xsl:if test="premios/oscars > 0">
                                       <xsl:call-template name="columnas-filas"/>
                                </xsl:if>
                           
                    </xsl:for-each>
                     <xsl:for-each select="actor">
                                <xsl:if test="premios/oscars = 0 and premios/globos > 0">
                                        <xsl:call-template name="columnas-filas"/>
                                </xsl:if>
                    </xsl:for-each>
                     <xsl:for-each select="actor">
                           
                                <xsl:if test="premios/globos = 0 and premios/globos = 0">
                                        <xsl:call-template name="columnas-filas"/>
                                </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="columnas-filas">
         <tr>                                    
             <td>
                 <xsl:value-of select="nombre"/>
             </td>
             <td>
                 <xsl:value-of select="nacionalidad"/>
            </td>
            <td>
                 <xsl:value-of select="premios/oscars"/>
            </td>
            <td>
                 <xsl:value-of select="premios/globos"/>
            </td>
      </tr>
    </xsl:template>

</xsl:stylesheet>