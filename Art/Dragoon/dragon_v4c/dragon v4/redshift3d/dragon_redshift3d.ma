//Maya ASCII 2016R2 scene
//Name: dragon_redshift3d.ma
//Last modified: Tue, Jun 12, 2018 11:08:02 AM
//Codeset: 1252
file -rdi 1 -ns "dragon_rig_v4" -rfn "dragon_rig_v4RN" -op "v=0;" -typ "mayaAscii"
		 "F:/EVERYDAY 2/dragon v2/dragon v4//dragon_rig_v4.ma";
file -r -ns "dragon_rig_v4" -dr 1 -rfn "dragon_rig_v4RN" -op "v=0;" -typ "mayaAscii"
		 "F:/EVERYDAY 2/dragon v2/dragon v4//dragon_rig_v4.ma";
requires maya "2016R2";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016R2.0 - 3.13.1.11 ";
requires "OpenEXRLoader" "2012";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftSubSurfaceScatter" -nodeType "RedshiftDomeLight"
		 -nodeType "RedshiftNormalMap" -nodeType "RedshiftDisplacement" -nodeType "RedshiftMaterial"
		 "redshift4maya" "2.5.40";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2017.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2";
fileInfo "cutIdentifier" "201603022110-988944-2";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "D95630C9-4676-C9AE-66A9-3CAC179BF5A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1378.6176556439584 407.09680656767745 1608.6156630295882 ;
	setAttr ".r" -type "double3" -3.9383527296000267 43.000000000000433 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "828CCD87-4453-0EF0-32F9-EF8750404A2A";
	setAttr -k off ".v" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 55;
	setAttr ".ncp" 3;
	setAttr ".fcp" 10000000;
	setAttr ".coi" 1864.530827363855;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 5 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -s -n "top";
	rename -uid "01C65028-46C4-6C3A-A761-A99C7DD61913";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8C84D7BB-41AF-D745-F38E-6F92E8BB13AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4A7B476D-48D3-5DE7-02FF-6184AE13FCD1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D0415DFB-4876-86A0-73F2-89A55CF630A3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "55E19FA2-458B-104E-A2F4-F48589350D38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3ECA4EF0-49C6-E93F-329B-12B238FC1398";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "rsDomeLight1";
	rename -uid "6CA1C1E3-4FFC-96BA-D3AB-CE82A7B97F19";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode RedshiftDomeLight -n "rsDomeLightShape1" -p "rsDomeLight1";
	rename -uid "A3E7AE01-4DA7-DA42-48ED-A68371A812F0";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".viewportResolution" 1024;
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//redshift3d/hdr.hdr";
	setAttr ".background_enable" no;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "BF190AA0-4B1C-C999-DB18-9194B9700B80";
	setAttr -s 2 ".va";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "4C56CAEF-41AE-C5DB-290F-EF827799AD6D";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "AA1DA200-4A74-98CA-5DDC-CBB7D894EA10";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "9A7247A5-4F79-F636-AE87-2A92DF27FDB2";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5552B246-433E-7847-D425-6BAF70D0FDB9";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B7305F95-4EAC-2F1A-49F4-E7B23CA6AB81";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0A2D5985-4970-1AA6-4D57-22AA95B5F819";
createNode displayLayerManager -n "layerManager";
	rename -uid "E2677F1C-4063-2DBF-92CE-CCBC886167BC";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "FE896BFC-4A75-2FC0-F5AD-1FB0E38EBC0E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6699810F-47EA-111A-AC3B-2B8306969EB0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A5A8BB22-43E4-9008-24E7-0CB6BDD1AE04";
	setAttr ".g" yes;
