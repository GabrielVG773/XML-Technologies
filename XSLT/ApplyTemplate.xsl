<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<b>Order Id:</b>
				<xsl:value-of select="/Order/@id"></xsl:value-of>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="CustomerName">
		Customer Name:
		<xsl:value-of select="."></xsl:value-of>
	</xsl:template>
	<xsl:template match="Item">
		Item Name:
		<xsl:value-of select="ItemName"></xsl:value-of>
		Item Price:
		<xsl:value-of select="Price"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>