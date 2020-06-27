<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/catalogo">
		<html>
			<table>
				<tr>
					<th>Disco</th>
					<th>Año</th>
				</tr>
				<xsl:apply-templates select="cds/cd"/>
			</table>
		</html>
	</xsl:template>
	<xsl:template match="cd">
		<tr>
			<td>
				<xsl:choose>
					<xsl:when test="año&lt;2000">
						<xsl:attribute name="style">color: red</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="style">color: green</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:value-of select="titulo"/>
			</td>
			<td><xsl:value-of select="año"/></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>