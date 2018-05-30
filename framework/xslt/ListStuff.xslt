<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml"
    version="2.0">

    <xsl:output method="xml"/>
  
  <xsl:variable name="xmlDocuments" select="collection('./?select=structuredefinition*.xml')"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>A demonstration of the collection() function</title>
      </head>
      <body>
        <p>Number of XML documents: <xsl:value-of select="count($xmlDocuments)"/></p>

      </body>
    </html>
  </xsl:template>
  

</xsl:stylesheet>