createNode reference -n "dragon_rig_v4RN";
	rename -uid "91FB72B4-4960-C8BB-C42A-BFAEF2907AA6";
	setAttr -s 353 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"dragon_rig_v4RN"
		"dragon_rig_v4RN" 0
		"dragon_rig_v4RN" 733
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:IKSystem|dragon_rig_v4:IKHandle|dragon_rig_v4:IKSplineHandle_M" 
		"rotate" " -type \"double3\" 89.999999767902324 88.704701998528776 -90.000000003346031"
		
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine37|dragon_rig_v4:spineShape37" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine37|dragon_rig_v4:spineShape37" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine38|dragon_rig_v4:spineShape38" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine38|dragon_rig_v4:spineShape38" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Body|dragon_rig_v4:BodyShape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Body|dragon_rig_v4:BodyShape" 
		"rsEnableDisplacement" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Tongue_1|dragon_rig_v4:Tongue_1Shape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Wings|dragon_rig_v4:WingsShape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Teeth_upper|dragon_rig_v4:Teeth_upperShape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Teeth_lower|dragon_rig_v4:Teeth_lowerShape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Eye_Left|dragon_rig_v4:Eye_LeftShape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Eye_Right|dragon_rig_v4:Eye_RightShape" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine1|dragon_rig_v4:spineShape1" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine1|dragon_rig_v4:spineShape1" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine2|dragon_rig_v4:spineShape2" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine2|dragon_rig_v4:spineShape2" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine17|dragon_rig_v4:spineShape17" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine17|dragon_rig_v4:spineShape17" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine18|dragon_rig_v4:spineShape18" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine18|dragon_rig_v4:spineShape18" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine64|dragon_rig_v4:spineShape64" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine64|dragon_rig_v4:spineShape64" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine65|dragon_rig_v4:spineShape65" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine65|dragon_rig_v4:spineShape65" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine66|dragon_rig_v4:spineShape66" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine66|dragon_rig_v4:spineShape66" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine67|dragon_rig_v4:spineShape67" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine67|dragon_rig_v4:spineShape67" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine68|dragon_rig_v4:spineShape68" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine68|dragon_rig_v4:spineShape68" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine69|dragon_rig_v4:spineShape69" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine69|dragon_rig_v4:spineShape69" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine71|dragon_rig_v4:spineShape71" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine71|dragon_rig_v4:spineShape71" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine72|dragon_rig_v4:spineShape72" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine72|dragon_rig_v4:spineShape72" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine73|dragon_rig_v4:spineShape73" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine73|dragon_rig_v4:spineShape73" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine74|dragon_rig_v4:spineShape74" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine74|dragon_rig_v4:spineShape74" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine75|dragon_rig_v4:spineShape75" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine75|dragon_rig_v4:spineShape75" 
		"rsEnableSubdivision" " 1"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine76|dragon_rig_v4:spineShape76" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine76|dragon_rig_v4:spineShape76" 
		"rsEnableSubdivision" " 1"
		2 "dragon_rig_v4:geo" "displayType" " 0"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null84|dragon_rig_v4:spine118|dragon_rig_v4:spineShape118.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null157|dragon_rig_v4:spine107|dragon_rig_v4:spineShape107.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null72|dragon_rig_v4:spine29|dragon_rig_v4:spineShape29.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null145|dragon_rig_v4:spine132|dragon_rig_v4:spineShape132.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null147|dragon_rig_v4:spine130|dragon_rig_v4:spineShape130.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null7|dragon_rig_v4:spine90|dragon_rig_v4:spineShape90.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine71|dragon_rig_v4:spineShape71.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null115|dragon_rig_v4:spine159|dragon_rig_v4:spineShape159.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null44|dragon_rig_v4:spine9|dragon_rig_v4:spineShape9.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine64|dragon_rig_v4:spineShape64.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null124|dragon_rig_v4:spine162|dragon_rig_v4:spineShape162.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null150|dragon_rig_v4:spine133|dragon_rig_v4:spineShape133.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null158|dragon_rig_v4:spine46|dragon_rig_v4:spineShape46.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null1|dragon_rig_v4:spine96|dragon_rig_v4:spineShape96.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine102|dragon_rig_v4:spineShape102.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null127|dragon_rig_v4:spine157|dragon_rig_v4:spineShape157.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null39|dragon_rig_v4:spine45|dragon_rig_v4:spineShape45.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null38|dragon_rig_v4:spine3|dragon_rig_v4:spineShape3.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null35|dragon_rig_v4:spine62|dragon_rig_v4:spineShape62.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine94|dragon_rig_v4:spineShape94.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null19|dragon_rig_v4:spine87|dragon_rig_v4:spineShape87.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null66|dragon_rig_v4:spine52|dragon_rig_v4:spineShape52.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null91|dragon_rig_v4:spine127|dragon_rig_v4:spineShape127.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null65|dragon_rig_v4:spine49|dragon_rig_v4:spineShape49.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine82|dragon_rig_v4:spineShape82.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null139|dragon_rig_v4:spine100|dragon_rig_v4:spineShape100.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine145|dragon_rig_v4:spineShape145.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null94|dragon_rig_v4:spine122|dragon_rig_v4:spineShape122.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null46|dragon_rig_v4:spine6|dragon_rig_v4:spineShape6.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Teeth_upper|dragon_rig_v4:Teeth_upperShape.instObjGroups" 
		"dragon_rig_v4:blinn5SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Teeth_lower|dragon_rig_v4:Teeth_lowerShape.instObjGroups" 
		"dragon_rig_v4:blinn5SG.dagSetMembers" "-na"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null146|dragon_rig_v4:spine146|dragon_rig_v4:spineShape146.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine143|dragon_rig_v4:spineShape143.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine31|dragon_rig_v4:spineShape31.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine16|dragon_rig_v4:spineShape16.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null75|dragon_rig_v4:spine140|dragon_rig_v4:spineShape140.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null128|dragon_rig_v4:spine163|dragon_rig_v4:spineShape163.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine1|dragon_rig_v4:spineShape1.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null60|dragon_rig_v4:spine50|dragon_rig_v4:spineShape50.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null50|dragon_rig_v4:spine24|dragon_rig_v4:spineShape24.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null43|dragon_rig_v4:spine139|dragon_rig_v4:spineShape139.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null18|dragon_rig_v4:spine113|dragon_rig_v4:spineShape113.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine79|dragon_rig_v4:spineShape79.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null117|dragon_rig_v4:spine151|dragon_rig_v4:spineShape151.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null89|dragon_rig_v4:spine57|dragon_rig_v4:spineShape57.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null156|dragon_rig_v4:spine109|dragon_rig_v4:spineShape109.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null24|dragon_rig_v4:spine39|dragon_rig_v4:spineShape39.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null28|dragon_rig_v4:spine81|dragon_rig_v4:spineShape81.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Eye_Right|dragon_rig_v4:Eye_RightShape.instObjGroups" 
		"dragon_rig_v4:blinn3SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Eye_Left|dragon_rig_v4:Eye_LeftShape.instObjGroups" 
		"dragon_rig_v4:blinn3SG.dagSetMembers" "-na"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null142|dragon_rig_v4:spine108|dragon_rig_v4:spineShape108.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null48|dragon_rig_v4:spine5|dragon_rig_v4:spineShape5.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null78|dragon_rig_v4:spine22|dragon_rig_v4:spineShape22.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine77|dragon_rig_v4:spineShape77.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null40|dragon_rig_v4:spine8|dragon_rig_v4:spineShape8.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine12|dragon_rig_v4:spineShape12.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null88|dragon_rig_v4:spine124|dragon_rig_v4:spineShape124.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null68|dragon_rig_v4:spine34|dragon_rig_v4:spineShape34.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null59|dragon_rig_v4:spine13|dragon_rig_v4:spineShape13.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null64|dragon_rig_v4:spine48|dragon_rig_v4:spineShape48.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine141|dragon_rig_v4:spineShape141.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null83|dragon_rig_v4:spine55|dragon_rig_v4:spineShape55.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null118|dragon_rig_v4:spine153|dragon_rig_v4:spineShape153.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null55|dragon_rig_v4:spine33|dragon_rig_v4:spineShape33.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null144|dragon_rig_v4:spine142|dragon_rig_v4:spineShape142.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null97|dragon_rig_v4:spine58|dragon_rig_v4:spineShape58.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null47|dragon_rig_v4:spine137|dragon_rig_v4:spineShape137.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null31|dragon_rig_v4:spine86|dragon_rig_v4:spineShape86.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null148|dragon_rig_v4:spine128|dragon_rig_v4:spineShape128.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine64|dragon_rig_v4:spineShape64.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine67|dragon_rig_v4:spineShape67.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine66|dragon_rig_v4:spineShape66.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine65|dragon_rig_v4:spineShape65.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine69|dragon_rig_v4:spineShape69.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine72|dragon_rig_v4:spineShape72.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine68|dragon_rig_v4:spineShape68.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine71|dragon_rig_v4:spineShape71.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine84|dragon_rig_v4:spineShape84.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine82|dragon_rig_v4:spineShape82.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine114|dragon_rig_v4:spineShape114.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine80|dragon_rig_v4:spineShape80.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine70|dragon_rig_v4:spineShape70.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null7|dragon_rig_v4:spine90|dragon_rig_v4:spineShape90.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine92|dragon_rig_v4:spineShape92.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine94|dragon_rig_v4:spineShape94.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine38|dragon_rig_v4:spineShape38.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null155|dragon_rig_v4:spine105|dragon_rig_v4:spineShape105.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null158|dragon_rig_v4:spine46|dragon_rig_v4:spineShape46.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine143|dragon_rig_v4:spineShape143.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine145|dragon_rig_v4:spineShape145.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null159|dragon_rig_v4:spine20|dragon_rig_v4:spineShape20.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null156|dragon_rig_v4:spine109|dragon_rig_v4:spineShape109.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null157|dragon_rig_v4:spine107|dragon_rig_v4:spineShape107.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine74|dragon_rig_v4:spineShape74.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine76|dragon_rig_v4:spineShape76.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine75|dragon_rig_v4:spineShape75.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine73|dragon_rig_v4:spineShape73.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null125|dragon_rig_v4:spine161|dragon_rig_v4:spineShape161.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null124|dragon_rig_v4:spine162|dragon_rig_v4:spineShape162.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null123|dragon_rig_v4:spine156|dragon_rig_v4:spineShape156.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null120|dragon_rig_v4:spine155|dragon_rig_v4:spineShape155.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null116|dragon_rig_v4:spine59|dragon_rig_v4:spineShape59.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null121|dragon_rig_v4:spine160|dragon_rig_v4:spineShape160.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null134|dragon_rig_v4:spine101|dragon_rig_v4:spineShape101.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null133|dragon_rig_v4:spine99|dragon_rig_v4:spineShape99.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null118|dragon_rig_v4:spine153|dragon_rig_v4:spineShape153.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null126|dragon_rig_v4:spine60|dragon_rig_v4:spineShape60.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null119|dragon_rig_v4:spine119|dragon_rig_v4:spineShape119.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null115|dragon_rig_v4:spine159|dragon_rig_v4:spineShape159.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null132|dragon_rig_v4:spine135|dragon_rig_v4:spineShape135.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null130|dragon_rig_v4:spine103|dragon_rig_v4:spineShape103.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null128|dragon_rig_v4:spine163|dragon_rig_v4:spineShape163.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null127|dragon_rig_v4:spine157|dragon_rig_v4:spineShape157.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null117|dragon_rig_v4:spine151|dragon_rig_v4:spineShape151.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null152|dragon_rig_v4:spine147|dragon_rig_v4:spineShape147.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null153|dragon_rig_v4:spine129|dragon_rig_v4:spineShape129.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine102|dragon_rig_v4:spineShape102.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null149|dragon_rig_v4:spine144|dragon_rig_v4:spineShape144.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null148|dragon_rig_v4:spine128|dragon_rig_v4:spineShape128.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null146|dragon_rig_v4:spine146|dragon_rig_v4:spineShape146.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null138|dragon_rig_v4:spine134|dragon_rig_v4:spineShape134.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine98|dragon_rig_v4:spineShape98.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null144|dragon_rig_v4:spine142|dragon_rig_v4:spineShape142.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null142|dragon_rig_v4:spine108|dragon_rig_v4:spineShape108.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null145|dragon_rig_v4:spine132|dragon_rig_v4:spineShape132.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null147|dragon_rig_v4:spine130|dragon_rig_v4:spineShape130.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null143|dragon_rig_v4:spine106|dragon_rig_v4:spineShape106.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null151|dragon_rig_v4:spine131|dragon_rig_v4:spineShape131.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null150|dragon_rig_v4:spine133|dragon_rig_v4:spineShape133.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null141|dragon_rig_v4:spine104|dragon_rig_v4:spineShape104.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null139|dragon_rig_v4:spine100|dragon_rig_v4:spineShape100.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine12|dragon_rig_v4:spineShape12.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null55|dragon_rig_v4:spine33|dragon_rig_v4:spineShape33.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null60|dragon_rig_v4:spine50|dragon_rig_v4:spineShape50.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine15|dragon_rig_v4:spineShape15.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null64|dragon_rig_v4:spine48|dragon_rig_v4:spineShape48.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null68|dragon_rig_v4:spine34|dragon_rig_v4:spineShape34.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null58|dragon_rig_v4:spine10|dragon_rig_v4:spineShape10.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null66|dragon_rig_v4:spine52|dragon_rig_v4:spineShape52.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null59|dragon_rig_v4:spine13|dragon_rig_v4:spineShape13.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine16|dragon_rig_v4:spineShape16.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null69|dragon_rig_v4:spine36|dragon_rig_v4:spineShape36.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null67|dragon_rig_v4:spine30|dragon_rig_v4:spineShape30.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null65|dragon_rig_v4:spine49|dragon_rig_v4:spineShape49.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null62|dragon_rig_v4:spine11|dragon_rig_v4:spineShape11.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null61|dragon_rig_v4:spine51|dragon_rig_v4:spineShape51.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null56|dragon_rig_v4:spine35|dragon_rig_v4:spineShape35.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine141|dragon_rig_v4:spineShape141.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine1|dragon_rig_v4:spineShape1.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine2|dragon_rig_v4:spineShape2.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine18|dragon_rig_v4:spineShape18.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine17|dragon_rig_v4:spineShape17.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine79|dragon_rig_v4:spineShape79.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine112|dragon_rig_v4:spineShape112.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null15|dragon_rig_v4:spine91|dragon_rig_v4:spineShape91.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null14|dragon_rig_v4:spine83|dragon_rig_v4:spineShape83.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null13|dragon_rig_v4:spine111|dragon_rig_v4:spineShape111.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine110|dragon_rig_v4:spineShape110.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine93|dragon_rig_v4:spineShape93.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine77|dragon_rig_v4:spineShape77.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine88|dragon_rig_v4:spineShape88.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine78|dragon_rig_v4:spineShape78.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null1|dragon_rig_v4:spine96|dragon_rig_v4:spineShape96.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine37|dragon_rig_v4:spineShape37.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null44|dragon_rig_v4:spine9|dragon_rig_v4:spineShape9.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null41|dragon_rig_v4:spine7|dragon_rig_v4:spineShape7.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null48|dragon_rig_v4:spine5|dragon_rig_v4:spineShape5.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null49|dragon_rig_v4:spine19|dragon_rig_v4:spineShape19.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null43|dragon_rig_v4:spine139|dragon_rig_v4:spineShape139.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null42|dragon_rig_v4:spine47|dragon_rig_v4:spineShape47.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null40|dragon_rig_v4:spine8|dragon_rig_v4:spineShape8.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null38|dragon_rig_v4:spine3|dragon_rig_v4:spineShape3.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null50|dragon_rig_v4:spine24|dragon_rig_v4:spineShape24.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null52|dragon_rig_v4:spine136|dragon_rig_v4:spineShape136.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null54|dragon_rig_v4:spine14|dragon_rig_v4:spineShape14.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null53|dragon_rig_v4:spine21|dragon_rig_v4:spineShape21.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null51|dragon_rig_v4:spine138|dragon_rig_v4:spineShape138.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null45|dragon_rig_v4:spine4|dragon_rig_v4:spineShape4.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null47|dragon_rig_v4:spine137|dragon_rig_v4:spineShape137.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null46|dragon_rig_v4:spine6|dragon_rig_v4:spineShape6.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null39|dragon_rig_v4:spine45|dragon_rig_v4:spineShape45.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null84|dragon_rig_v4:spine118|dragon_rig_v4:spineShape118.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null81|dragon_rig_v4:spine56|dragon_rig_v4:spineShape56.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null71|dragon_rig_v4:spine28|dragon_rig_v4:spineShape28.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null79|dragon_rig_v4:spine116|dragon_rig_v4:spineShape116.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null77|dragon_rig_v4:spine25|dragon_rig_v4:spineShape25.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null83|dragon_rig_v4:spine55|dragon_rig_v4:spineShape55.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null73|dragon_rig_v4:spine26|dragon_rig_v4:spineShape26.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null72|dragon_rig_v4:spine29|dragon_rig_v4:spineShape29.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine32|dragon_rig_v4:spineShape32.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null80|dragon_rig_v4:spine61|dragon_rig_v4:spineShape61.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null78|dragon_rig_v4:spine22|dragon_rig_v4:spineShape22.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null75|dragon_rig_v4:spine140|dragon_rig_v4:spineShape140.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine31|dragon_rig_v4:spineShape31.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null76|dragon_rig_v4:spine23|dragon_rig_v4:spineShape23.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null85|dragon_rig_v4:spine126|dragon_rig_v4:spineShape126.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null74|dragon_rig_v4:spine27|dragon_rig_v4:spineShape27.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null82|dragon_rig_v4:spine117|dragon_rig_v4:spineShape117.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null35|dragon_rig_v4:spine62|dragon_rig_v4:spineShape62.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null32|dragon_rig_v4:spine42|dragon_rig_v4:spineShape42.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null27|dragon_rig_v4:spine95|dragon_rig_v4:spineShape95.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null30|dragon_rig_v4:spine115|dragon_rig_v4:spineShape115.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null18|dragon_rig_v4:spine113|dragon_rig_v4:spineShape113.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null28|dragon_rig_v4:spine81|dragon_rig_v4:spineShape81.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null29|dragon_rig_v4:spine85|dragon_rig_v4:spineShape85.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null23|dragon_rig_v4:spine40|dragon_rig_v4:spineShape40.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null31|dragon_rig_v4:spine86|dragon_rig_v4:spineShape86.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null36|dragon_rig_v4:spine44|dragon_rig_v4:spineShape44.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null24|dragon_rig_v4:spine39|dragon_rig_v4:spineShape39.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null19|dragon_rig_v4:spine87|dragon_rig_v4:spineShape87.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null37|dragon_rig_v4:spine63|dragon_rig_v4:spineShape63.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null33|dragon_rig_v4:spine41|dragon_rig_v4:spineShape41.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null21|dragon_rig_v4:spine89|dragon_rig_v4:spineShape89.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null20|dragon_rig_v4:spine97|dragon_rig_v4:spineShape97.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null34|dragon_rig_v4:spine43|dragon_rig_v4:spineShape43.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null110|dragon_rig_v4:spine150|dragon_rig_v4:spineShape150.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null108|dragon_rig_v4:spine148|dragon_rig_v4:spineShape148.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null107|dragon_rig_v4:spine158|dragon_rig_v4:spineShape158.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null105|dragon_rig_v4:spine54|dragon_rig_v4:spineShape54.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null91|dragon_rig_v4:spine127|dragon_rig_v4:spineShape127.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null96|dragon_rig_v4:spine121|dragon_rig_v4:spineShape121.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null88|dragon_rig_v4:spine124|dragon_rig_v4:spineShape124.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null97|dragon_rig_v4:spine58|dragon_rig_v4:spineShape58.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null90|dragon_rig_v4:spine125|dragon_rig_v4:spineShape125.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null86|dragon_rig_v4:spine53|dragon_rig_v4:spineShape53.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null92|dragon_rig_v4:spine120|dragon_rig_v4:spineShape120.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null89|dragon_rig_v4:spine57|dragon_rig_v4:spineShape57.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null94|dragon_rig_v4:spine122|dragon_rig_v4:spineShape122.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null114|dragon_rig_v4:spine149|dragon_rig_v4:spineShape149.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null113|dragon_rig_v4:spine154|dragon_rig_v4:spineShape154.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null111|dragon_rig_v4:spine152|dragon_rig_v4:spineShape152.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null95|dragon_rig_v4:spine123|dragon_rig_v4:spineShape123.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4:blinn4SG.dagSetMembers" "-na"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null107|dragon_rig_v4:spine158|dragon_rig_v4:spineShape158.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null77|dragon_rig_v4:spine25|dragon_rig_v4:spineShape25.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null69|dragon_rig_v4:spine36|dragon_rig_v4:spineShape36.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null52|dragon_rig_v4:spine136|dragon_rig_v4:spineShape136.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null121|dragon_rig_v4:spine160|dragon_rig_v4:spineShape160.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null113|dragon_rig_v4:spine154|dragon_rig_v4:spineShape154.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null82|dragon_rig_v4:spine117|dragon_rig_v4:spineShape117.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null79|dragon_rig_v4:spine116|dragon_rig_v4:spineShape116.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Tongue_1|dragon_rig_v4:Tongue_1Shape.instObjGroups" 
		"dragon_rig_v4:blinn6SG.dagSetMembers" "-na"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null90|dragon_rig_v4:spine125|dragon_rig_v4:spineShape125.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null111|dragon_rig_v4:spine152|dragon_rig_v4:spineShape152.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null152|dragon_rig_v4:spine147|dragon_rig_v4:spineShape147.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null29|dragon_rig_v4:spine85|dragon_rig_v4:spineShape85.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null80|dragon_rig_v4:spine61|dragon_rig_v4:spineShape61.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine78|dragon_rig_v4:spineShape78.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null45|dragon_rig_v4:spine4|dragon_rig_v4:spineShape4.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine69|dragon_rig_v4:spineShape69.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine66|dragon_rig_v4:spineShape66.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null133|dragon_rig_v4:spine99|dragon_rig_v4:spineShape99.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null141|dragon_rig_v4:spine104|dragon_rig_v4:spineShape104.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null13|dragon_rig_v4:spine111|dragon_rig_v4:spineShape111.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null108|dragon_rig_v4:spine148|dragon_rig_v4:spineShape148.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null58|dragon_rig_v4:spine10|dragon_rig_v4:spineShape10.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null32|dragon_rig_v4:spine42|dragon_rig_v4:spineShape42.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine18|dragon_rig_v4:spineShape18.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null51|dragon_rig_v4:spine138|dragon_rig_v4:spineShape138.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null123|dragon_rig_v4:spine156|dragon_rig_v4:spineShape156.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine93|dragon_rig_v4:spineShape93.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine32|dragon_rig_v4:spineShape32.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null153|dragon_rig_v4:spine129|dragon_rig_v4:spineShape129.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null21|dragon_rig_v4:spine89|dragon_rig_v4:spineShape89.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine110|dragon_rig_v4:spineShape110.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null14|dragon_rig_v4:spine83|dragon_rig_v4:spineShape83.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine112|dragon_rig_v4:spineShape112.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null15|dragon_rig_v4:spine91|dragon_rig_v4:spineShape91.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine75|dragon_rig_v4:spineShape75.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null53|dragon_rig_v4:spine21|dragon_rig_v4:spineShape21.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null74|dragon_rig_v4:spine27|dragon_rig_v4:spineShape27.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine37|dragon_rig_v4:spineShape37.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null81|dragon_rig_v4:spine56|dragon_rig_v4:spineShape56.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null42|dragon_rig_v4:spine47|dragon_rig_v4:spineShape47.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine70|dragon_rig_v4:spineShape70.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine2|dragon_rig_v4:spineShape2.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null49|dragon_rig_v4:spine19|dragon_rig_v4:spineShape19.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null159|dragon_rig_v4:spine20|dragon_rig_v4:spineShape20.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null20|dragon_rig_v4:spine97|dragon_rig_v4:spineShape97.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null116|dragon_rig_v4:spine59|dragon_rig_v4:spineShape59.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine88|dragon_rig_v4:spineShape88.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null86|dragon_rig_v4:spine53|dragon_rig_v4:spineShape53.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null138|dragon_rig_v4:spine134|dragon_rig_v4:spineShape134.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null33|dragon_rig_v4:spine41|dragon_rig_v4:spineShape41.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null67|dragon_rig_v4:spine30|dragon_rig_v4:spineShape30.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null134|dragon_rig_v4:spine101|dragon_rig_v4:spineShape101.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine84|dragon_rig_v4:spineShape84.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null119|dragon_rig_v4:spine119|dragon_rig_v4:spineShape119.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null41|dragon_rig_v4:spine7|dragon_rig_v4:spineShape7.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Wings|dragon_rig_v4:WingsShape.instObjGroups" 
		"dragon_rig_v4:blinn7SG.dagSetMembers" "-na"
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Wings_forSkinning|dragon_rig_v4:Wings_forSkinningShape.instObjGroups" 
		"dragon_rig_v4:blinn7SG.dagSetMembers" "-na"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null71|dragon_rig_v4:spine28|dragon_rig_v4:spineShape28.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null23|dragon_rig_v4:spine40|dragon_rig_v4:spineShape40.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null126|dragon_rig_v4:spine60|dragon_rig_v4:spineShape60.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine76|dragon_rig_v4:spineShape76.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null132|dragon_rig_v4:spine135|dragon_rig_v4:spineShape135.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine73|dragon_rig_v4:spineShape73.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null155|dragon_rig_v4:spine105|dragon_rig_v4:spineShape105.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine98|dragon_rig_v4:spineShape98.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null36|dragon_rig_v4:spine44|dragon_rig_v4:spineShape44.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null95|dragon_rig_v4:spine123|dragon_rig_v4:spineShape123.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null105|dragon_rig_v4:spine54|dragon_rig_v4:spineShape54.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine67|dragon_rig_v4:spineShape67.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine74|dragon_rig_v4:spineShape74.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine65|dragon_rig_v4:spineShape65.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine80|dragon_rig_v4:spineShape80.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine68|dragon_rig_v4:spineShape68.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null61|dragon_rig_v4:spine51|dragon_rig_v4:spineShape51.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null34|dragon_rig_v4:spine43|dragon_rig_v4:spineShape43.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null73|dragon_rig_v4:spine26|dragon_rig_v4:spineShape26.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine72|dragon_rig_v4:spineShape72.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine38|dragon_rig_v4:spineShape38.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null149|dragon_rig_v4:spine144|dragon_rig_v4:spineShape144.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null114|dragon_rig_v4:spine149|dragon_rig_v4:spineShape149.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null30|dragon_rig_v4:spine115|dragon_rig_v4:spineShape115.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null110|dragon_rig_v4:spine150|dragon_rig_v4:spineShape150.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine15|dragon_rig_v4:spineShape15.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null37|dragon_rig_v4:spine63|dragon_rig_v4:spineShape63.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Body|dragon_rig_v4:BodyShape.instObjGroups" 
		"dragon_rig_v4:blinn2SG.dagSetMembers" "-na"
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null120|dragon_rig_v4:spine155|dragon_rig_v4:spineShape155.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null130|dragon_rig_v4:spine103|dragon_rig_v4:spineShape103.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null151|dragon_rig_v4:spine131|dragon_rig_v4:spineShape131.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null92|dragon_rig_v4:spine120|dragon_rig_v4:spineShape120.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine92|dragon_rig_v4:spineShape92.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null96|dragon_rig_v4:spine121|dragon_rig_v4:spineShape121.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null56|dragon_rig_v4:spine35|dragon_rig_v4:spineShape35.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null85|dragon_rig_v4:spine126|dragon_rig_v4:spineShape126.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null62|dragon_rig_v4:spine11|dragon_rig_v4:spineShape11.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null76|dragon_rig_v4:spine23|dragon_rig_v4:spineShape23.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null54|dragon_rig_v4:spine14|dragon_rig_v4:spineShape14.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine114|dragon_rig_v4:spineShape114.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null27|dragon_rig_v4:spine95|dragon_rig_v4:spineShape95.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine17|dragon_rig_v4:spineShape17.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null143|dragon_rig_v4:spine106|dragon_rig_v4:spineShape106.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "dragon_rig_v4:blinn4SG.memberWireframeColor" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null125|dragon_rig_v4:spine161|dragon_rig_v4:spineShape161.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:memConAttach_R|dragon_rig_v4:memConOffset_R|dragon_rig_v4:memConSubtract_R|dragon_rig_v4:memCon_R.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[1]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:memConAttach_L|dragon_rig_v4:memConOffset_L|dragon_rig_v4:memConSubtract_L|dragon_rig_v4:memCon_L.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[2]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:Membrane_elbowAttach_R|dragon_rig_v4:Membrane_elbowOffset_R|dragon_rig_v4:Membrane_elbowSubtract_R|dragon_rig_v4:Membrane_elbow_R.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[3]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:Membrane_elbowAttach_L|dragon_rig_v4:Membrane_elbowOffset_L|dragon_rig_v4:Membrane_elbowSubtract_L|dragon_rig_v4:Membrane_elbow_L.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[4]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:MembranePinkyAttach_R|dragon_rig_v4:MembranePinkyOffset_R|dragon_rig_v4:MembranePinkySubtract_R|dragon_rig_v4:MembranePinky_R.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[5]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:MembranePinkyAttach_L|dragon_rig_v4:MembranePinkyOffset_L|dragon_rig_v4:MembranePinkySubtract_L|dragon_rig_v4:MembranePinky_L.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[6]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:MembraneMidAttach_R|dragon_rig_v4:MembraneMidOffset_R|dragon_rig_v4:MembraneMidSubtract_R|dragon_rig_v4:MembraneMid_R.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[7]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:MembraneMidAttach_L|dragon_rig_v4:MembraneMidOffset_L|dragon_rig_v4:MembraneMidSubtract_L|dragon_rig_v4:MembraneMid_L.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[8]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:MembraneIndexAttach_R|dragon_rig_v4:MembraneIndexOffset_R|dragon_rig_v4:MembraneIndexSubtract_R|dragon_rig_v4:MembraneIndex_R.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[9]" ""
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Main|dragon_rig_v4:MotionSystem|dragon_rig_v4:ClusterSystem|dragon_rig_v4:MembraneIndexAttach_L|dragon_rig_v4:MembraneIndexOffset_L|dragon_rig_v4:MembraneIndexSubtract_L|dragon_rig_v4:MembraneIndex_L.drawOverride" 
		"dragon_rig_v4RN.placeHolderList[10]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine37|dragon_rig_v4:spineShape37.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[11]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine37|dragon_rig_v4:spineShape37.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[12]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine38|dragon_rig_v4:spineShape38.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[13]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:spine38|dragon_rig_v4:spineShape38.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[14]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Body|dragon_rig_v4:BodyShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[15]" "dragon_rig_v4:blinn2SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Tongue_1|dragon_rig_v4:Tongue_1Shape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[16]" "dragon_rig_v4:blinn6SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Wings|dragon_rig_v4:WingsShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[17]" "dragon_rig_v4:blinn7SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Teeth_upper|dragon_rig_v4:Teeth_upperShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[18]" "dragon_rig_v4:blinn5SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Teeth_lower|dragon_rig_v4:Teeth_lowerShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[19]" "dragon_rig_v4:blinn5SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Eye_Left|dragon_rig_v4:Eye_LeftShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[20]" "dragon_rig_v4:blinn3SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Eye_Right|dragon_rig_v4:Eye_RightShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[21]" "dragon_rig_v4:blinn3SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine1|dragon_rig_v4:spineShape1.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[22]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine1|dragon_rig_v4:spineShape1.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[23]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine2|dragon_rig_v4:spineShape2.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[24]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine2|dragon_rig_v4:spineShape2.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[25]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine17|dragon_rig_v4:spineShape17.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[26]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine17|dragon_rig_v4:spineShape17.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[27]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine18|dragon_rig_v4:spineShape18.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[28]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine18|dragon_rig_v4:spineShape18.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[29]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine64|dragon_rig_v4:spineShape64.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[30]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine64|dragon_rig_v4:spineShape64.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[31]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine65|dragon_rig_v4:spineShape65.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[32]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine65|dragon_rig_v4:spineShape65.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[33]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine66|dragon_rig_v4:spineShape66.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[34]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine66|dragon_rig_v4:spineShape66.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[35]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine67|dragon_rig_v4:spineShape67.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[36]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine67|dragon_rig_v4:spineShape67.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[37]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine68|dragon_rig_v4:spineShape68.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[38]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine68|dragon_rig_v4:spineShape68.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[39]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine69|dragon_rig_v4:spineShape69.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[40]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine69|dragon_rig_v4:spineShape69.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[41]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine71|dragon_rig_v4:spineShape71.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[42]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine71|dragon_rig_v4:spineShape71.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[43]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine72|dragon_rig_v4:spineShape72.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[44]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine72|dragon_rig_v4:spineShape72.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[45]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine73|dragon_rig_v4:spineShape73.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[46]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine73|dragon_rig_v4:spineShape73.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[47]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine74|dragon_rig_v4:spineShape74.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[48]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine74|dragon_rig_v4:spineShape74.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[49]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine75|dragon_rig_v4:spineShape75.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[50]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine75|dragon_rig_v4:spineShape75.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[51]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine76|dragon_rig_v4:spineShape76.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[52]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Spines|dragon_rig_v4:spine76|dragon_rig_v4:spineShape76.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[53]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:Geometry|dragon_rig_v4:Wings_forSkinning|dragon_rig_v4:Wings_forSkinningShape.instObjGroups" 
		"dragon_rig_v4RN.placeHolderList[54]" "dragon_rig_v4:blinn7SG.dsm"
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null1|dragon_rig_v4:spine96|dragon_rig_v4:spineShape96.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[55]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null1|dragon_rig_v4:spine96|dragon_rig_v4:spineShape96.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[56]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine78|dragon_rig_v4:spineShape78.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[57]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine78|dragon_rig_v4:spineShape78.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[58]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine88|dragon_rig_v4:spineShape88.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[59]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null2|dragon_rig_v4:spine88|dragon_rig_v4:spineShape88.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[60]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine70|dragon_rig_v4:spineShape70.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[61]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine70|dragon_rig_v4:spineShape70.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[62]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine92|dragon_rig_v4:spineShape92.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[63]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null4|dragon_rig_v4:spine92|dragon_rig_v4:spineShape92.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[64]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine94|dragon_rig_v4:spineShape94.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[65]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine94|dragon_rig_v4:spineShape94.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[66]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine80|dragon_rig_v4:spineShape80.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[67]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null6|dragon_rig_v4:spine80|dragon_rig_v4:spineShape80.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[68]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null7|dragon_rig_v4:spine90|dragon_rig_v4:spineShape90.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[69]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null7|dragon_rig_v4:spine90|dragon_rig_v4:spineShape90.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[70]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine82|dragon_rig_v4:spineShape82.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[71]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine82|dragon_rig_v4:spineShape82.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[72]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine84|dragon_rig_v4:spineShape84.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[73]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine84|dragon_rig_v4:spineShape84.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[74]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine114|dragon_rig_v4:spineShape114.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[75]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null8|dragon_rig_v4:spine114|dragon_rig_v4:spineShape114.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[76]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine112|dragon_rig_v4:spineShape112.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[77]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine112|dragon_rig_v4:spineShape112.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[78]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine110|dragon_rig_v4:spineShape110.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[79]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null11|dragon_rig_v4:spine110|dragon_rig_v4:spineShape110.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[80]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null13|dragon_rig_v4:spine111|dragon_rig_v4:spineShape111.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[81]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null13|dragon_rig_v4:spine111|dragon_rig_v4:spineShape111.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[82]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null14|dragon_rig_v4:spine83|dragon_rig_v4:spineShape83.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[83]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null14|dragon_rig_v4:spine83|dragon_rig_v4:spineShape83.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[84]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null15|dragon_rig_v4:spine91|dragon_rig_v4:spineShape91.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[85]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null15|dragon_rig_v4:spine91|dragon_rig_v4:spineShape91.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[86]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine79|dragon_rig_v4:spineShape79.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[87]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine79|dragon_rig_v4:spineShape79.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[88]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine93|dragon_rig_v4:spineShape93.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[89]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine93|dragon_rig_v4:spineShape93.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[90]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine77|dragon_rig_v4:spineShape77.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[91]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null16|dragon_rig_v4:spine77|dragon_rig_v4:spineShape77.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[92]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null18|dragon_rig_v4:spine113|dragon_rig_v4:spineShape113.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[93]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null18|dragon_rig_v4:spine113|dragon_rig_v4:spineShape113.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[94]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null19|dragon_rig_v4:spine87|dragon_rig_v4:spineShape87.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[95]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null19|dragon_rig_v4:spine87|dragon_rig_v4:spineShape87.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[96]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null20|dragon_rig_v4:spine97|dragon_rig_v4:spineShape97.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[97]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null20|dragon_rig_v4:spine97|dragon_rig_v4:spineShape97.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[98]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null21|dragon_rig_v4:spine89|dragon_rig_v4:spineShape89.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[99]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null21|dragon_rig_v4:spine89|dragon_rig_v4:spineShape89.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[100]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null23|dragon_rig_v4:spine40|dragon_rig_v4:spineShape40.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[101]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null23|dragon_rig_v4:spine40|dragon_rig_v4:spineShape40.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[102]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null24|dragon_rig_v4:spine39|dragon_rig_v4:spineShape39.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[103]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null24|dragon_rig_v4:spine39|dragon_rig_v4:spineShape39.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[104]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null27|dragon_rig_v4:spine95|dragon_rig_v4:spineShape95.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[105]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null27|dragon_rig_v4:spine95|dragon_rig_v4:spineShape95.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[106]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null28|dragon_rig_v4:spine81|dragon_rig_v4:spineShape81.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[107]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null28|dragon_rig_v4:spine81|dragon_rig_v4:spineShape81.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[108]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null29|dragon_rig_v4:spine85|dragon_rig_v4:spineShape85.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[109]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null29|dragon_rig_v4:spine85|dragon_rig_v4:spineShape85.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[110]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null30|dragon_rig_v4:spine115|dragon_rig_v4:spineShape115.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[111]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null30|dragon_rig_v4:spine115|dragon_rig_v4:spineShape115.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[112]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null31|dragon_rig_v4:spine86|dragon_rig_v4:spineShape86.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[113]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null31|dragon_rig_v4:spine86|dragon_rig_v4:spineShape86.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[114]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null32|dragon_rig_v4:spine42|dragon_rig_v4:spineShape42.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[115]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null32|dragon_rig_v4:spine42|dragon_rig_v4:spineShape42.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[116]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null33|dragon_rig_v4:spine41|dragon_rig_v4:spineShape41.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[117]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null33|dragon_rig_v4:spine41|dragon_rig_v4:spineShape41.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[118]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null34|dragon_rig_v4:spine43|dragon_rig_v4:spineShape43.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[119]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null34|dragon_rig_v4:spine43|dragon_rig_v4:spineShape43.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[120]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null35|dragon_rig_v4:spine62|dragon_rig_v4:spineShape62.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[121]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null35|dragon_rig_v4:spine62|dragon_rig_v4:spineShape62.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[122]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null36|dragon_rig_v4:spine44|dragon_rig_v4:spineShape44.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[123]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null36|dragon_rig_v4:spine44|dragon_rig_v4:spineShape44.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[124]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null37|dragon_rig_v4:spine63|dragon_rig_v4:spineShape63.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[125]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null37|dragon_rig_v4:spine63|dragon_rig_v4:spineShape63.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[126]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null38|dragon_rig_v4:spine3|dragon_rig_v4:spineShape3.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[127]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null38|dragon_rig_v4:spine3|dragon_rig_v4:spineShape3.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[128]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null39|dragon_rig_v4:spine45|dragon_rig_v4:spineShape45.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[129]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null39|dragon_rig_v4:spine45|dragon_rig_v4:spineShape45.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[130]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null40|dragon_rig_v4:spine8|dragon_rig_v4:spineShape8.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[131]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null40|dragon_rig_v4:spine8|dragon_rig_v4:spineShape8.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[132]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null41|dragon_rig_v4:spine7|dragon_rig_v4:spineShape7.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[133]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null41|dragon_rig_v4:spine7|dragon_rig_v4:spineShape7.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[134]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null42|dragon_rig_v4:spine47|dragon_rig_v4:spineShape47.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[135]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null42|dragon_rig_v4:spine47|dragon_rig_v4:spineShape47.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[136]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null43|dragon_rig_v4:spine139|dragon_rig_v4:spineShape139.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[137]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null43|dragon_rig_v4:spine139|dragon_rig_v4:spineShape139.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[138]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null44|dragon_rig_v4:spine9|dragon_rig_v4:spineShape9.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[139]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null44|dragon_rig_v4:spine9|dragon_rig_v4:spineShape9.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[140]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null45|dragon_rig_v4:spine4|dragon_rig_v4:spineShape4.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[141]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null45|dragon_rig_v4:spine4|dragon_rig_v4:spineShape4.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[142]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null46|dragon_rig_v4:spine6|dragon_rig_v4:spineShape6.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[143]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null46|dragon_rig_v4:spine6|dragon_rig_v4:spineShape6.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[144]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null47|dragon_rig_v4:spine137|dragon_rig_v4:spineShape137.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[145]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null47|dragon_rig_v4:spine137|dragon_rig_v4:spineShape137.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[146]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null48|dragon_rig_v4:spine5|dragon_rig_v4:spineShape5.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[147]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null48|dragon_rig_v4:spine5|dragon_rig_v4:spineShape5.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[148]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null49|dragon_rig_v4:spine19|dragon_rig_v4:spineShape19.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[149]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null49|dragon_rig_v4:spine19|dragon_rig_v4:spineShape19.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[150]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null50|dragon_rig_v4:spine24|dragon_rig_v4:spineShape24.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[151]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null50|dragon_rig_v4:spine24|dragon_rig_v4:spineShape24.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[152]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null51|dragon_rig_v4:spine138|dragon_rig_v4:spineShape138.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[153]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null51|dragon_rig_v4:spine138|dragon_rig_v4:spineShape138.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[154]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null52|dragon_rig_v4:spine136|dragon_rig_v4:spineShape136.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[155]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null52|dragon_rig_v4:spine136|dragon_rig_v4:spineShape136.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[156]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null53|dragon_rig_v4:spine21|dragon_rig_v4:spineShape21.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[157]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null53|dragon_rig_v4:spine21|dragon_rig_v4:spineShape21.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[158]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null54|dragon_rig_v4:spine14|dragon_rig_v4:spineShape14.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[159]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null54|dragon_rig_v4:spine14|dragon_rig_v4:spineShape14.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[160]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null55|dragon_rig_v4:spine33|dragon_rig_v4:spineShape33.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[161]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null55|dragon_rig_v4:spine33|dragon_rig_v4:spineShape33.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[162]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null56|dragon_rig_v4:spine35|dragon_rig_v4:spineShape35.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[163]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null56|dragon_rig_v4:spine35|dragon_rig_v4:spineShape35.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[164]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine15|dragon_rig_v4:spineShape15.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[165]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine15|dragon_rig_v4:spineShape15.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[166]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine16|dragon_rig_v4:spineShape16.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[167]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null57|dragon_rig_v4:spine16|dragon_rig_v4:spineShape16.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[168]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null58|dragon_rig_v4:spine10|dragon_rig_v4:spineShape10.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[169]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null58|dragon_rig_v4:spine10|dragon_rig_v4:spineShape10.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[170]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null59|dragon_rig_v4:spine13|dragon_rig_v4:spineShape13.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[171]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null59|dragon_rig_v4:spine13|dragon_rig_v4:spineShape13.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[172]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null60|dragon_rig_v4:spine50|dragon_rig_v4:spineShape50.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[173]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null60|dragon_rig_v4:spine50|dragon_rig_v4:spineShape50.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[174]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null61|dragon_rig_v4:spine51|dragon_rig_v4:spineShape51.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[175]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null61|dragon_rig_v4:spine51|dragon_rig_v4:spineShape51.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[176]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null62|dragon_rig_v4:spine11|dragon_rig_v4:spineShape11.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[177]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null62|dragon_rig_v4:spine11|dragon_rig_v4:spineShape11.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[178]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine141|dragon_rig_v4:spineShape141.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[179]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine141|dragon_rig_v4:spineShape141.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[180]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine12|dragon_rig_v4:spineShape12.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[181]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null63|dragon_rig_v4:spine12|dragon_rig_v4:spineShape12.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[182]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null64|dragon_rig_v4:spine48|dragon_rig_v4:spineShape48.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[183]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null64|dragon_rig_v4:spine48|dragon_rig_v4:spineShape48.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[184]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null65|dragon_rig_v4:spine49|dragon_rig_v4:spineShape49.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[185]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null65|dragon_rig_v4:spine49|dragon_rig_v4:spineShape49.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[186]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null66|dragon_rig_v4:spine52|dragon_rig_v4:spineShape52.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[187]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null66|dragon_rig_v4:spine52|dragon_rig_v4:spineShape52.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[188]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null67|dragon_rig_v4:spine30|dragon_rig_v4:spineShape30.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[189]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null67|dragon_rig_v4:spine30|dragon_rig_v4:spineShape30.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[190]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null68|dragon_rig_v4:spine34|dragon_rig_v4:spineShape34.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[191]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null68|dragon_rig_v4:spine34|dragon_rig_v4:spineShape34.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[192]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null69|dragon_rig_v4:spine36|dragon_rig_v4:spineShape36.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[193]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null69|dragon_rig_v4:spine36|dragon_rig_v4:spineShape36.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[194]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine32|dragon_rig_v4:spineShape32.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[195]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine32|dragon_rig_v4:spineShape32.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[196]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine31|dragon_rig_v4:spineShape31.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[197]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null70|dragon_rig_v4:spine31|dragon_rig_v4:spineShape31.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[198]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null71|dragon_rig_v4:spine28|dragon_rig_v4:spineShape28.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[199]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null71|dragon_rig_v4:spine28|dragon_rig_v4:spineShape28.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[200]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null72|dragon_rig_v4:spine29|dragon_rig_v4:spineShape29.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[201]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null72|dragon_rig_v4:spine29|dragon_rig_v4:spineShape29.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[202]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null73|dragon_rig_v4:spine26|dragon_rig_v4:spineShape26.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[203]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null73|dragon_rig_v4:spine26|dragon_rig_v4:spineShape26.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[204]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null74|dragon_rig_v4:spine27|dragon_rig_v4:spineShape27.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[205]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null74|dragon_rig_v4:spine27|dragon_rig_v4:spineShape27.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[206]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null75|dragon_rig_v4:spine140|dragon_rig_v4:spineShape140.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[207]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null75|dragon_rig_v4:spine140|dragon_rig_v4:spineShape140.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[208]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null76|dragon_rig_v4:spine23|dragon_rig_v4:spineShape23.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[209]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null76|dragon_rig_v4:spine23|dragon_rig_v4:spineShape23.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[210]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null77|dragon_rig_v4:spine25|dragon_rig_v4:spineShape25.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[211]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null77|dragon_rig_v4:spine25|dragon_rig_v4:spineShape25.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[212]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null78|dragon_rig_v4:spine22|dragon_rig_v4:spineShape22.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[213]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null78|dragon_rig_v4:spine22|dragon_rig_v4:spineShape22.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[214]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null79|dragon_rig_v4:spine116|dragon_rig_v4:spineShape116.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[215]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null79|dragon_rig_v4:spine116|dragon_rig_v4:spineShape116.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[216]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null80|dragon_rig_v4:spine61|dragon_rig_v4:spineShape61.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[217]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null80|dragon_rig_v4:spine61|dragon_rig_v4:spineShape61.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[218]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null81|dragon_rig_v4:spine56|dragon_rig_v4:spineShape56.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[219]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null81|dragon_rig_v4:spine56|dragon_rig_v4:spineShape56.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[220]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null82|dragon_rig_v4:spine117|dragon_rig_v4:spineShape117.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[221]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null82|dragon_rig_v4:spine117|dragon_rig_v4:spineShape117.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[222]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null83|dragon_rig_v4:spine55|dragon_rig_v4:spineShape55.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[223]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null83|dragon_rig_v4:spine55|dragon_rig_v4:spineShape55.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[224]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null84|dragon_rig_v4:spine118|dragon_rig_v4:spineShape118.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[225]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null84|dragon_rig_v4:spine118|dragon_rig_v4:spineShape118.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[226]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null85|dragon_rig_v4:spine126|dragon_rig_v4:spineShape126.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[227]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null85|dragon_rig_v4:spine126|dragon_rig_v4:spineShape126.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[228]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null86|dragon_rig_v4:spine53|dragon_rig_v4:spineShape53.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[229]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null86|dragon_rig_v4:spine53|dragon_rig_v4:spineShape53.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[230]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null88|dragon_rig_v4:spine124|dragon_rig_v4:spineShape124.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[231]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null88|dragon_rig_v4:spine124|dragon_rig_v4:spineShape124.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[232]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null89|dragon_rig_v4:spine57|dragon_rig_v4:spineShape57.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[233]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null89|dragon_rig_v4:spine57|dragon_rig_v4:spineShape57.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[234]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null90|dragon_rig_v4:spine125|dragon_rig_v4:spineShape125.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[235]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null90|dragon_rig_v4:spine125|dragon_rig_v4:spineShape125.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[236]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null91|dragon_rig_v4:spine127|dragon_rig_v4:spineShape127.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[237]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null91|dragon_rig_v4:spine127|dragon_rig_v4:spineShape127.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[238]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null92|dragon_rig_v4:spine120|dragon_rig_v4:spineShape120.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[239]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null92|dragon_rig_v4:spine120|dragon_rig_v4:spineShape120.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[240]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null94|dragon_rig_v4:spine122|dragon_rig_v4:spineShape122.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[241]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null94|dragon_rig_v4:spine122|dragon_rig_v4:spineShape122.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[242]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null95|dragon_rig_v4:spine123|dragon_rig_v4:spineShape123.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[243]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null95|dragon_rig_v4:spine123|dragon_rig_v4:spineShape123.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[244]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null96|dragon_rig_v4:spine121|dragon_rig_v4:spineShape121.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[245]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null96|dragon_rig_v4:spine121|dragon_rig_v4:spineShape121.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[246]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null97|dragon_rig_v4:spine58|dragon_rig_v4:spineShape58.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[247]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null97|dragon_rig_v4:spine58|dragon_rig_v4:spineShape58.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[248]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null105|dragon_rig_v4:spine54|dragon_rig_v4:spineShape54.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[249]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null105|dragon_rig_v4:spine54|dragon_rig_v4:spineShape54.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[250]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null107|dragon_rig_v4:spine158|dragon_rig_v4:spineShape158.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[251]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null107|dragon_rig_v4:spine158|dragon_rig_v4:spineShape158.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[252]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null108|dragon_rig_v4:spine148|dragon_rig_v4:spineShape148.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[253]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null108|dragon_rig_v4:spine148|dragon_rig_v4:spineShape148.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[254]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null110|dragon_rig_v4:spine150|dragon_rig_v4:spineShape150.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[255]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null110|dragon_rig_v4:spine150|dragon_rig_v4:spineShape150.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[256]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null111|dragon_rig_v4:spine152|dragon_rig_v4:spineShape152.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[257]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null111|dragon_rig_v4:spine152|dragon_rig_v4:spineShape152.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[258]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null113|dragon_rig_v4:spine154|dragon_rig_v4:spineShape154.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[259]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null113|dragon_rig_v4:spine154|dragon_rig_v4:spineShape154.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[260]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null114|dragon_rig_v4:spine149|dragon_rig_v4:spineShape149.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[261]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null114|dragon_rig_v4:spine149|dragon_rig_v4:spineShape149.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[262]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null115|dragon_rig_v4:spine159|dragon_rig_v4:spineShape159.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[263]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null115|dragon_rig_v4:spine159|dragon_rig_v4:spineShape159.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[264]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null116|dragon_rig_v4:spine59|dragon_rig_v4:spineShape59.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[265]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null116|dragon_rig_v4:spine59|dragon_rig_v4:spineShape59.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[266]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null117|dragon_rig_v4:spine151|dragon_rig_v4:spineShape151.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[267]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null117|dragon_rig_v4:spine151|dragon_rig_v4:spineShape151.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[268]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null118|dragon_rig_v4:spine153|dragon_rig_v4:spineShape153.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[269]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null118|dragon_rig_v4:spine153|dragon_rig_v4:spineShape153.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[270]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null119|dragon_rig_v4:spine119|dragon_rig_v4:spineShape119.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[271]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null119|dragon_rig_v4:spine119|dragon_rig_v4:spineShape119.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[272]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null120|dragon_rig_v4:spine155|dragon_rig_v4:spineShape155.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[273]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null120|dragon_rig_v4:spine155|dragon_rig_v4:spineShape155.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[274]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null121|dragon_rig_v4:spine160|dragon_rig_v4:spineShape160.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[275]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null121|dragon_rig_v4:spine160|dragon_rig_v4:spineShape160.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[276]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null123|dragon_rig_v4:spine156|dragon_rig_v4:spineShape156.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[277]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null123|dragon_rig_v4:spine156|dragon_rig_v4:spineShape156.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[278]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null124|dragon_rig_v4:spine162|dragon_rig_v4:spineShape162.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[279]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null124|dragon_rig_v4:spine162|dragon_rig_v4:spineShape162.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[280]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null125|dragon_rig_v4:spine161|dragon_rig_v4:spineShape161.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[281]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null125|dragon_rig_v4:spine161|dragon_rig_v4:spineShape161.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[282]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null126|dragon_rig_v4:spine60|dragon_rig_v4:spineShape60.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[283]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null126|dragon_rig_v4:spine60|dragon_rig_v4:spineShape60.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[284]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null127|dragon_rig_v4:spine157|dragon_rig_v4:spineShape157.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[285]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null127|dragon_rig_v4:spine157|dragon_rig_v4:spineShape157.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[286]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null128|dragon_rig_v4:spine163|dragon_rig_v4:spineShape163.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[287]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null128|dragon_rig_v4:spine163|dragon_rig_v4:spineShape163.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[288]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null130|dragon_rig_v4:spine103|dragon_rig_v4:spineShape103.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[289]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null130|dragon_rig_v4:spine103|dragon_rig_v4:spineShape103.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[290]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null132|dragon_rig_v4:spine135|dragon_rig_v4:spineShape135.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[291]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null132|dragon_rig_v4:spine135|dragon_rig_v4:spineShape135.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[292]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null133|dragon_rig_v4:spine99|dragon_rig_v4:spineShape99.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[293]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null133|dragon_rig_v4:spine99|dragon_rig_v4:spineShape99.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[294]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null134|dragon_rig_v4:spine101|dragon_rig_v4:spineShape101.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[295]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null134|dragon_rig_v4:spine101|dragon_rig_v4:spineShape101.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[296]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine98|dragon_rig_v4:spineShape98.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[297]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine98|dragon_rig_v4:spineShape98.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[298]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine102|dragon_rig_v4:spineShape102.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[299]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null136|dragon_rig_v4:spine102|dragon_rig_v4:spineShape102.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[300]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null138|dragon_rig_v4:spine134|dragon_rig_v4:spineShape134.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[301]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null138|dragon_rig_v4:spine134|dragon_rig_v4:spineShape134.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[302]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null139|dragon_rig_v4:spine100|dragon_rig_v4:spineShape100.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[303]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null139|dragon_rig_v4:spine100|dragon_rig_v4:spineShape100.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[304]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null141|dragon_rig_v4:spine104|dragon_rig_v4:spineShape104.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[305]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null141|dragon_rig_v4:spine104|dragon_rig_v4:spineShape104.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[306]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null142|dragon_rig_v4:spine108|dragon_rig_v4:spineShape108.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[307]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null142|dragon_rig_v4:spine108|dragon_rig_v4:spineShape108.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[308]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null143|dragon_rig_v4:spine106|dragon_rig_v4:spineShape106.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[309]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null143|dragon_rig_v4:spine106|dragon_rig_v4:spineShape106.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[310]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null144|dragon_rig_v4:spine142|dragon_rig_v4:spineShape142.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[311]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null144|dragon_rig_v4:spine142|dragon_rig_v4:spineShape142.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[312]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null145|dragon_rig_v4:spine132|dragon_rig_v4:spineShape132.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[313]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null145|dragon_rig_v4:spine132|dragon_rig_v4:spineShape132.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[314]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null146|dragon_rig_v4:spine146|dragon_rig_v4:spineShape146.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[315]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null146|dragon_rig_v4:spine146|dragon_rig_v4:spineShape146.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[316]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null147|dragon_rig_v4:spine130|dragon_rig_v4:spineShape130.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[317]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null147|dragon_rig_v4:spine130|dragon_rig_v4:spineShape130.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[318]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null148|dragon_rig_v4:spine128|dragon_rig_v4:spineShape128.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[319]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null148|dragon_rig_v4:spine128|dragon_rig_v4:spineShape128.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[320]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null149|dragon_rig_v4:spine144|dragon_rig_v4:spineShape144.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[321]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null149|dragon_rig_v4:spine144|dragon_rig_v4:spineShape144.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[322]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null150|dragon_rig_v4:spine133|dragon_rig_v4:spineShape133.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[323]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null150|dragon_rig_v4:spine133|dragon_rig_v4:spineShape133.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[324]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null151|dragon_rig_v4:spine131|dragon_rig_v4:spineShape131.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[325]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null151|dragon_rig_v4:spine131|dragon_rig_v4:spineShape131.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[326]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null152|dragon_rig_v4:spine147|dragon_rig_v4:spineShape147.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[327]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null152|dragon_rig_v4:spine147|dragon_rig_v4:spineShape147.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[328]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null153|dragon_rig_v4:spine129|dragon_rig_v4:spineShape129.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[329]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null153|dragon_rig_v4:spine129|dragon_rig_v4:spineShape129.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[330]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine143|dragon_rig_v4:spineShape143.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[331]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine143|dragon_rig_v4:spineShape143.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[332]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine145|dragon_rig_v4:spineShape145.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[333]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null154|dragon_rig_v4:spine145|dragon_rig_v4:spineShape145.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[334]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null155|dragon_rig_v4:spine105|dragon_rig_v4:spineShape105.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[335]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null155|dragon_rig_v4:spine105|dragon_rig_v4:spineShape105.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[336]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null156|dragon_rig_v4:spine109|dragon_rig_v4:spineShape109.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[337]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null156|dragon_rig_v4:spine109|dragon_rig_v4:spineShape109.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[338]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null157|dragon_rig_v4:spine107|dragon_rig_v4:spineShape107.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[339]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null157|dragon_rig_v4:spine107|dragon_rig_v4:spineShape107.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[340]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null158|dragon_rig_v4:spine46|dragon_rig_v4:spineShape46.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[341]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null158|dragon_rig_v4:spine46|dragon_rig_v4:spineShape46.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[342]" ""
		5 3 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null159|dragon_rig_v4:spine20|dragon_rig_v4:spineShape20.instObjGroups.objectGroups[0]" 
		"dragon_rig_v4RN.placeHolderList[343]" "dragon_rig_v4:blinn4SG.dsm"
		5 4 "dragon_rig_v4RN" "|dragon_rig_v4:Group|dragon_rig_v4:spines_setup|dragon_rig_v4:null159|dragon_rig_v4:spine20|dragon_rig_v4:spineShape20.instObjGroups.objectGroups[0].objectGrpColor" 
		"dragon_rig_v4RN.placeHolderList[344]" ""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:file7.message" "dragon_rig_v4RN.placeHolderList[345]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:place2dTexture7.message" "dragon_rig_v4RN.placeHolderList[346]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:bump2d3.message" "dragon_rig_v4RN.placeHolderList[347]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:wings_blinn.message" "dragon_rig_v4RN.placeHolderList[348]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:blinn7SG.message" "dragon_rig_v4RN.placeHolderList[349]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:file24.message" "dragon_rig_v4RN.placeHolderList[350]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:place2dTexture24.message" "dragon_rig_v4RN.placeHolderList[351]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:file25.message" "dragon_rig_v4RN.placeHolderList[352]" 
		""
		5 3 "dragon_rig_v4RN" "dragon_rig_v4:place2dTexture25.message" "dragon_rig_v4RN.placeHolderList[353]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayOptions -s -n "miContourPreset";
	rename -uid "16F30214-4808-B158-C52C-0D8732885D5F";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	rename -uid "CE5E8D5B-42D2-0712-B7FD-059E3D93E591";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	rename -uid "4379FDAB-406C-42F7-85B3-EA9DC8E83D2D";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	rename -uid "68A8A407-4A8F-FE83-D1CC-0287B51EE9A4";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	rename -uid "A6314EA4-4B1B-9D10-FFF5-00B2DFB069B7";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	rename -uid "003B35EA-47DC-4D2E-DABD-ECB6C61CCF85";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	rename -uid "7A4D9836-4D77-3486-8D6A-E58E1B60606E";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	rename -uid "1D99A573-418E-B088-419D-15824B6F8699";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	rename -uid "F3189634-4185-B4FD-1802-3783DA9002F8";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	rename -uid "7C6E00E7-45DC-6B97-BC12-CFBD51B461CD";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	rename -uid "309A59F8-4782-7233-2379-3788915AB97E";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 0;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	rename -uid "009B8309-47D4-81AB-AC9E-4CA557C91E7E";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 0;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	rename -uid "BF606DB8-4F71-51A5-EF6A-C780BC0022D2";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 0;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	rename -uid "8F005D9D-432B-7EDD-85B7-03937F08BE22";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" yes;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	rename -uid "007A10AD-463F-6AF1-204B-28A310D3FCA4";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	rename -uid "B008B7A9-4DC3-DEE1-C2C3-DA811032B282";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	rename -uid "E05C5244-4793-8060-8F6C-FC9F6FB99C96";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	rename -uid "DA5FF340-46B2-ADBB-E78B-E6953ABDF1A6";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "F90D92FF-428F-CFE0-CE20-4B9722FA48A2";
	addAttr -s false -ci true -h true -sn "physicalSky" -ln "physicalSky" -at "message";
	setAttr ".imageFilePrefix" -type "string" "";
	setAttr ".imageFormat" 2;
	setAttr ".unifiedMinSamples" 8;
	setAttr ".unifiedMaxSamples" 228;
	setAttr ".primaryGIEngine" 4;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "5DB2BF18-4E82-17CF-253D-2CAAF6A18437";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "7139BF93-4568-28C5-61FC-76805A1AA0B3";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "EF1B2FE6-4CD3-757C-48B5-F68794C461DC";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "51ECC6A5-429C-1B15-B349-E98D745D2982";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "836871BC-4FCC-8FAD-F43A-F999AEB801E9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1101\n                -height 590\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1101\n            -height 590\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1101\\n    -height 590\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1101\\n    -height 590\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C931DD3B-471B-61E5-F884-F99643AEC545";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "nurbsurfaces";
	rename -uid "E95832A0-4A57-E17D-6786-B3A9B0A8AADE";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode RedshiftMaterial -n "body_rs";
	rename -uid "24D03B7C-4A2C-0F5E-A441-3580277AD747";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.40869563817977905;
	setAttr ".refl_roughness" 0.39130434393882751;
