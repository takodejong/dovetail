<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xj="http://camel.apache.org/component/xj"
                exclude-result-prefixes="xj">

    <!-- See: https://camel.apache.org/components/4.4.x/xj-component.html -->

    <xsl:output omit-xml-declaration="no" encoding="UTF-8" method="xml" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="personalnumber">
        <xsl:element name="{local-name()}">
            <xsl:attribute name="xj:type">
                <xsl:value-of select="'int'"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="active|needsWater">
        <xsl:element name="{local-name()}">
            <xsl:attribute name="xj:type">
                <xsl:value-of select="'boolean'"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="ranking">
        <xsl:element name="{local-name()}">
            <xsl:attribute name="xj:type">
                <xsl:value-of select="'float'"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="roles">
        <xsl:element name="{local-name()}">
            <xsl:attribute name="xj:type">
                <xsl:value-of select="'array'"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="*[normalize-space(text()) = 'null']">
        <xsl:element name="{local-name()}">
            <xsl:attribute name="xj:type">
                <xsl:value-of select="'null'"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>