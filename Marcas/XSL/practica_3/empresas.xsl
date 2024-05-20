<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<?xml-stylesheet type="text/xsl" href="empresas3.xsl"?>
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <?xml-stylesheet type="text/xsl" href="empresas.css"?>
            </head>
            <body>
                <xsl:for-each select="empresas/empresa"> <!-- Cuerpo del bucle-->
                    <p class="rojo"><xsl:value-of select="nombre"/></p>
                    <p class="azul"><xsl:value-of select="web"/></p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>