<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="/">
	<fo:root>
	
		<fo:layout-master-set>
			<fo:simple-page-master page-height="290mm" page-width="210mm" margin="5mm 25mm 5mm 25mm" master-name="template">
				<fo:region-body margin="20mm 0mm 20mm 0mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
		
		
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			<fo:block position ="relative" text-align ="left" margin-bottom="5mm" padding-before="5mm">
					<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/su-logo.jpg)" />
						<fo:block position ="relative" text-align ="center" font-weight="bold" margin-bottom="20mm"
							font-family="Arial" font-size="15pt" padding-before="-25.0mm" color="black">
							Софийски университет „Св. Кл. Охридски”
							Факултет по математика и информатика
							<fo:block position ="relative" text-align ="right" margin-bottom="5mm" padding-before="-10mm" padding-right="5mm">
								<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/software.jpg)" />
							</fo:block>
						</fo:block>
			</fo:block>
				<fo:block position ="relative" text-align ="center" font-weight="bold" margin-bottom="50mm"
					font-family="Arial" font-size="40pt" padding-before="30mm" color="black">
					Каталог на ИТ фирмите в България
				</fo:block>
				<fo:block position ="relative" text-align ="right" font-weight="bold" margin-bottom="0mm"
					font-family="Arial" font-size="15pt" padding-before="30mm" color="black">
					Автори: Симона Любенова 62258, Ати Мускова 62308
				</fo:block>
			</fo:flow>
		</fo:page-sequence>
		
		<xsl:for-each select="catalogue/companies/company">
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
					
						<!--Display image-->
						<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
							<fo:external-graphic src="{unparsed-entity-uri(image/@href)}" ></fo:external-graphic>
						</fo:block>
						
						<!--Display company name-->
						<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
						padding-before="5mm" margin-left="2cm">
						<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/laptop.jpg)" />
							Име:
							<fo:inline position="relative" padding-left="7mm" font-weight="normal" font-size="12pt">
								<xsl:value-of select="companyName"/> 
							</fo:inline>
						</fo:block> 
						
						<!--Display company city-->
						<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
						padding-before="5mm" margin-left="2cm">
						<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/house.jpg)" />
							Град:
							<fo:inline position="relative" padding-left="6mm" font-weight="normal" font-size="12pt">
								<xsl:value-of select="location/city"/> 
							</fo:inline>
						</fo:block> 
					
						<!--Display company address if address is available-->
						<xsl:if test="location/address != ''">
							<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
							padding-before="5mm" margin-left="2cm">
							<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/location.jpg)" />
								Адрес:
								<fo:inline position="relative" padding-left="4mm" font-weight="normal" font-size="12pt">
									<xsl:value-of select="location/address"/> 
								</fo:inline>
							</fo:block>
						</xsl:if>
						
						<!--Display company phone if phone is available-->
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
						padding-before="5mm" margin-left="2cm">
						<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/phone.jpg)" />
							Телефон:
							<fo:inline position="relative" padding-left="2mm" font-weight="normal" font-size="12pt">
								<xsl:value-of select="contacts/phone"/> 
							</fo:inline>
							<fo:block/>
						
						<!--Display company email if email is available-->
						<xsl:if test="contacts/email != ''">
							<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/mail.jpg)" />
								Имейл:
								<fo:inline position="relative" padding-left="5.6mm" font-weight="normal" font-size="12pt">
									<xsl:value-of select="contacts/email"/> 
								</fo:inline>
								<fo:block/>
						</xsl:if>
						
						<!--Display company site if site is available-->
						<xsl:if test="contacts/site != ''">
							<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/site.jpg)" />
								Сайт:
								<fo:inline position="relative" padding-left="11mm" font-weight="normal" font-size="12pt">
									<xsl:value-of select="contacts/site"/> 
								</fo:inline>
								<fo:block/>
						</xsl:if>
						
						<!--Display company facebook if facebook is available-->
						<xsl:if test="contacts/facebook != ''">
							<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/facebook.jpg)" />
								Фейсбук:
								<fo:inline position="relative" padding-left="2mm" font-weight="normal" font-size="12pt">
									<xsl:value-of select="contacts/facebook"/> 
								</fo:inline>
								<fo:block/>
						</xsl:if>
						
						</fo:block>
					
						<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
						padding-before="5mm" margin-left="2cm">
						<fo:external-graphic  src="url(file:/C:/Users/Simona/Desktop/XML_Project/images/id.jpg)" />
							ЕИК:
							<fo:inline position="relative" padding-left="10.9mm" font-weight="normal" font-size="12pt">
								<xsl:value-of select="UID"/> 
							</fo:inline>
						</fo:block> 
					
						<!--Display company description if description is available-->
						<xsl:if test="description != ''">
							<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
							padding-before="5mm" margin-left="2cm">
								Описание:
								<fo:block/>
								<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="12pt">
									<xsl:value-of select="description"/> 
								</fo:inline>
							</fo:block> 
						</xsl:if>
					
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
		</xsl:for-each>
		

	</fo:root>

</xsl:template>

</xsl:stylesheet>
