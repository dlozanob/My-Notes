---

excalidraw-plugin: raw
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
Absoluta ^sl0o3N6c

Relativa ^Vr89c0IA

Posición inicial: ^lmNnebBv

- Modo
- Pos. inicial
- Pos. final
- Error permitido
 ^Qjp3L62m

config perifericos
import Audio

data = ESPGetData()
pos.x, pos.y = data.posInit.X, data.posInit.Y

function recalcularError()
    ex = abs((data.posFinal.x - pos.x)/data.posFinal.x)*100
    ey = abs((data.posFinal.y - pos.y)/data.posFinal.y)*100

function emitirAudio(param)
    case param
        iniciar: Audio1
        obstaculo: Audio2
        finalizar: Audio3
        .
        .
        default: return
    enviarAudioI2S()


param = iniciar
while(ex > data.e and ey > data.e) do
    emitirAudio(param)
    bool obs = deteccionObstaculos(d)
    accionarMotores(obs)
    if obs do
        param = obstaculo    

    actualizarPosicion()
    recalcularError()
    
 emitirAudio(finalizar)
 doPOSTReqHTTP(fin) ^4VxIwyYh

Posición final: ^il2Xc6PF

Clear All ^UT8cN3JQ

Send ^2od61Woc


# Embedded files
f741d58bbc50f5cf79393791f993e2684f09b3e9: $$\theta_{inicial}:$$
b4ab4492bf3f2530b2a39af5461d45801dd9b5aa: $$\varepsilon\,\%:$$
7b7a3995d4363d4962fdf74727beefb33a6dbabf: $$x$$
01c744a8b24c253fcdff586154700505a4060618: $$y$$
5a07fc370d0cb2f6dc1ce56565e77d228684574b: $$ESP32$$
0506cd050882baab86d0b25e8b6abfeee55e8e73: [[attachments/Pasted Image 20230412235321_195.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/1.8.21",
	"elements": [
		{
			"type": "rectangle",
			"version": 391,
			"versionNonce": 701289266,
			"isDeleted": false,
			"id": "TACYW1Z_LjnOEHsijeziE",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1776.9464967529088,
			"y": -823.2400570241648,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 599.858501639874,
			"height": 378.2948717948718,
			"seed": 2124893678,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 386,
			"versionNonce": 1149415662,
			"isDeleted": false,
			"id": "CcSqkM_8WmnxmJb6t7IQ3",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1687.7607210495323,
			"y": -781.3630424993967,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 27.333950903195923,
			"height": 28.385256707164995,
			"seed": 2071916590,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 340,
			"versionNonce": 1055890674,
			"isDeleted": false,
			"id": "oHj41I5riU4kcMoiCACBD",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1477.4995602557174,
			"y": -697.2585781818707,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 69.08862523453766,
			"height": 18.758512908851355,
			"seed": 1729825266,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 445,
			"versionNonce": 521823022,
			"isDeleted": false,
			"id": "sl0o3N6c",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1645.7084888907693,
			"y": -781.3630424993967,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 78.84793529768055,
			"height": 20.18507143620622,
			"seed": 405324786,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"fontSize": 16.820892863505183,
			"fontFamily": 3,
			"text": "Absoluta",
			"rawText": "Absoluta",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Absoluta",
			"lineHeight": 1.2
		},
		{
			"type": "text",
			"version": 260,
			"versionNonce": 1083387570,
			"isDeleted": false,
			"id": "Vr89c0IA",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1435.4473280969546,
			"y": -781.3630424993967,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 78.84793529768055,
			"height": 20.18507143620622,
			"seed": 1574511538,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"fontSize": 16.820892863505183,
			"fontFamily": 3,
			"text": "Relativa",
			"rawText": "Relativa",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Relativa",
			"lineHeight": 1.2
		},
		{
			"type": "freedraw",
			"version": 445,
			"versionNonce": 679595374,
			"isDeleted": false,
			"id": "bc5MSaWzpr4ztGJimdH8J",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1678.8877252277666,
			"y": -773.7289159339598,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 30.487868315103142,
			"height": 32.59047992304129,
			"seed": 2122285938,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					1.051305803969074
				],
				[
					0,
					4.205223215876296
				],
				[
					0,
					8.410446431752591
				],
				[
					0,
					10.513058039690739
				],
				[
					0,
					12.615669647628888
				],
				[
					0,
					14.718281255567035
				],
				[
					1.051305803969074,
					14.718281255567035
				],
				[
					4.205223215876296,
					10.513058039690739
				],
				[
					12.615669647628888,
					0
				],
				[
					22.077421883350553,
					-9.461752235721665
				],
				[
					28.385256707164995,
					-15.769587059536109
				],
				[
					30.487868315103142,
					-17.872198667474258
				],
				[
					30.487868315103142,
					-17.872198667474258
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "image",
			"version": 282,
			"versionNonce": 1935575154,
			"isDeleted": false,
			"id": "JlPumdcV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1456.473444176336,
			"y": -718.2846942612522,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 10.513058039690739,
			"height": 8.410446431752591,
			"seed": 13749,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "7b7a3995d4363d4962fdf74727beefb33a6dbabf",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 241,
			"versionNonce": 1577185198,
			"isDeleted": false,
			"id": "DfZ4Vtgw",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1309.2906316206659,
			"y": -718.2846942612522,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 9.461752235721665,
			"height": 12.615669647628888,
			"seed": 38693,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "01c744a8b24c253fcdff586154700505a4060618",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 244,
			"versionNonce": 1863887410,
			"isDeleted": false,
			"id": "lmNnebBv",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1687.7607210495323,
			"y": -697.2585781818707,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 167.55186250757114,
			"height": 20.18507143620622,
			"seed": 2058136878,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"fontSize": 16.820892863505183,
			"fontFamily": 3,
			"text": "Posición inicial:",
			"rawText": "Posición inicial:",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Posición inicial:",
			"lineHeight": 1.2
		},
		{
			"type": "line",
			"version": 66,
			"versionNonce": 1155084846,
			"isDeleted": false,
			"id": "tgdc_5hT2ULSFYuNlbt2e",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -91.75000000000011,
			"y": -149,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 1,
			"height": 237,
			"seed": 130653106,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952046,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					1,
					237
				]
			]
		},
		{
			"type": "line",
			"version": 77,
			"versionNonce": 1982648242,
			"isDeleted": false,
			"id": "5lPRmqjpnJSEmsTvmWP3X",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -94.75000000000011,
			"y": 85,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 201,
			"height": 3,
			"seed": 1230848882,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952046,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					201,
					3
				]
			]
		},
		{
			"type": "freedraw",
			"version": 99,
			"versionNonce": 1804516462,
			"isDeleted": false,
			"id": "ecHaqfB1pZfkavTbPlkcQ",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 12.249999999999886,
			"y": -25,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 15,
			"height": 11,
			"seed": 1175780398,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952046,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					-2
				],
				[
					1,
					-5
				],
				[
					1,
					-7
				],
				[
					2,
					-9
				],
				[
					2,
					-10
				],
				[
					2,
					-11
				],
				[
					1,
					-11
				],
				[
					-3,
					-11
				],
				[
					-4,
					-11
				],
				[
					-6,
					-11
				],
				[
					-4,
					-9
				],
				[
					-2,
					-8
				],
				[
					-1,
					-8
				],
				[
					1,
					-6
				],
				[
					3,
					-6
				],
				[
					5,
					-6
				],
				[
					8,
					-7
				],
				[
					9,
					-8
				],
				[
					9,
					-9
				],
				[
					9,
					-10
				],
				[
					8,
					-10
				],
				[
					7,
					-10
				],
				[
					6,
					-10
				],
				[
					5,
					-10
				],
				[
					3,
					-9
				],
				[
					2,
					-9
				],
				[
					2,
					-8
				],
				[
					1,
					-6
				],
				[
					1,
					-5
				],
				[
					1,
					-3
				],
				[
					1,
					-2
				],
				[
					2,
					-1
				],
				[
					3,
					-1
				],
				[
					5,
					-1
				],
				[
					5,
					-2
				],
				[
					5,
					-4
				],
				[
					5,
					-5
				],
				[
					5,
					-6
				],
				[
					4,
					-8
				],
				[
					3,
					-9
				],
				[
					1,
					-10
				],
				[
					-1,
					-10
				],
				[
					-2,
					-10
				],
				[
					-2,
					-9
				],
				[
					-2,
					-8
				],
				[
					-1,
					-8
				],
				[
					0,
					-8
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 74,
			"versionNonce": 1729890674,
			"isDeleted": false,
			"id": "Nb8oftPlVeRMawQNJPUMD",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 103.24999999999989,
			"y": -120,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 8,
			"height": 12,
			"seed": 1516300658,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952046,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-1,
					0
				],
				[
					-2,
					1
				],
				[
					-5,
					5
				],
				[
					-6,
					7
				],
				[
					-7,
					11
				],
				[
					-7,
					12
				],
				[
					-5,
					12
				],
				[
					-4,
					11
				],
				[
					-3,
					11
				],
				[
					-3,
					9
				],
				[
					-1,
					4
				],
				[
					-1,
					3
				],
				[
					-2,
					3
				],
				[
					-3,
					3
				],
				[
					-1,
					3
				],
				[
					1,
					3
				],
				[
					1,
					2
				],
				[
					0,
					2
				],
				[
					-1,
					2
				],
				[
					-1,
					4
				],
				[
					-2,
					5
				],
				[
					-2,
					6
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 67,
			"versionNonce": 798555822,
			"isDeleted": false,
			"id": "JTYqdoU5mgCDyajJ5K5Ip",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 12.249999999999886,
			"y": 12,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 18,
			"height": 20,
			"seed": 251392050,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952046,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					-1
				],
				[
					0,
					-2
				],
				[
					2,
					-8
				],
				[
					5,
					-14
				],
				[
					6,
					-18
				],
				[
					8,
					-20
				],
				[
					9,
					-19
				],
				[
					11,
					-15
				],
				[
					11,
					-14
				],
				[
					13,
					-13
				],
				[
					15,
					-11
				],
				[
					15,
					-10
				],
				[
					16,
					-10
				],
				[
					16,
					-9
				],
				[
					17,
					-9
				],
				[
					18,
					-9
				],
				[
					18,
					-9
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 53,
			"versionNonce": 1904085810,
			"isDeleted": false,
			"id": "uggLdq9BcEvNT8jhFZMja",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 15.249999999999886,
			"y": -12,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 1,
			"height": 0,
			"seed": 259893294,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					1,
					0
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 71,
			"versionNonce": 1973483758,
			"isDeleted": false,
			"id": "cWC-46cM1jJchrPuPp7Mt",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 112.24999999999989,
			"y": -88,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 9,
			"height": 38,
			"seed": 2098296114,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					-2
				],
				[
					-1,
					-2
				],
				[
					-2,
					-2
				],
				[
					-4,
					4
				],
				[
					-5,
					8
				],
				[
					-5,
					12
				],
				[
					-5,
					16
				],
				[
					-5,
					20
				],
				[
					-5,
					24
				],
				[
					-5,
					27
				],
				[
					-5,
					28
				],
				[
					-4,
					31
				],
				[
					-4,
					32
				],
				[
					-4,
					34
				],
				[
					-4,
					35
				],
				[
					-4,
					36
				],
				[
					-5,
					36
				],
				[
					-8,
					36
				],
				[
					-9,
					36
				],
				[
					-9,
					34
				],
				[
					-9,
					34
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 58,
			"versionNonce": 1807340786,
			"isDeleted": false,
			"id": "2kr-Hn-YAaCKfI6YPInJ0",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 104.24999999999989,
			"y": -65,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 7,
			"height": 3,
			"seed": 1217273774,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					1,
					-1
				],
				[
					2,
					-1
				],
				[
					5,
					-1
				],
				[
					5,
					-2
				],
				[
					6,
					-2
				],
				[
					7,
					-3
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "text",
			"version": 199,
			"versionNonce": 623881006,
			"isDeleted": false,
			"id": "Qjp3L62m",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -152,
			"y": -328.0000000000001,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 159.375,
			"height": 96,
			"seed": 1858913646,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"fontSize": 16,
			"fontFamily": 3,
			"text": "- Modo\n- Pos. inicial\n- Pos. final\n- Error permitido\n",
			"rawText": "- Modo\n- Pos. inicial\n- Pos. final\n- Error permitido\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "- Modo\n- Pos. inicial\n- Pos. final\n- Error permitido\n",
			"lineHeight": 1.2
		},
		{
			"type": "text",
			"version": 810,
			"versionNonce": 1196844722,
			"isDeleted": false,
			"id": "4VxIwyYh",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 258.53062898573796,
			"y": -260.80703738985517,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 553.125,
			"height": 652.8,
			"seed": 535696498,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"fontSize": 16,
			"fontFamily": 3,
			"text": "config perifericos\nimport Audio\n\ndata = ESPGetData()\npos.x, pos.y = data.posInit.X, data.posInit.Y\n\nfunction recalcularError()\n    ex = abs((data.posFinal.x - pos.x)/data.posFinal.x)*100\n    ey = abs((data.posFinal.y - pos.y)/data.posFinal.y)*100\n\nfunction emitirAudio(param)\n    case param\n        iniciar: Audio1\n        obstaculo: Audio2\n        finalizar: Audio3\n        .\n        .\n        default: return\n    enviarAudioI2S()\n\n\nparam = iniciar\nwhile(ex > data.e and ey > data.e) do\n    emitirAudio(param)\n    bool obs = deteccionObstaculos(d)\n    accionarMotores(obs)\n    if obs do\n        param = obstaculo    \n\n    actualizarPosicion()\n    recalcularError()\n    \n emitirAudio(finalizar)\n doPOSTReqHTTP(fin)",
			"rawText": "config perifericos\nimport Audio\n\ndata = ESPGetData()\npos.x, pos.y = data.posInit.X, data.posInit.Y\n\nfunction recalcularError()\n    ex = abs((data.posFinal.x - pos.x)/data.posFinal.x)*100\n    ey = abs((data.posFinal.y - pos.y)/data.posFinal.y)*100\n\nfunction emitirAudio(param)\n    case param\n        iniciar: Audio1\n        obstaculo: Audio2\n        finalizar: Audio3\n        .\n        .\n        default: return\n    enviarAudioI2S()\n\n\nparam = iniciar\nwhile(ex > data.e and ey > data.e) do\n    emitirAudio(param)\n    bool obs = deteccionObstaculos(d)\n    accionarMotores(obs)\n    if obs do\n        param = obstaculo    \n\n    actualizarPosicion()\n    recalcularError()\n    \n emitirAudio(finalizar)\n doPOSTReqHTTP(fin)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "config perifericos\nimport Audio\n\ndata = ESPGetData()\npos.x, pos.y = data.posInit.X, data.posInit.Y\n\nfunction recalcularError()\n    ex = abs((data.posFinal.x - pos.x)/data.posFinal.x)*100\n    ey = abs((data.posFinal.y - pos.y)/data.posFinal.y)*100\n\nfunction emitirAudio(param)\n    case param\n        iniciar: Audio1\n        obstaculo: Audio2\n        finalizar: Audio3\n        .\n        .\n        default: return\n    enviarAudioI2S()\n\n\nparam = iniciar\nwhile(ex > data.e and ey > data.e) do\n    emitirAudio(param)\n    bool obs = deteccionObstaculos(d)\n    accionarMotores(obs)\n    if obs do\n        param = obstaculo    \n\n    actualizarPosicion()\n    recalcularError()\n    \n emitirAudio(finalizar)\n doPOSTReqHTTP(fin)",
			"lineHeight": 1.2
		},
		{
			"type": "rectangle",
			"version": 281,
			"versionNonce": 734251502,
			"isDeleted": false,
			"id": "6c009Q9717HIO5FwYzxzn",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1324.008912876233,
			"y": -571.1018817055818,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 60.45008372822175,
			"height": 26.282645099226848,
			"seed": 1917207214,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 153,
			"versionNonce": 754630770,
			"isDeleted": false,
			"id": "xJtkKkdkk587HqUOyFD0I",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 5.267181207522587,
			"x": 245.83832129343017,
			"y": -469.2685758513936,
			"strokeColor": "#c92a2a",
			"backgroundColor": "transparent",
			"width": 61.24999999999999,
			"height": 65.00000000000006,
			"seed": 1800639986,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false
		},
		{
			"type": "ellipse",
			"version": 44,
			"versionNonce": 1164261294,
			"isDeleted": false,
			"id": "x2ld4q3znyFmwNfAe0gLh",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 300.8383212934301,
			"y": -598.0185758513937,
			"strokeColor": "#c92a2a",
			"backgroundColor": "transparent",
			"width": 77.5,
			"height": 58.75,
			"seed": 1151571954,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false
		},
		{
			"type": "ellipse",
			"version": 62,
			"versionNonce": 409854514,
			"isDeleted": false,
			"id": "DBydeEArYqCY22fOorupt",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 179.5883212934301,
			"y": -499.26857585139373,
			"strokeColor": "#c92a2a",
			"backgroundColor": "transparent",
			"width": 51.25,
			"height": 38.75000000000006,
			"seed": 131829934,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 20,
			"versionNonce": 1467879918,
			"isDeleted": false,
			"id": "9jp0eTjvDrFpfU07fH45S",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 232.0883212934301,
			"y": -461.7685758513937,
			"strokeColor": "#c92a2a",
			"backgroundColor": "transparent",
			"width": 16.25,
			"height": 8.75,
			"seed": 1442437234,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					16.25,
					8.75
				]
			]
		},
		{
			"type": "rectangle",
			"version": 223,
			"versionNonce": 1956039666,
			"isDeleted": false,
			"id": "AaGsEhC40Sj_NlLDt-1BQ",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 4.621729093183944,
			"x": 116.46332129343,
			"y": -443.0185758513936,
			"strokeColor": "#c92a2a",
			"backgroundColor": "transparent",
			"width": 61.24999999999999,
			"height": 65.00000000000006,
			"seed": 1371505966,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false
		},
		{
			"type": "freedraw",
			"version": 45,
			"versionNonce": 1577165870,
			"isDeleted": false,
			"id": "2fe5LlfbVYziabkfamBA3",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 532.0883212934301,
			"y": -530.5185758513937,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 8.75,
			"height": 98.75000000000006,
			"seed": 1413526898,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					1.25
				],
				[
					0,
					5
				],
				[
					0,
					15
				],
				[
					0,
					23.750000000000057
				],
				[
					-3.75,
					37.50000000000006
				],
				[
					-3.75,
					40.00000000000006
				],
				[
					-5,
					46.25000000000006
				],
				[
					-6.25,
					47.50000000000006
				],
				[
					-6.25,
					48.75000000000006
				],
				[
					-6.25,
					51.25000000000006
				],
				[
					-6.25,
					56.25000000000006
				],
				[
					-8.75,
					60.00000000000006
				],
				[
					-8.75,
					61.25000000000006
				],
				[
					-8.75,
					65.00000000000006
				],
				[
					-8.75,
					66.25000000000006
				],
				[
					-8.75,
					67.50000000000006
				],
				[
					-8.75,
					70.00000000000006
				],
				[
					-8.75,
					72.50000000000006
				],
				[
					-8.75,
					75.00000000000006
				],
				[
					-8.75,
					76.25000000000006
				],
				[
					-8.75,
					77.50000000000006
				],
				[
					-8.75,
					80.00000000000006
				],
				[
					-8.75,
					82.50000000000006
				],
				[
					-8.75,
					83.75000000000006
				],
				[
					-8.75,
					86.25000000000006
				],
				[
					-8.75,
					88.75000000000006
				],
				[
					-8.75,
					91.25000000000006
				],
				[
					-8.75,
					92.50000000000006
				],
				[
					-8.75,
					95.00000000000006
				],
				[
					-8.75,
					96.25000000000006
				],
				[
					-8.75,
					97.50000000000006
				],
				[
					-8.75,
					98.75000000000006
				],
				[
					-6.25,
					93.75000000000006
				],
				[
					-6.25,
					93.75000000000006
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 73,
			"versionNonce": 930905522,
			"isDeleted": false,
			"id": "oukDDH_da46SO7479A5Zf",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 534.5883212934301,
			"y": -535.5185758513937,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 165.0000000000001,
			"height": 110.00000000000011,
			"seed": 1510628594,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					1.25,
					2.5
				],
				[
					2.5,
					2.5
				],
				[
					7.5,
					2.5
				],
				[
					16.25,
					2.5
				],
				[
					32.500000000000114,
					2.5
				],
				[
					47.500000000000114,
					2.5
				],
				[
					63.750000000000114,
					2.5
				],
				[
					81.25000000000011,
					2.5
				],
				[
					88.75000000000011,
					2.5
				],
				[
					95.00000000000011,
					2.5
				],
				[
					96.25000000000011,
					2.5
				],
				[
					102.50000000000011,
					2.5
				],
				[
					107.50000000000011,
					2.5
				],
				[
					113.75000000000011,
					2.5
				],
				[
					121.25000000000011,
					2.5
				],
				[
					127.50000000000011,
					2.5
				],
				[
					133.7500000000001,
					2.5
				],
				[
					135.0000000000001,
					2.5
				],
				[
					141.2500000000001,
					2.5
				],
				[
					145.0000000000001,
					2.5
				],
				[
					146.2500000000001,
					2.5
				],
				[
					147.5000000000001,
					2.5
				],
				[
					148.7500000000001,
					2.5
				],
				[
					151.2500000000001,
					2.5
				],
				[
					153.7500000000001,
					2.5
				],
				[
					156.2500000000001,
					2.5
				],
				[
					157.5000000000001,
					2.5
				],
				[
					158.7500000000001,
					2.5
				],
				[
					161.2500000000001,
					2.5
				],
				[
					163.7500000000001,
					2.5
				],
				[
					165.0000000000001,
					2.5
				],
				[
					165.0000000000001,
					3.75
				],
				[
					165.0000000000001,
					6.25
				],
				[
					165.0000000000001,
					13.75
				],
				[
					165.0000000000001,
					21.25
				],
				[
					165.0000000000001,
					28.750000000000057
				],
				[
					165.0000000000001,
					35.00000000000006
				],
				[
					165.0000000000001,
					40.00000000000006
				],
				[
					165.0000000000001,
					45.00000000000006
				],
				[
					165.0000000000001,
					47.50000000000006
				],
				[
					165.0000000000001,
					52.50000000000006
				],
				[
					165.0000000000001,
					57.50000000000006
				],
				[
					165.0000000000001,
					60.00000000000006
				],
				[
					165.0000000000001,
					65.00000000000006
				],
				[
					165.0000000000001,
					71.25000000000006
				],
				[
					165.0000000000001,
					77.50000000000006
				],
				[
					165.0000000000001,
					81.25000000000006
				],
				[
					165.0000000000001,
					83.75000000000006
				],
				[
					165.0000000000001,
					86.25000000000006
				],
				[
					165.0000000000001,
					87.50000000000006
				],
				[
					165.0000000000001,
					90.00000000000006
				],
				[
					165.0000000000001,
					93.75000000000006
				],
				[
					165.0000000000001,
					96.25000000000006
				],
				[
					165.0000000000001,
					97.50000000000006
				],
				[
					165.0000000000001,
					98.75000000000006
				],
				[
					165.0000000000001,
					101.25000000000006
				],
				[
					165.0000000000001,
					103.75000000000006
				],
				[
					165.0000000000001,
					105.00000000000006
				],
				[
					165.0000000000001,
					106.25000000000011
				],
				[
					165.0000000000001,
					108.75000000000011
				],
				[
					165.0000000000001,
					110.00000000000011
				],
				[
					165.0000000000001,
					110.00000000000011
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 245,
			"versionNonce": 1792601710,
			"isDeleted": false,
			"id": "5YQtFGIl76w5AdE2ymEdV",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 3.6486911579821317,
			"x": 563.3383212934302,
			"y": -401.7685758513936,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 22.5,
			"height": 17.5,
			"seed": 925897970,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361952047,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					-1.25
				],
				[
					0,
					-2.5
				],
				[
					0,
					-5
				],
				[
					-1.25,
					-6.25
				],
				[
					-3.75,
					-6.25
				],
				[
					-6.25,
					-6.25
				],
				[
					-7.5,
					-6.25
				],
				[
					-10,
					-6.25
				],
				[
					-10,
					-2.5
				],
				[
					-10,
					2.5
				],
				[
					-10,
					7.5
				],
				[
					-6.25,
					10
				],
				[
					-2.5,
					11.25
				],
				[
					1.25,
					11.25
				],
				[
					7.5,
					11.25
				],
				[
					12.5,
					7.5
				],
				[
					12.5,
					0
				],
				[
					12.5,
					-2.5
				],
				[
					12.5,
					-5
				],
				[
					11.25,
					-5
				],
				[
					10,
					-5
				],
				[
					7.5,
					-5
				],
				[
					2.5,
					-5
				],
				[
					1.25,
					-5
				],
				[
					1.25,
					-3.75
				],
				[
					1.25,
					-1.25
				],
				[
					1.25,
					1.25
				],
				[
					2.5,
					1.25
				],
				[
					5,
					1.25
				],
				[
					7.5,
					1.25
				],
				[
					10,
					1.25
				],
				[
					10,
					-1.25
				],
				[
					8.75,
					-1.25
				],
				[
					7.5,
					-1.25
				],
				[
					5,
					-1.25
				],
				[
					2.5,
					-1.25
				],
				[
					0,
					-1.25
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "rectangle",
			"version": 393,
			"versionNonce": 984126450,
			"isDeleted": false,
			"id": "Vd2G70czsol8qSs0qKaeN",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1477.4995602557174,
			"y": -781.3630424993967,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 27.333950903195923,
			"height": 28.385256707164995,
			"seed": 1927676910,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 371,
			"versionNonce": 282090542,
			"isDeleted": false,
			"id": "Qx4yavw44EbWfjvXz57Z8",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1330.3167477000475,
			"y": -697.2585781818707,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 69.08862523453766,
			"height": 18.758512908851355,
			"seed": 9094894,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 356,
			"versionNonce": 1746224562,
			"isDeleted": false,
			"id": "wb1wSd_l8MlcE5rEd5o2u",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1477.4995602557174,
			"y": -634.1802299437263,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 69.08862523453766,
			"height": 18.758512908851355,
			"seed": 484109870,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 301,
			"versionNonce": 1125164654,
			"isDeleted": false,
			"id": "Y-V9zKlhxYR1Jh1LFUVmc",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1456.473444176336,
			"y": -655.2063460231077,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 10.513058039690739,
			"height": 8.410446431752591,
			"seed": 1697960882,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "f53caf82db3e8e00db7d05061f16bf81d3bb0638",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 258,
			"versionNonce": 814071666,
			"isDeleted": false,
			"id": "vFPKyvmMHSPEnP0GhnhNk",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1309.2906316206659,
			"y": -655.2063460231077,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 9.461752235721665,
			"height": 12.615669647628888,
			"seed": 1408825454,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "c0593c727850e71cac74aa0a31cccc093fd0d94d",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 265,
			"versionNonce": 1397598382,
			"isDeleted": false,
			"id": "il2Xc6PF",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1687.7607210495323,
			"y": -634.1802299437263,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 147.83987868315103,
			"height": 20.18507143620622,
			"seed": 1048808818,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"fontSize": 16.820892863505183,
			"fontFamily": 3,
			"text": "Posición final:",
			"rawText": "Posición final:",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Posición final:",
			"lineHeight": 1.2
		},
		{
			"type": "rectangle",
			"version": 379,
			"versionNonce": 272695602,
			"isDeleted": false,
			"id": "YA0ecMkDz5GIQenffi-kC",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1330.3167477000475,
			"y": -634.1802299437263,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 69.08862523453766,
			"height": 18.758512908851355,
			"seed": 123452078,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 108,
			"versionNonce": 1362125550,
			"isDeleted": false,
			"id": "xx4TuDNw",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1687.7607210495323,
			"y": -571.1018817055818,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 59.86907337254966,
			"height": 20.38096114810201,
			"seed": 60066,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "f741d58bbc50f5cf79393791f993e2684f09b3e9",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 171,
			"versionNonce": 1655573234,
			"isDeleted": false,
			"id": "rHKcAhSO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1398.6516249580368,
			"y": -571.1018817055818,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 48.739099145704145,
			"height": 19.75909424825844,
			"seed": 35648,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "b4ab4492bf3f2530b2a39af5461d45801dd9b5aa",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 248,
			"versionNonce": 1866585390,
			"isDeleted": false,
			"id": "nq6OeKmxjq7LofYFa1KUC",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1603.6562567320063,
			"y": -571.1018817055818,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 60.45008372822175,
			"height": 26.282645099226848,
			"seed": 676019374,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 555,
			"versionNonce": 2119425202,
			"isDeleted": false,
			"id": "8hS-RupxZ9FJfzp2GTogU",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1414.421212017573,
			"y": -508.0235334674374,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 78.84793529768055,
			"height": 31.539174119072218,
			"seed": 945292526,
			"groupIds": [],
			"roundness": null,
			"boundElements": [
				{
					"type": "text",
					"id": "2od61Woc"
				}
			],
			"updated": 1681361989633,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 236,
			"versionNonce": 1551163822,
			"isDeleted": false,
			"id": "2od61Woc",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1394.8488068687327,
			"y": -502.4222568518664,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 39.703125,
			"height": 20.33662088793025,
			"seed": 1635571438,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989634,
			"link": null,
			"locked": false,
			"fontSize": 16.947184073275206,
			"fontFamily": 3,
			"text": "Send",
			"rawText": "Send",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "8hS-RupxZ9FJfzp2GTogU",
			"originalText": "Send",
			"lineHeight": 1.2
		},
		{
			"type": "rectangle",
			"version": 741,
			"versionNonce": 2063980594,
			"isDeleted": false,
			"id": "ZmL6aSjY6TqTvKhQHd0Il",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1624.6823728113877,
			"y": -508.0235334674374,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 112.48972102469091,
			"height": 31.539174119072218,
			"seed": 1149035182,
			"groupIds": [],
			"roundness": null,
			"boundElements": [
				{
					"type": "text",
					"id": "UT8cN3JQ"
				}
			],
			"updated": 1681361989634,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 359,
			"versionNonce": 1085197870,
			"isDeleted": false,
			"id": "UT8cN3JQ",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1612.9980591740423,
			"y": -502.39725900415937,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 89.12109375,
			"height": 20.286625192516148,
			"seed": 1089814894,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361989634,
			"link": null,
			"locked": false,
			"fontSize": 16.905520993763457,
			"fontFamily": 3,
			"text": "Clear All",
			"rawText": "Clear All",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "ZmL6aSjY6TqTvKhQHd0Il",
			"originalText": "Clear All",
			"lineHeight": 1.2
		},
		{
			"type": "image",
			"version": 685,
			"versionNonce": 917329714,
			"isDeleted": false,
			"id": "9wJJ9KMMaTnDXSOsNBrVy",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 4.704056761079251,
			"x": -798.9183953780415,
			"y": -841.3616528116812,
			"strokeColor": "transparent",
			"backgroundColor": "#ced4da",
			"width": 178.36605488381508,
			"height": 371.0286256170963,
			"seed": 1958614894,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361999289,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "0506cd050882baab86d0b25e8b6abfeee55e8e73",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "line",
			"version": 1212,
			"versionNonce": 917750126,
			"isDeleted": false,
			"id": "SyFpGG37xxAAqlIQcFRmC",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1166.6878915067732,
			"y": -657.7489811819319,
			"strokeColor": "#000000",
			"backgroundColor": "#fa5252",
			"width": 241.49125439113004,
			"height": 133.87440773043681,
			"seed": 247100786,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361995899,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					7.105427357601002e-15,
					66.93720386521841
				],
				[
					144.894752634678,
					66.93720386521838
				],
				[
					144.894752634678,
					100.40580579782761
				],
				[
					241.49125439113004,
					33.46860193260915
				],
				[
					144.894752634678,
					-33.4686019326092
				],
				[
					144.894752634678,
					1.4210854715202004e-14
				],
				[
					0,
					0
				]
			]
		},
		{
			"type": "image",
			"version": 111,
			"versionNonce": 1457286382,
			"isDeleted": false,
			"id": "7AYwHic3",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -799.0646258027764,
			"y": -550.0585462357583,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 178.42011834319507,
			"height": 40.69230769230765,
			"seed": 65548,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681361999289,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "5a07fc370d0cb2f6dc1ce56565e77d228684574b",
			"scale": [
				1,
				1
			]
		}
	],
	"appState": {
		"theme": "light",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#000000",
		"currentItemBackgroundColor": "#fa5252",
		"currentItemFillStyle": "solid",
		"currentItemStrokeWidth": 0.5,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 0,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 3,
		"currentItemFontSize": 16,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": "triangle",
		"currentItemEndArrowhead": "triangle",
		"scrollX": 2004.4107796489307,
		"scrollY": 1151.9960462357578,
		"zoom": {
			"value": 0.6500000000000001
		},
		"currentItemRoundness": "sharp",
		"gridSize": null,
		"colorPalette": {},
		"currentStrokeOptions": null,
		"previousGridSize": null
	},
	"files": {}
}
```
%%