createNode shadingEngine -n "rsMaterial1SG";
	rename -uid "DECC70BA-4B3A-B94D-44BC-F9821E6EB3BA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B395F908-433B-0A39-5135-1DA71EB1493E";
	setAttr -s 3 ".t";
createNode file -n "file1";
	rename -uid "E90F50C6-4553-7724-4F60-1C8DC67D7E8D";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Body-SPEC_u0_v0.tif";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F88BD76E-4C48-FA40-5516-B1893E478F9C";
createNode file -n "file2";
	rename -uid "4077AF28-43A7-6077-EC5D-4A816FAE82F5";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Body-TM_u0_v0.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "8137663A-4C79-CEF1-091D-FDA7A2EAA752";
createNode RedshiftNormalMap -n "rsNormalMap1";
	rename -uid "7E224AA2-44EE-E87D-DAE0-5EB953DBE3DB";
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Body-NM_u0_v0_half_v2.tif";
createNode file -n "file3";
	rename -uid "C08E2BA3-4F81-CD8E-FD07-E1B4AA2A1CA8";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Body-DM4096_u0_v0.exr";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "91680EF5-4FD3-8101-F62F-86A70E4D74B8";
createNode RedshiftDisplacement -n "rsDisplacement1";
	rename -uid "6E7994FE-4319-B7A9-CF2E-52B56EE2ECD1";
	setAttr ".scale" 100;
