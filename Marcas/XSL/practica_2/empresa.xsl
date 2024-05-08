<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <link rel="stylesheet" type="text/css" href="empresa.css"/>

            </head>
            <body>
                <xsl:value-of select="empresas/empresa/nombre"/>
                <xsl:value-of select="empresas/empresa/web"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>