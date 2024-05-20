<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <link rel="stylesheet" type="text/css" href="empresas.css"/>
            </head>
            <body>
                <xsl:for-each select="empresas/empresa">
                    <xsl:value-of select="nombre"/>
                    <xsl:value-of select="web"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>