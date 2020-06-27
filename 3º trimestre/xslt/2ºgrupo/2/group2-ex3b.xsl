<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/bib">
		<html>
			<table>
				<tr>
					<th>Precio del libro</th>
					<th>Título del libro</th>
					<th>Año de publicación</th>
				</tr>
				
				<xsl:for-each select="libro">
					<xsl:sort select="precio"/>
					<tr>
						<td><xsl:value-of select="precio"/></td>
						<td>
							<xsl:if test="precio&gt;100">
								<xsl:attribute name="style">background-color: red</xsl:attribute>
							</xsl:if>
							<xsl:value-of select="titulo"/>
						</td>
						<td>
							<xsl:attribute name="style">font-style: italic</xsl:attribute>
							<xsl:value-of select="@año"/>
						</td>
					</tr>					
				</xsl:for-each>				
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>