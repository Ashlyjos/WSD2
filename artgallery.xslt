<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<html>
            <head>
                <style>
                .Lists
                {
                margin-left:auto;
                margin-right:auto;
                }
            div
            {
                text-align:center;
                width:48%;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">ART GALLERY</h1>
                <h2 style="text-align:center;">Welcome to the world of art!</h2>
                <div class='Lists'>
                    
                    <table border="2">
                        <tr bgcolor="#ff99ff">
                            <th style="text-align:left">Art works</th>
                            <th style="text-align:left">Artists</th>
                            <th style="text-align:left">Size</th>
                            <th style="text-align:left">Price</th>
                            <th style="text-align:left">Stock available</th>
                        </tr>
                        <xsl:for-each select="arts/art">
                            <tr>
                                <td>
                                    <xsl:value-of select="artwork"/>
                                </td>
                                <td>
                                    <xsl:value-of select="artist"/>
                                </td>
                                <td>
                                    <xsl:value-of select="size"/>
                                </td>
                                <td>
                                    <xsl:value-of select="price"/>
                                </td>
                                <td>
                                    <xsl:value-of select="stock"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>