createNode RedshiftMaterial -n "rsSpikes";
	rename -uid "A453CF4C-4A23-9599-3589-808F95804C84";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.60000002384185791;
	setAttr ".refl_roughness" 0.14782609045505524;
createNode shadingEngine -n "rsMaterial2SG";
	rename -uid "89899E3A-41F6-0607-EFFA-F1A583F6889D";
	setAttr ".ihi" 0;
	setAttr -s 163 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "43D9E0D6-48EC-8E93-81E7-25832047B575";
	setAttr -s 3 ".t";
createNode RedshiftNormalMap -n "rsNormalMap2";
	rename -uid "712EF8BA-4852-BEE9-25CF-B2A5F370E10D";
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Spines-NM_u0_v0.tif";
createNode file -n "file4";
	rename -uid "68C46B72-4844-81B8-4422-92815F4AC6AC";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Spines-SPEC_u0_v0.tif";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "430A5D8F-4364-CA84-F749-69A5EEA0BBB6";
createNode file -n "file5";
	rename -uid "13E96CDD-412B-3E23-41CF-5FA46C5C67F2";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Spines-TM_u0_v0.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "D2F346A2-4DC8-11A8-0137-A98F5795A83F";
createNode RedshiftSubSurfaceScatter -n "teeth_rs";
	rename -uid "FB422524-4B22-6504-6488-7F9ADD80263E";
	setAttr ".scatter_color" -type "float3" 0.4709 0.1876 0.055399999 ;
	setAttr ".refl_brdf" 0;
