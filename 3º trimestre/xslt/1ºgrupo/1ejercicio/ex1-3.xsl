<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no"/>
	<xsl:template match="ciclos">
		<html>
			<ul>
				<xsl:apply-templates/>
			</ul>
		</html>
	</xsl:template>
	<xsl:template match="ciclo">
			<li><xsl:value-of select="nombre"/></li>
	</xsl:template>
</xsl:stylesheet>