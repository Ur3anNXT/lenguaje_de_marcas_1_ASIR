<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="ciclo">		
		<xsl:value-of select="nombre"/>
	</xsl:template>
</xsl:stylesheet>