createNode shadingEngine -n "rsSubSurfaceScatter1SG";
	rename -uid "C3950968-4DF5-D40A-98F7-90A95EF461D6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "F7B74C3C-408E-C8A8-AA91-A2ADF95D6E35";
createNode file -n "file6";
	rename -uid "2B5D7128-42DF-578E-DAC3-7AB10DAA35E1";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Teeth-TM_u0_v0.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "1382F2C6-4B4D-55D1-140E-CEB9C37123C2";
createNode RedshiftNormalMap -n "rsNormalMap3";
	rename -uid "BB4873F8-47C7-8914-4399-A386F8065DCE";
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Teeth-NM_u0_v0.tif";
createNode RedshiftSubSurfaceScatter -n "tongue_rs";
	rename -uid "72523E58-4E58-5B82-7213-12B8FDE2A736";
	setAttr ".scatter_color" -type "float3" 0.078000002 0 0 ;
	setAttr ".refl_brdf" 0;
createNode shadingEngine -n "tongue_rsSG";
	rename -uid "22AD25F5-448C-C2C1-4B6E-198EBA07492B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "4EEB5142-450B-33FB-F896-6B93F2854A86";
createNode RedshiftNormalMap -n "rsNormalMap4";
	rename -uid "CEEE5E7C-4B13-7F9E-1737-078A61FE7001";
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Tongue-NM_u0_v0.tif";
createNode file -n "file7";
	rename -uid "DBD7F102-423B-D50E-5A2F-CE9BC0A28BF9";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Tongue-TM_u0_v0.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "95CE3FD7-4E91-2F0A-E9BA-9FB559737105";
