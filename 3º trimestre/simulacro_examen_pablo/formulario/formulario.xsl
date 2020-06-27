<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/formulario">
        <html>
            <body>
                <h1>Datos deportivos</h1>
                <form>
                        <xsl:for-each select="/formulario/campo"> <!-- Aqui tengo el bucle que sirve para que salgan todos los campos -->
                           <xsl:sort order="ascending"/> <!-- Sort es para poder ordenar de forma alfabetica en mi caso es ascending para sea a-z-->
                           <xsl:choose> <!-- Con esto pondre que una condicion sea para el sexo y sino pues tendra que poner un cajon de texto -->
                               <xsl:when test=".='Sexo'">
                                       <legend><xsl:value-of select="."/></legend>
                                       <input type="radio" name="gender"/>
                                       <label>Mujer</label>
                                        <br/>
                                        <input type="radio" name="gender"/>
                                       <label>Hombre</label>
                                    <br/>
                                    <br/>
                               </xsl:when>
                               <xsl:otherwise>
                                   <xsl:value-of select="."/>
                                   <br/>
                                    <br/>
                                    <input type="text"/>
                                    <br/>
                                    <br/>
                               </xsl:otherwise>
                           </xsl:choose>
                        </xsl:for-each>
                </form>
            </body>
        </html>
	</xsl:template>

</xsl:stylesheet>