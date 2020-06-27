<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/bib">
		<html>
			<body>
				<h1>Lista de títulos de libros con precio menor a 100</h1>
				<ol>
					<xsl:for-each select="libro">
						<xsl:if test="precio&lt;100">
							<li>
								<xsl:value-of select="titulo"/>
							</li>
						</xsl:if>						
					</xsl:for-each>
				</ol>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>