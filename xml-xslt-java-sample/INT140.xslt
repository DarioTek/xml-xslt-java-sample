<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:wd="urn:com.workday.report/dm04051_INT140" 
xmlns:xtt="urn:com.workday/xtt"
xmlns:etv="urn:com.workday/etv">

<xtt:class xtt:name="employeeIDClass" xtt:fixedLength="11" xtt:align="left" xtt:paddingCharacter="*"/> 
<xtt:class xtt:name="bankNameClass" xtt:fixedLength="40" xtt:align="left" xtt:paddingCharacter="*"/>
    
    <xsl:output method="text"/>
    
	<xsl:template match="/">		
		<xsl:for-each select="/wd:Report_Data/wd:Report_Entry">			
			<xsl:text>BAN</xsl:text>			
			<Employee_ID xtt:class="employeeIDClass"> 
				<xsl:value-of select="wd:Employee_ID"/> 
			</Employee_ID>			
			<Primary_Bank_Name xtt:class="bankNameClass">
				<xsl:value-of select="wd:dm04051_Primary_Bank_Name"/>
			</Primary_Bank_Name>
			<xsl:value-of select="wd:dm04051_Full_Name"/>
			<xsl:value-of select="wd:dm04051_Primary_Bank_Account_Number"/>
			<xsl:value-of select="wd:dm04051_Primary_Bank_ID"/>
			<xsl:text>&#xa;</xsl:text>
		</xsl:for-each>		
	</xsl:template>
</xsl:stylesheet>