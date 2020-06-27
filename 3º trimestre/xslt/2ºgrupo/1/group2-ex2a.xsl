<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/bib">
		<html>
			<body>
				<h1>Lista de títulos de libros con precio menor a 100</h1>
				<ol>
					<xsl:apply-templates select="libro[precio&lt;100]"/>
				</ol>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="libro">
		<li>
			<xsl:value-of select="titulo"/>
		</li>
	</xsl:template>
</xsl:stylesheet>