<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <link rel="stylesheet" type="text/css" href="lirbo.css"/>
            </head>
            <body>
                <xsl:value-of select="listalibros/libro/titulo"/>
                <xsl:value-of select="listalibros/libri/autor"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>