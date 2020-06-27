<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/ies">
		<html>
			<h1><xsl:value-of select="@nombre"/></h1>
			<table>
				<tr>
					<th>Nombre del ciclo</th>
					<th>Año</th>
				</tr>
				<xsl:for-each select="ciclos/ciclo">
					<xsl:choose>
						<xsl:when test="decretoTitulo/@año &gt; 2009">
							<tr style="color: green">
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="decretoTitulo/@año"/></td>
							</tr>
						</xsl:when>
						<xsl:when test="decretoTitulo/@año &lt; 2009">
							<tr style="color: red">
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="decretoTitulo/@año"/></td>
							</tr>						
						</xsl:when>
						<xsl:otherwise>
							<tr style="color: blue">
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="decretoTitulo/@año"/></td>
							</tr>						
						</xsl:otherwise>
					</xsl:choose>							
				</xsl:for-each>								
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>