<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/bib">
		<html>
			<table>
				<tr>
					<th>Título del libro</th>
					<th>Autores</th>
					<th>Editores</th>
				</tr>
				<xsl:for-each select="libro">
					<xsl:sort select="titulo"/>
					<tr>
						<td>
							<xsl:if test="precio&gt;100">
								<xsl:attribute name="style">color: red</xsl:attribute>
							</xsl:if>
							<xsl:value-of select="titulo"/>
							<xsl:if test="precio&gt;100">	(Caro)</xsl:if>				
						</td>
						<td>
							<xsl:for-each select="autor">
								<xsl:value-of select="nombre"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="apellido"/>
								<xsl:text> </xsl:text>
							</xsl:for-each>
						</td>
						<td>
							<xsl:for-each select="editor">
								<xsl:value-of select="nombre"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="apellido"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="afiliacion"/>
								<xsl:text> </xsl:text>
							</xsl:for-each>
						</td>
					</tr>					
				</xsl:for-each>	
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>