createNode RedshiftSubSurfaceScatter -n "eyes_rs";
	rename -uid "2C57E68A-46DA-6C76-7805-3DAC22EA10AA";
	setAttr ".scatter_color" -type "float3" 0.078000002 0 0 ;
	setAttr ".reflectivity" 0.79130434989929199;
	setAttr ".refl_brdf" 0;
createNode file -n "file8";
	rename -uid "AAE44EE7-4784-3658-B3AB-2DA11BE7B30E";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Eyes-TM_u0_v0.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "EFAD450F-430C-F0A9-E399-37BD6968FF17";
createNode RedshiftNormalMap -n "rsNormalMap5";
	rename -uid "8B10A7D0-4752-471F-0D36-09B250AC7F93";
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Eyes-NM_u0_v0.tif";
createNode shadingEngine -n "eyes_rsSG";
	rename -uid "B2ECC203-465B-34C4-9675-89BE97965ECA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "AD3A9BBA-4E0F-E0C0-B882-6EBAB2D71E1D";
createNode RedshiftMaterial -n "rsWings";
	rename -uid "F544BD87-481C-AEB3-6E68-F5B7CDC69993";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.66956520080566406;
	setAttr ".refl_roughness" 0.26086956262588501;
	setAttr ".ms_amount" 1;
	setAttr ".ms_color1" -type "float3" 0.078000002 0 0 ;
	setAttr ".ms_color2" -type "float3" 0.0070000002 0 0 ;
