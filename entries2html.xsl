<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="node_modules/grunt-jquery-content/tasks/jquery-xml/entries2html-base.xsl"/>

<xsl:template name="example-code">
&lt;!doctype html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
	&lt;meta charset="utf-8"&gt;
	&lt;meta name="viewport" content="width=device-width, initial-scale=1"&gt;
	&lt;title&gt;<xsl:value-of select="//entry/@name"/> demo&lt;/title&gt;
	&lt;link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css"&gt;
	&lt;script src="http://code.jquery.com/jquery-1.10.0.min.js"&gt;&lt;/script&gt;
	&lt;script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"&gt;&lt;/script&gt;<xsl:if test="css">
	&lt;style&gt;<xsl:value-of select="css/text()"/>	&lt;/style&gt;</xsl:if>
&lt;/head&gt;
&lt;body&gt;
<xsl:value-of select="html/text()"/>
<xsl:if test="code">
&lt;script&gt;<xsl:value-of select="code/text()"/>&lt;/script&gt;
</xsl:if>
&lt;/body&gt;
&lt;/html&gt;
</xsl:template>

</xsl:stylesheet>
