<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <link rel="stylesheet" type="text/css" href="libros.css"/>
            </head>
            <body>
                <xsl:for-each select="listalibros/libro"> 
                    <p class="titulo"><xsl:value-of select="titulo"/></p>
                    <p class="autor"><xsl:value-of select="autor"/></p>
                </xsl:for-each> 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
