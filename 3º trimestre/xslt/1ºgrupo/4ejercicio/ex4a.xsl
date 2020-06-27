<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<ol>
				<xsl:apply-templates select="ies/ciclos/ciclo">
					<xsl:sort select="nombre" order="descending"/>
				</xsl:apply-templates>
			</ol>
		</html>
	</xsl:template>
	<xsl:template match="ciclo">
			<li> <xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>) </li>
	</xsl:template>
</xsl:stylesheet>