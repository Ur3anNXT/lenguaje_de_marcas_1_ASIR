<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no"/>
	<xsl:template match="ciclos">
		<html>
			<xsl:apply-templates/> /*Esto busca si hay una plantilla en uno de sus hijo*/
		</html>
	</xsl:template>
	<xsl:template match="ciclo">
			<p><xsl:value-of select="nombre"/></p>
	</xsl:template>
</xsl:stylesheet>