createNode shadingEngine -n "rsMaterial3SG";
	rename -uid "AAC7273F-42F4-1CA8-3527-9B9E497FB35D";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "A34635E7-4F87-9DC6-78B7-BD8C8B180521";
	setAttr -s 3 ".t";
createNode file -n "file9";
	rename -uid "D845FB4B-4C7A-075B-50D2-319F3FDA8F76";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Wings-TM_u0_v0.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "215F31C8-441F-9C60-C635-18A8B61CF04C";
createNode file -n "file10";
	rename -uid "10076A66-4B56-5BA5-C89B-BB9FE775D40E";
	setAttr ".ftn" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Wings-SPEC_u0_v0.tif";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "2A6BAF44-4FDD-DB3F-759D-738E1C40886B";
createNode RedshiftNormalMap -n "rsNormalMap6";
	rename -uid "48005A58-46F8-FECD-FA07-BFAB6405FB5E";
	setAttr ".tex0" -type "string" "F:/EVERYDAY 2/dragon v2/dragon v4//texture/Wings-NM_u0_v0.tif";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "40A541EC-4F4E-F5E6-D5F1-E890FC9A84C0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2076.4318461813154 -1272.0209065779757 ;
	setAttr ".tgi[0].vh" -type "double2" 2904.6081854685535 -589.85253462172295 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 817.14288330078125;
	setAttr ".tgi[0].ni[0].y" -788.5714111328125;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1124.2857666015625;
	setAttr ".tgi[0].ni[1].y" -765.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 1124.2857666015625;
	setAttr ".tgi[0].ni[2].y" -405.71429443359375;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 1124.2857666015625;
	setAttr ".tgi[0].ni[3].y" -590;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 1431.4285888671875;
	setAttr ".tgi[0].ni[4].y" -742.85711669921875;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 1738.5714111328125;
	setAttr ".tgi[0].ni[5].y" -451.42855834960937;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 1431.4285888671875;
	setAttr ".tgi[0].ni[6].y" -380.30654907226562;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1431.4285888671875;
	setAttr ".tgi[0].ni[7].y" -567.14288330078125;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 2045.7142333984375;
	setAttr ".tgi[0].ni[8].y" -451.42855834960937;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 2557.142822265625;
	setAttr ".tgi[0].ni[9].y" -704.28570556640625;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 2864.28564453125;
	setAttr ".tgi[0].ni[10].y" -704.28570556640625;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 2240;
	setAttr ".tgi[0].ni[11].y" -664.28570556640625;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 1932.857177734375;
	setAttr ".tgi[0].ni[12].y" -687.14288330078125;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 2240;
	setAttr ".tgi[0].ni[13].y" -840;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 1932.857177734375;
	setAttr ".tgi[0].ni[14].y" -862.85711669921875;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 2240;
	setAttr ".tgi[0].ni[15].y" -1015.7142944335937;
	setAttr ".tgi[0].ni[15].nvs" 2035;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
	setAttr -av ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 19 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 22 ".s";
select -ne :postProcessList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 41 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 28 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr ".ren" -type "string" "redshift";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -cb on ".imfkey" -type "string" "png";
	setAttr -k on ".gama";
	setAttr -cb on ".an" yes;
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff" yes;
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".w" 1280;
	setAttr -k on ".h" 720;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1.7769999504089355;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 3 ".sol";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[1]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[2]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[3]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[4]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[5]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[6]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[7]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[8]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[9]";
