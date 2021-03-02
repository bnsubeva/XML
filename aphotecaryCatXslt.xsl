<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/> 
  
  <xsl:template match="/">
    <html>
	<head>
	<title>Каталог на Аптека</title>

	<link rel="stylesheet" type="text/css" href="Astyle.css" />
	</head>
 
	<body>
	<h1>Каталог на аптека</h1>
 
    <a href="#aphotecaryContainer">
	<button class="button" onclick="">
			Продукти
   </button>
   </a>
   <a href="#type">
	<button class="button">
			Типове
  	</button>
	</a>
    </body></html>
	
	 <div id="aphotecaryContainer">
    	<xsl:for-each select="aphotecary/aphotecaryList/product/Information[id &lt;10]">
				 

				<div style="color:white;" class="aphotecary">
				
					<img src="images/{id}.jpg"/>

					<p id="aphotecaryName"><xsl:value-of select="name"/></p>
					
					<div id="productInfo">
						<p id="label" >Име:</p>
						<p><xsl:value-of select="name"/></p>
						<p id="label">Цена:</p>
						<p><xsl:value-of select="price"/></p>
						<p id="label">Забележки:</p>
						<p><xsl:value-of select="comments"/></p>
						<p id="label">Разфасовка:</p>
						<p><xsl:value-of select="quantity"/></p>
						
					</div>
					 <div id="extraInfo">
						<p id="label" >Описание:</p>
						<p><xsl:value-of select="description"/></p>
					</div>
					<div id="extraInfo2">
					<p id="label" >Състав:</p>
					<p><xsl:value-of select="composition"/></p>
					<p id="label" >Инструкции:</p>
						<p><xsl:value-of select="instructions"/></p>
					</div>
						 
				</div> 	
			 </xsl:for-each>
			 
			 
		<div style="color:white;" id="type">
		<xsl:for-each select="aphotecary/typeList/typeInfo/type">
				<div id="extraInfo">
					<p ><xsl:value-of select="@typeRef"/></p>	 
				</div> 
		</xsl:for-each>
		<div id="extraInfo">
        <xsl:for-each select="aphotecary/aphotecaryList/product/Information">
			<xsl:if test="typeId=10">
			 <p><xsl:value-of select="name"/></p>
			</xsl:if>
		</xsl:for-each>
		</div>
		
		<div id="extraInfo">
		<xsl:for-each select="aphotecary/aphotecaryList/product/Information">
			<xsl:if test="typeId=20">
			 <p><xsl:value-of select="name"/></p>
			</xsl:if>
		</xsl:for-each>
		</div>
		
		<div id="extraInfo">
		<xsl:for-each select="aphotecary/aphotecaryList/product/Information">
			<xsl:if test="typeId=30">
			 <p><xsl:value-of select="name"/></p>
			</xsl:if>
		</xsl:for-each>
		</div>
		
	 </div>
		 
  	</div>
  
  </xsl:template>
    
</xsl:stylesheet>