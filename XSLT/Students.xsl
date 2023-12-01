<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>
					<b>
						<xsl:value-of select="StudentScores/College" />
					</b>
				</h2>

				<table border="1">
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Score</th>
						<th>Grade</th>
					</tr>
					<xsl:foreach select="StudentScores/Student">
						<xsl:sort select="@id" data-type="number" />
						<tr>
							<td>
								<xsl:value-of select="FirstName" />
							</td>
							<td>
								<xsl:value-of select="LastName" />
							</td>
							<td>
								<xsl:value-of select="Score" />
							</td>
							<td>
								<xsl:choose>
									<xsl:when test="Score>=90">
										<b>A</b>
									</xsl:when>
									<xsl:when test="Score>=80">
										<b>B</b>
									</xsl:when>
									<xsl:when test="Score>=70">
										<b>C</b>
									</xsl:when>
									<xsl:when test="Score>=60">
										<b>D</b>
									</xsl:when>
									<xsl:otherwise>
										<b>Failure</b>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:foreach>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>