connectAttr "nurbsurfaces.di" "dragon_rig_v4RN.phl[10]";
connectAttr "dragon_rig_v4RN.phl[11]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[12]";
connectAttr "dragon_rig_v4RN.phl[13]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[14]";
connectAttr "dragon_rig_v4RN.phl[15]" "rsMaterial1SG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[16]" "tongue_rsSG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[17]" "rsMaterial3SG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[18]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[19]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[20]" "eyes_rsSG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[21]" "eyes_rsSG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[22]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[23]";
connectAttr "dragon_rig_v4RN.phl[24]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[25]";
connectAttr "dragon_rig_v4RN.phl[26]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[27]";
connectAttr "dragon_rig_v4RN.phl[28]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[29]";
connectAttr "dragon_rig_v4RN.phl[30]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[31]";
connectAttr "dragon_rig_v4RN.phl[32]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[33]";
connectAttr "dragon_rig_v4RN.phl[34]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[35]";
connectAttr "dragon_rig_v4RN.phl[36]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[37]";
connectAttr "dragon_rig_v4RN.phl[38]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[39]";
connectAttr "dragon_rig_v4RN.phl[40]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[41]";
connectAttr "dragon_rig_v4RN.phl[42]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[43]";
connectAttr "dragon_rig_v4RN.phl[44]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[45]";
connectAttr "dragon_rig_v4RN.phl[46]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[47]";
connectAttr "dragon_rig_v4RN.phl[48]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[49]";
connectAttr "dragon_rig_v4RN.phl[50]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[51]";
connectAttr "dragon_rig_v4RN.phl[52]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[53]";
connectAttr "dragon_rig_v4RN.phl[54]" "rsMaterial3SG.dsm" -na;
connectAttr "dragon_rig_v4RN.phl[55]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[56]";
connectAttr "dragon_rig_v4RN.phl[57]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[58]";
connectAttr "dragon_rig_v4RN.phl[59]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[60]";
connectAttr "dragon_rig_v4RN.phl[61]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[62]";
connectAttr "dragon_rig_v4RN.phl[63]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[64]";
connectAttr "dragon_rig_v4RN.phl[65]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[66]";
connectAttr "dragon_rig_v4RN.phl[67]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[68]";
connectAttr "dragon_rig_v4RN.phl[69]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[70]";
connectAttr "dragon_rig_v4RN.phl[71]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[72]";
connectAttr "dragon_rig_v4RN.phl[73]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[74]";
connectAttr "dragon_rig_v4RN.phl[75]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[76]";
connectAttr "dragon_rig_v4RN.phl[77]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[78]";
connectAttr "dragon_rig_v4RN.phl[79]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[80]";
connectAttr "dragon_rig_v4RN.phl[81]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[82]";
connectAttr "dragon_rig_v4RN.phl[83]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[84]";
connectAttr "dragon_rig_v4RN.phl[85]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[86]";
connectAttr "dragon_rig_v4RN.phl[87]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[88]";
connectAttr "dragon_rig_v4RN.phl[89]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[90]";
connectAttr "dragon_rig_v4RN.phl[91]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[92]";
connectAttr "dragon_rig_v4RN.phl[93]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[94]";
connectAttr "dragon_rig_v4RN.phl[95]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[96]";
connectAttr "dragon_rig_v4RN.phl[97]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[98]";
connectAttr "dragon_rig_v4RN.phl[99]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[100]";
connectAttr "dragon_rig_v4RN.phl[101]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[102]";
connectAttr "dragon_rig_v4RN.phl[103]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[104]";
connectAttr "dragon_rig_v4RN.phl[105]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[106]";
connectAttr "dragon_rig_v4RN.phl[107]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[108]";
connectAttr "dragon_rig_v4RN.phl[109]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[110]";
connectAttr "dragon_rig_v4RN.phl[111]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[112]";
connectAttr "dragon_rig_v4RN.phl[113]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[114]";
connectAttr "dragon_rig_v4RN.phl[115]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[116]";
connectAttr "dragon_rig_v4RN.phl[117]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[118]";
connectAttr "dragon_rig_v4RN.phl[119]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[120]";
connectAttr "dragon_rig_v4RN.phl[121]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[122]";
connectAttr "dragon_rig_v4RN.phl[123]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[124]";
connectAttr "dragon_rig_v4RN.phl[125]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[126]";
connectAttr "dragon_rig_v4RN.phl[127]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[128]";
connectAttr "dragon_rig_v4RN.phl[129]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[130]";
connectAttr "dragon_rig_v4RN.phl[131]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[132]";
connectAttr "dragon_rig_v4RN.phl[133]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[134]";
connectAttr "dragon_rig_v4RN.phl[135]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[136]";
connectAttr "dragon_rig_v4RN.phl[137]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[138]";
connectAttr "dragon_rig_v4RN.phl[139]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[140]";
connectAttr "dragon_rig_v4RN.phl[141]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[142]";
connectAttr "dragon_rig_v4RN.phl[143]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[144]";
connectAttr "dragon_rig_v4RN.phl[145]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[146]";
connectAttr "dragon_rig_v4RN.phl[147]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[148]";
connectAttr "dragon_rig_v4RN.phl[149]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[150]";
connectAttr "dragon_rig_v4RN.phl[151]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[152]";
connectAttr "dragon_rig_v4RN.phl[153]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[154]";
connectAttr "dragon_rig_v4RN.phl[155]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[156]";
connectAttr "dragon_rig_v4RN.phl[157]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[158]";
connectAttr "dragon_rig_v4RN.phl[159]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[160]";
connectAttr "dragon_rig_v4RN.phl[161]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[162]";
connectAttr "dragon_rig_v4RN.phl[163]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[164]";
connectAttr "dragon_rig_v4RN.phl[165]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[166]";
connectAttr "dragon_rig_v4RN.phl[167]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[168]";
connectAttr "dragon_rig_v4RN.phl[169]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[170]";
connectAttr "dragon_rig_v4RN.phl[171]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[172]";
connectAttr "dragon_rig_v4RN.phl[173]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[174]";
connectAttr "dragon_rig_v4RN.phl[175]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[176]";
connectAttr "dragon_rig_v4RN.phl[177]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[178]";
connectAttr "dragon_rig_v4RN.phl[179]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[180]";
connectAttr "dragon_rig_v4RN.phl[181]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[182]";
connectAttr "dragon_rig_v4RN.phl[183]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[184]";
connectAttr "dragon_rig_v4RN.phl[185]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[186]";
connectAttr "dragon_rig_v4RN.phl[187]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[188]";
connectAttr "dragon_rig_v4RN.phl[189]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[190]";
connectAttr "dragon_rig_v4RN.phl[191]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[192]";
connectAttr "dragon_rig_v4RN.phl[193]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[194]";
connectAttr "dragon_rig_v4RN.phl[195]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[196]";
connectAttr "dragon_rig_v4RN.phl[197]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[198]";
connectAttr "dragon_rig_v4RN.phl[199]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[200]";
connectAttr "dragon_rig_v4RN.phl[201]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[202]";
connectAttr "dragon_rig_v4RN.phl[203]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[204]";
connectAttr "dragon_rig_v4RN.phl[205]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[206]";
connectAttr "dragon_rig_v4RN.phl[207]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[208]";
connectAttr "dragon_rig_v4RN.phl[209]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[210]";
connectAttr "dragon_rig_v4RN.phl[211]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[212]";
connectAttr "dragon_rig_v4RN.phl[213]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[214]";
connectAttr "dragon_rig_v4RN.phl[215]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[216]";
connectAttr "dragon_rig_v4RN.phl[217]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[218]";
connectAttr "dragon_rig_v4RN.phl[219]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[220]";
connectAttr "dragon_rig_v4RN.phl[221]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[222]";
connectAttr "dragon_rig_v4RN.phl[223]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[224]";
connectAttr "dragon_rig_v4RN.phl[225]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[226]";
connectAttr "dragon_rig_v4RN.phl[227]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[228]";
connectAttr "dragon_rig_v4RN.phl[229]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[230]";
connectAttr "dragon_rig_v4RN.phl[231]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[232]";
connectAttr "dragon_rig_v4RN.phl[233]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[234]";
connectAttr "dragon_rig_v4RN.phl[235]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[236]";
connectAttr "dragon_rig_v4RN.phl[237]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[238]";
connectAttr "dragon_rig_v4RN.phl[239]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[240]";
connectAttr "dragon_rig_v4RN.phl[241]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[242]";
connectAttr "dragon_rig_v4RN.phl[243]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[244]";
connectAttr "dragon_rig_v4RN.phl[245]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[246]";
connectAttr "dragon_rig_v4RN.phl[247]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[248]";
connectAttr "dragon_rig_v4RN.phl[249]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[250]";
connectAttr "dragon_rig_v4RN.phl[251]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[252]";
connectAttr "dragon_rig_v4RN.phl[253]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[254]";
connectAttr "dragon_rig_v4RN.phl[255]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[256]";
connectAttr "dragon_rig_v4RN.phl[257]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[258]";
connectAttr "dragon_rig_v4RN.phl[259]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[260]";
connectAttr "dragon_rig_v4RN.phl[261]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[262]";
connectAttr "dragon_rig_v4RN.phl[263]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[264]";
connectAttr "dragon_rig_v4RN.phl[265]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[266]";
connectAttr "dragon_rig_v4RN.phl[267]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[268]";
connectAttr "dragon_rig_v4RN.phl[269]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[270]";
connectAttr "dragon_rig_v4RN.phl[271]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[272]";
connectAttr "dragon_rig_v4RN.phl[273]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[274]";
connectAttr "dragon_rig_v4RN.phl[275]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[276]";
connectAttr "dragon_rig_v4RN.phl[277]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[278]";
connectAttr "dragon_rig_v4RN.phl[279]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[280]";
connectAttr "dragon_rig_v4RN.phl[281]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[282]";
connectAttr "dragon_rig_v4RN.phl[283]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[284]";
connectAttr "dragon_rig_v4RN.phl[285]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[286]";
connectAttr "dragon_rig_v4RN.phl[287]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[288]";
connectAttr "dragon_rig_v4RN.phl[289]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[290]";
connectAttr "dragon_rig_v4RN.phl[291]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[292]";
connectAttr "dragon_rig_v4RN.phl[293]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[294]";
connectAttr "dragon_rig_v4RN.phl[295]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[296]";
connectAttr "dragon_rig_v4RN.phl[297]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[298]";
connectAttr "dragon_rig_v4RN.phl[299]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[300]";
connectAttr "dragon_rig_v4RN.phl[301]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[302]";
connectAttr "dragon_rig_v4RN.phl[303]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[304]";
connectAttr "dragon_rig_v4RN.phl[305]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[306]";
connectAttr "dragon_rig_v4RN.phl[307]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[308]";
connectAttr "dragon_rig_v4RN.phl[309]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[310]";
connectAttr "dragon_rig_v4RN.phl[311]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[312]";
connectAttr "dragon_rig_v4RN.phl[313]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[314]";
connectAttr "dragon_rig_v4RN.phl[315]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[316]";
connectAttr "dragon_rig_v4RN.phl[317]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[318]";
connectAttr "dragon_rig_v4RN.phl[319]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[320]";
connectAttr "dragon_rig_v4RN.phl[321]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[322]";
connectAttr "dragon_rig_v4RN.phl[323]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[324]";
connectAttr "dragon_rig_v4RN.phl[325]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[326]";
connectAttr "dragon_rig_v4RN.phl[327]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[328]";
connectAttr "dragon_rig_v4RN.phl[329]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[330]";
connectAttr "dragon_rig_v4RN.phl[331]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[332]";
connectAttr "dragon_rig_v4RN.phl[333]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[334]";
connectAttr "dragon_rig_v4RN.phl[335]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[336]";
connectAttr "dragon_rig_v4RN.phl[337]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[338]";
connectAttr "dragon_rig_v4RN.phl[339]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[340]";
connectAttr "dragon_rig_v4RN.phl[341]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[342]";
connectAttr "dragon_rig_v4RN.phl[343]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "dragon_rig_v4RN.phl[344]";
connectAttr "dragon_rig_v4RN.phl[345]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "dragon_rig_v4RN.phl[346]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "dragon_rig_v4RN.phl[347]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "dragon_rig_v4RN.phl[348]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "dragon_rig_v4RN.phl[349]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "dragon_rig_v4RN.phl[350]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "dragon_rig_v4RN.phl[351]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "dragon_rig_v4RN.phl[352]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "dragon_rig_v4RN.phl[353]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsSubSurfaceScatter1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tongue_rsSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "eyes_rsSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsSubSurfaceScatter1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tongue_rsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "eyes_rsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "nurbsurfaces.id";
connectAttr "file1.oc" "body_rs.refl_color";
connectAttr "file2.oc" "body_rs.diffuse_color";
connectAttr "rsNormalMap1.oc" "body_rs.bump_input";
connectAttr "body_rs.oc" "rsMaterial1SG.ss";
connectAttr "rsDisplacement1.oc" "rsMaterial1SG.rsDisplacementShader";
connectAttr "rsMaterial1SG.msg" "materialInfo1.sg";
connectAttr "body_rs.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file3.oc" "rsDisplacement1.texMap";
connectAttr "rsNormalMap2.oc" "rsSpikes.bump_input";
connectAttr "file4.oc" "rsSpikes.refl_color";
connectAttr "file5.oc" "rsSpikes.diffuse_color";
connectAttr "rsSpikes.oc" "rsMaterial2SG.ss";
connectAttr "rsMaterial2SG.msg" "materialInfo2.sg";
connectAttr "rsSpikes.msg" "materialInfo2.m";
connectAttr "rsNormalMap2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "file6.oc" "teeth_rs.sub_surface_color";
connectAttr "rsNormalMap3.oc" "teeth_rs.bump_input";
connectAttr "teeth_rs.oc" "rsSubSurfaceScatter1SG.ss";
connectAttr "rsSubSurfaceScatter1SG.msg" "materialInfo3.sg";
connectAttr "teeth_rs.msg" "materialInfo3.m";
connectAttr "teeth_rs.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "file7.oc" "tongue_rs.sub_surface_color";
connectAttr "rsNormalMap4.oc" "tongue_rs.bump_input";
connectAttr "tongue_rs.oc" "tongue_rsSG.ss";
connectAttr "tongue_rsSG.msg" "materialInfo4.sg";
connectAttr "tongue_rs.msg" "materialInfo4.m";
connectAttr "tongue_rs.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "file8.oc" "eyes_rs.sub_surface_color";
connectAttr "rsNormalMap5.oc" "eyes_rs.bump_input";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr "eyes_rs.oc" "eyes_rsSG.ss";
connectAttr "eyes_rsSG.msg" "materialInfo5.sg";
connectAttr "eyes_rs.msg" "materialInfo5.m";
connectAttr "eyes_rs.msg" "materialInfo5.t" -na;
connectAttr "file9.oc" "rsWings.diffuse_color";
connectAttr "file10.oc" "rsWings.refl_color";
connectAttr "rsNormalMap6.oc" "rsWings.bump_input";
connectAttr "rsWings.oc" "rsMaterial3SG.ss";
connectAttr "rsMaterial3SG.msg" "materialInfo6.sg";
connectAttr "rsWings.msg" "materialInfo6.m";
connectAttr "file9.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture10.c" "file10.c";
connectAttr "place2dTexture10.tf" "file10.tf";
connectAttr "place2dTexture10.rf" "file10.rf";
connectAttr "place2dTexture10.mu" "file10.mu";
connectAttr "place2dTexture10.mv" "file10.mv";
connectAttr "place2dTexture10.s" "file10.s";
connectAttr "place2dTexture10.wu" "file10.wu";
connectAttr "place2dTexture10.wv" "file10.wv";
connectAttr "place2dTexture10.re" "file10.re";
connectAttr "place2dTexture10.of" "file10.of";
connectAttr "place2dTexture10.r" "file10.ro";
connectAttr "place2dTexture10.n" "file10.n";
connectAttr "place2dTexture10.vt1" "file10.vt1";
connectAttr "place2dTexture10.vt2" "file10.vt2";
connectAttr "place2dTexture10.vt3" "file10.vt3";
connectAttr "place2dTexture10.vc1" "file10.vc1";
connectAttr "place2dTexture10.o" "file10.uv";
connectAttr "place2dTexture10.ofs" "file10.fs";
connectAttr "rsWings.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "rsMaterial3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "file9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "place2dTexture9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "place2dTexture10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "rsNormalMap6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "rsMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial2SG.pa" ":renderPartition.st" -na;
connectAttr "rsSubSurfaceScatter1SG.pa" ":renderPartition.st" -na;
connectAttr "tongue_rsSG.pa" ":renderPartition.st" -na;
connectAttr "eyes_rsSG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "body_rs.msg" ":defaultShaderList1.s" -na;
connectAttr "rsSpikes.msg" ":defaultShaderList1.s" -na;
connectAttr "teeth_rs.msg" ":defaultShaderList1.s" -na;
connectAttr "tongue_rs.msg" ":defaultShaderList1.s" -na;
connectAttr "eyes_rs.msg" ":defaultShaderList1.s" -na;
connectAttr "rsWings.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsDisplacement1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rsDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "rsDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of dragon_redshift3d.ma
