<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no"/>
	<xsl:template match="/ies/ciclos/ciclo">
		<xsl:value-of select="nombre"/>
	</xsl:template>
</xsl:stylesheet>