<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xml:id="id_1" xmlns:nssrcmpr="http://www.oracle.com/2014/03/ics/schedule" xmlns:ns1="http://xmlns.oracle.com/cloud/adapter/file/WriteFileNames_REQUEST" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/file/WriteFileNames_REQUEST/types" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nsmpr0="http://xml.oracle.com/adapters/extension" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" nssrcmpr oraext xsd xp20 ora oracle-xsl-mapper xsi fn nsmpr0 xsl ignore01" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:nsmpr1="http://xmlns.oracle.com/cloud/list/pull" xmlns:nsmpr2="http://xmlns.oracle.com/cloud/adapter/ftp/readFilesFromDirectory_REQUEST/types" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr3="http://TargetNamespace.com/fileReference/WriteFileNames">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="XSD" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../processor_8/resourcegroup_9/ICSSchedule_1.xsd" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="schedule" namespace="http://www.oracle.com/2014/03/ics/schedule" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL" xml:id="id_37">
            <oracle-xsl-mapper:schema location="../../application_264/inbound_265/resourcegroup_266/readFilesFromDirectory_REQUEST.wsdl" xml:id="id_38"/>
            <oracle-xsl-mapper:rootElement name="ListFileResponse" namespace="http://xmlns.oracle.com/cloud/adapter/ftp/readFilesFromDirectory_REQUEST/types" xml:id="id_39"/>
            <oracle-xsl-mapper:param name="readFilesFromDirectory" xml:id="id_40"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_294/inbound_295/resourcegroup_296/WriteFileNames_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="Write" namespace="http://xmlns.oracle.com/cloud/adapter/file/WriteFileNames_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="DestinationPath" xml:id="id_45"/>
   <xsl:param name="readFilesFromDirectory" xml:id="id_48"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:Write xml:id="id_12">
         <nstrgmpr:OutboundFileHeaderType xml:id="id_53">
            <directory xml:id="id_54">
               <xsl:value-of select="$DestinationPath" xml:id="id_55"/>
            </directory>
         </nstrgmpr:OutboundFileHeaderType>
      <nsmpr3:FileName xml:id="id_56">
            <nsmpr3:Files xml:id="id_57">
               <nsmpr3:FileNames xml:id="id_58">
                  <xsl:value-of select="$readFilesFromDirectory/nsmpr2:ListFileResponse/nsmpr1:ListResponse/nsmpr1:FileList/nsmpr1:File/nsmpr1:filename" xml:id="id_59"/>
               </nsmpr3:FileNames>
            </nsmpr3:Files>
         </nsmpr3:FileName>
      </nstrgmpr:Write>
   </xsl:template>
</xsl:stylesheet>