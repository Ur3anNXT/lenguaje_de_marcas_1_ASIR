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
				<xsl:apply-templates/>
			</table>
		</html>
	</xsl:template>
	<xsl:template match="ciclos/ciclo">
		<!-- "choose" abre un <tr> distinto dependiendo de la fecha del decreto -->
		<xsl:choose>
			<xsl:when test="decretoTitulo/@año &gt; '2009'">
				<xsl:text disable-output-escaping="yes">&lt;tr style="color: green"&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="decretoTitulo/@año &lt; '2009'">
				<xsl:text disable-output-escaping="yes">&lt;tr style="color: red"&gt;</xsl:text>
			</xsl:when>			
			<xsl:otherwise>
				<xsl:text disable-output-escaping="yes">&lt;tr style="color: blue"&gt;</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
			
			<td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="decretoTitulo/@año"/></td>
		<xsl:text disable-output-escaping="yes">&lt;/tr&gt;</xsl:text>
	</xsl:template>
</xsl:stylesheet>