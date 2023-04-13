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
36a687664f3d1ed19657e840a30673f9f9cd359c: $$x$$
0b8b766858df01b504e97c1948dca6480bfc258e: $$y$$
60ce7bac40498b79ca9eb244920756c26223d4bf: $$\theta_{inicial}$$
fb4bed4385ca54ae26e093dbc7f2607c2ea8d060: $$O$$
769a2a49ad68347ff3a4821590c8eeb6e88ebc33: $$d_{min}$$
0506cd050882baab86d0b25e8b6abfeee55e8e73: [[attachments/Pasted Image 20230412235321_195.png]]
1d6ec9d6c27d48228045d52183f9e314c44dfcd3: [[attachments/Pasted Image 20230413001826_120.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/1.8.21",
	"elements": [
		{
			"type": "line",
			"version": 226,
			"versionNonce": 1356523186,
			"isDeleted": false,
			"id": "9nnCbxkw0Q6Z4H18LVBm1",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.2182692641313,
			"y": -889.5282602581887,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.8356178941188,
			"height": 0,
			"seed": 737759090,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.8356178941188,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 256,
			"versionNonce": 1806800238,
			"isDeleted": false,
			"id": "M61nF421NHMirfHHVmpTi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.6273685173114,
			"y": -710.4271812203544,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.6570890015274,
			"height": 0,
			"seed": 647698606,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.6570890015274,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 276,
			"versionNonce": 300892274,
			"isDeleted": false,
			"id": "nLFubkQ1nd8RknEI1GEIi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.2189976747618,
			"y": -859.6779756372478,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.77779940755653,
			"height": 0,
			"seed": 1992462642,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.77779940755653,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 311,
			"versionNonce": 939046830,
			"isDeleted": false,
			"id": "g6DLmU3z5xWd9VeqVJiGP",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.5702782696842,
			"y": -680.5770716781893,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.30510464924964,
			"height": 0,
			"seed": 961532654,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.30510464924964,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 303,
			"versionNonce": 1792172594,
			"isDeleted": false,
			"id": "j_8ATyXbaqGa562wSjjD8",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.219725630791,
			"y": -829.8281545761162,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.24728616268743,
			"height": 0,
			"seed": 578657010,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.24728616268743,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 330,
			"versionNonce": 732008942,
			"isDeleted": false,
			"id": "X51AGkrNyjAhwsy2Gz-l-",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.6866437260132,
			"y": -650.7267130533403,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.5540223445926,
			"height": 0,
			"seed": 32720174,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.5540223445926,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 343,
			"versionNonce": 107695090,
			"isDeleted": false,
			"id": "x0KVR95GxgfhwPIVFAl7j",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.3360911306359,
			"y": -799.9777515775298,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.54145202840317,
			"height": 0,
			"seed": 1035037874,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.54145202840317,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 353,
			"versionNonce": 1639261230,
			"isDeleted": false,
			"id": "GZmhyKv2Zb3m4weEQFmXU",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.7451907949014,
			"y": -620.8762533536246,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.7903697237462,
			"height": 0,
			"seed": 1106145134,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.7903697237462,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 334,
			"versionNonce": 448855474,
			"isDeleted": false,
			"id": "GkJy2vUBGyskcJdyYPSaa",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.3946381995238,
			"y": -770.1272918778141,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.77779940755653,
			"height": 0,
			"seed": 1845823090,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.77779940755653,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 357,
			"versionNonce": 740060782,
			"isDeleted": false,
			"id": "Uyaf-KLxZHdVBDJGoqhZ6",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.7683741045178,
			"y": -591.0262225337851,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.51865900591235,
			"height": 0,
			"seed": 629821870,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.51865900591235,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 322,
			"versionNonce": 83523442,
			"isDeleted": false,
			"id": "6ZZG15GwNbjDQo6aXlz9n",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.4531850411113,
			"y": -740.2770639580027,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.77779940755653,
			"height": 0,
			"seed": 205482034,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.77779940755653,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 750,
			"versionNonce": 933261486,
			"isDeleted": false,
			"id": "eah3oSm4bO6AYRrXAbcpk",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1329.9959464027427,
			"y": -740.0293453860097,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.1078479275517,
			"height": 3.6209439590998834e-13,
			"seed": 1743776750,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.1078479275517,
					3.6209439590998834e-13
				]
			]
		},
		{
			"type": "line",
			"version": 497,
			"versionNonce": 1700706610,
			"isDeleted": false,
			"id": "GWCf2yeRfnFYKo_T5ih4P",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1509.12931214026,
			"y": -740.3486909151468,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.1717190911789,
			"height": 3.400520839101863e-13,
			"seed": 1078432242,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.1717190911789,
					3.400520839101863e-13
				]
			]
		},
		{
			"type": "line",
			"version": 512,
			"versionNonce": 803875566,
			"isDeleted": false,
			"id": "cAtEQIasKjcFBtAxhCyDj",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1359.9041062113733,
			"y": -740.0300738522459,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.22348490067606,
			"height": 3.6957183355308076e-13,
			"seed": 1999126062,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.22348490067606,
					3.6957183355308076e-13
				]
			]
		},
		{
			"type": "line",
			"version": 553,
			"versionNonce": 995410674,
			"isDeleted": false,
			"id": "1YRp-UpPaPz5DR246IuHG",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1539.1554138585634,
			"y": -740.4675928436587,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.5237034434566,
			"height": 3.4038626164146987e-13,
			"seed": 488932274,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.5237034434566,
					3.4038626164146987e-13
				]
			]
		},
		{
			"type": "line",
			"version": 563,
			"versionNonce": 1669504302,
			"isDeleted": false,
			"id": "veXjKQQ9VkoB5qM9rDkor",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1389.814344152037,
			"y": -740.2646125314604,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.3441953067052,
			"height": 3.5986290310257565e-13,
			"seed": 404506734,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.3441953067052,
					3.5986290310257565e-13
				]
			]
		},
		{
			"type": "line",
			"version": 561,
			"versionNonce": 23303346,
			"isDeleted": false,
			"id": "wymGXnk8uEMTE4YQ7pY2m",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1568.9166658131132,
			"y": -740.3790570352949,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.3451745508654,
			"height": 3.4021676438993396e-13,
			"seed": 1023229298,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.3451745508654,
					3.4021676438993396e-13
				]
			]
		},
		{
			"type": "line",
			"version": 557,
			"versionNonce": 1741866862,
			"isDeleted": false,
			"id": "gvLcSQUySsZqGdU0wqXIW",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1419.6965702904984,
			"y": -740.2912238526604,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.40806647033236,
			"height": 3.4027647465497135e-13,
			"seed": 177539758,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.40806647033236,
					3.4027647465497135e-13
				]
			]
		},
		{
			"type": "line",
			"version": 597,
			"versionNonce": 1228025458,
			"isDeleted": false,
			"id": "8kwAeyPSg0Vc8GnadGGUo",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1598.9323721705662,
			"y": -740.6034071944849,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.67678182390057,
			"height": 3.405315959029342e-13,
			"seed": 1561902898,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.67678182390057,
					3.405315959029342e-13
				]
			]
		},
		{
			"type": "line",
			"version": 615,
			"versionNonce": 1025747374,
			"isDeleted": false,
			"id": "yuVTC0x-oWV328rPThhi5",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1449.4578222450473,
			"y": -740.2026880442962,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.229537577741,
			"height": 3.597540458210191e-13,
			"seed": 758875374,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.229537577741,
					3.597540458210191e-13
				]
			]
		},
		{
			"type": "line",
			"version": 612,
			"versionNonce": 1468502066,
			"isDeleted": false,
			"id": "_mFmUWF2aR_qQ0ouksY5b",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1628.724668201557,
			"y": -740.7197724114238,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.5611448507762,
			"height": 3.404218089164358e-13,
			"seed": 2044594418,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.5611448507762,
					3.404218089164358e-13
				]
			]
		},
		{
			"type": "line",
			"version": 548,
			"versionNonce": 1922974702,
			"isDeleted": false,
			"id": "V7LDYAGU-cEZBH_5gZ06h",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1479.2790842204483,
			"y": -740.2901440735595,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.1717190911789,
			"height": 3.400520839101863e-13,
			"seed": 563656494,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.1717190911789,
					3.400520839101863e-13
				]
			]
		},
		{
			"type": "line",
			"version": 727,
			"versionNonce": 1078639090,
			"isDeleted": false,
			"id": "GVxoJtePuG0jBe5EnKdmi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1299.871892675486,
			"y": -739.9123294750381,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.22348490067606,
			"height": 3.401012309267053e-13,
			"seed": 1792285362,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.22348490067606,
					3.401012309267053e-13
				]
			]
		},
		{
			"type": "line",
			"version": 534,
			"versionNonce": 1246467630,
			"isDeleted": false,
			"id": "gyhnpK4hF5x91YxfikYCW",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1480.0003449627684,
			"y": -561.1921109558896,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.6921144655989,
			"height": 0,
			"seed": 1880465774,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.6921144655989,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 819,
			"versionNonce": 42118066,
			"isDeleted": false,
			"id": "6cQkWTORCdNBR9t4d2uLt",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 1.5727576775313183,
			"x": -1658.7919358148763,
			"y": -740.6604413159648,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.56410565480087,
			"height": 3.4042461993563403e-13,
			"seed": 2124543090,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.56410565480087,
					3.4042461993563403e-13
				]
			]
		},
		{
			"type": "line",
			"version": 382,
			"versionNonce": 1561632878,
			"isDeleted": false,
			"id": "GXrkAS4-cRJQdjxhOpzF_",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 30,
			"angle": 0.0019613507364226734,
			"x": -1479.1592652320658,
			"y": -919.6115876858364,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 358.8356178941188,
			"height": 0,
			"seed": 737887150,
			"groupIds": [
				"RCvuMXfDjAY5uzpyUTjkY"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363355117,
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
					358.8356178941188,
					0
				]
			]
		},
		{
			"type": "rectangle",
			"version": 511,
			"versionNonce": 1786934318,
			"isDeleted": false,
			"id": "CcSqkM_8WmnxmJb6t7IQ3",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1674.4273877161988,
			"y": -192.89813804552796,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 30.35505772330076,
			"height": 31.52255994342771,
			"seed": 2071916590,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 465,
			"versionNonce": 1278258610,
			"isDeleted": false,
			"id": "oHj41I5riU4kcMoiCACBD",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1440.9269436908082,
			"y": -99.49796043537174,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 76.72470088371593,
			"height": 20.831812575067165,
			"seed": 1729825266,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 570,
			"versionNonce": 1321188974,
			"isDeleted": false,
			"id": "sl0o3N6c",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1627.7272989111207,
			"y": -192.89813804552796,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 87.5625,
			"height": 22.416042626437484,
			"seed": 405324786,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
			"link": null,
			"locked": false,
			"fontSize": 18.680035522031236,
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
			"version": 385,
			"versionNonce": 1291069298,
			"isDeleted": false,
			"id": "Vr89c0IA",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1394.2268548857303,
			"y": -192.89813804552796,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 87.5625,
			"height": 22.416042626437484,
			"seed": 1574511538,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
			"link": null,
			"locked": false,
			"fontSize": 18.680035522031236,
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
			"version": 570,
			"versionNonce": 1230618798,
			"isDeleted": false,
			"id": "bc5MSaWzpr4ztGJimdH8J",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1664.5736969233024,
			"y": -184.42024352594262,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 33.85756438368161,
			"height": 36.19256882393552,
			"seed": 2122285938,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					1.1675022201269523
				],
				[
					0,
					4.670008880507809
				],
				[
					0,
					9.340017761015618
				],
				[
					0,
					11.675022201269522
				],
				[
					0,
					14.010026641523428
				],
				[
					0,
					16.345031081777332
				],
				[
					1.1675022201269523,
					16.345031081777332
				],
				[
					4.670008880507809,
					11.675022201269522
				],
				[
					14.010026641523428,
					0
				],
				[
					24.517546622665996,
					-10.50751998114257
				],
				[
					31.52255994342771,
					-17.512533301904284
				],
				[
					33.85756438368161,
					-19.847537742158188
				],
				[
					33.85756438368161,
					-19.847537742158188
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "image",
			"version": 407,
			"versionNonce": 1654810930,
			"isDeleted": false,
			"id": "JlPumdcV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1417.5768992882693,
			"y": -122.84800483791082,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 11.675022201269522,
			"height": 9.340017761015618,
			"seed": 13749,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
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
			"version": 366,
			"versionNonce": 1576631022,
			"isDeleted": false,
			"id": "DfZ4Vtgw",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1254.1265884704962,
			"y": -122.84800483791082,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 10.50751998114257,
			"height": 14.010026641523428,
			"seed": 38693,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
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
			"version": 369,
			"versionNonce": 883061490,
			"isDeleted": false,
			"id": "lmNnebBv",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1674.4273877161988,
			"y": -99.49796043537174,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 186.0703125,
			"height": 22.416042626437484,
			"seed": 2058136878,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324723,
			"link": null,
			"locked": false,
			"fontSize": 18.680035522031236,
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
			"version": 85,
			"versionNonce": 858254638,
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
			"updated": 1681363324723,
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
			"version": 96,
			"versionNonce": 1702577330,
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
			"updated": 1681363324724,
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
			"version": 118,
			"versionNonce": 911087470,
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
			"updated": 1681363324724,
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
			"version": 93,
			"versionNonce": 785636978,
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
			"updated": 1681363324724,
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
			"version": 86,
			"versionNonce": 1068825006,
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
			"updated": 1681363324724,
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
			"version": 72,
			"versionNonce": 2104705074,
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
			"updated": 1681363324724,
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
			"version": 90,
			"versionNonce": 914723822,
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
			"updated": 1681363324724,
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
			"version": 77,
			"versionNonce": 222325234,
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
			"updated": 1681363324724,
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
			"version": 218,
			"versionNonce": 885581358,
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
			"updated": 1681363324724,
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
			"version": 829,
			"versionNonce": 88234930,
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
			"updated": 1681363324724,
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
			"version": 406,
			"versionNonce": 728232046,
			"isDeleted": false,
			"id": "6c009Q9717HIO5FwYzxzn",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1270.4716195522735,
			"y": 40.602305979862535,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 67.13137765729975,
			"height": 29.187555503173805,
			"seed": 1917207214,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 172,
			"versionNonce": 329258354,
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
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "ellipse",
			"version": 63,
			"versionNonce": 103527086,
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
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "ellipse",
			"version": 81,
			"versionNonce": 161519410,
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
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 39,
			"versionNonce": 1337797870,
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
			"updated": 1681363324724,
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
			"version": 242,
			"versionNonce": 2007687410,
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
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "freedraw",
			"version": 64,
			"versionNonce": 1436901166,
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
			"updated": 1681363324724,
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
			"version": 92,
			"versionNonce": 1229320882,
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
			"updated": 1681363324724,
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
			"version": 264,
			"versionNonce": 1280133486,
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
			"updated": 1681363324724,
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
			"version": 518,
			"versionNonce": 1629015154,
			"isDeleted": false,
			"id": "Vd2G70czsol8qSs0qKaeN",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1440.9269436908082,
			"y": -192.89813804552796,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 30.35505772330076,
			"height": 31.52255994342771,
			"seed": 1927676910,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 496,
			"versionNonce": 1929243566,
			"isDeleted": false,
			"id": "Qx4yavw44EbWfjvXz57Z8",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1277.4766328730354,
			"y": -99.49796043537174,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 76.72470088371593,
			"height": 20.831812575067165,
			"seed": 9094894,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324724,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 481,
			"versionNonce": 887778866,
			"isDeleted": false,
			"id": "wb1wSd_l8MlcE5rEd5o2u",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1440.9269436908082,
			"y": -29.447827227754715,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 76.72470088371593,
			"height": 20.831812575067165,
			"seed": 484109870,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 426,
			"versionNonce": 937444846,
			"isDeleted": false,
			"id": "Y-V9zKlhxYR1Jh1LFUVmc",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1417.5768992882693,
			"y": -52.79787163029357,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 11.675022201269522,
			"height": 9.340017761015618,
			"seed": 1697960882,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
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
			"version": 383,
			"versionNonce": 1772214258,
			"isDeleted": false,
			"id": "vFPKyvmMHSPEnP0GhnhNk",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1254.1265884704962,
			"y": -52.79787163029357,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 10.50751998114257,
			"height": 14.010026641523428,
			"seed": 1408825454,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
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
			"version": 390,
			"versionNonce": 1543329838,
			"isDeleted": false,
			"id": "il2Xc6PF",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1674.4273877161988,
			"y": -29.447827227754715,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 164.1796875,
			"height": 22.416042626437484,
			"seed": 1048808818,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false,
			"fontSize": 18.680035522031236,
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
			"version": 504,
			"versionNonce": 1866860978,
			"isDeleted": false,
			"id": "YA0ecMkDz5GIQenffi-kC",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1277.4766328730354,
			"y": -29.447827227754715,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 76.72470088371593,
			"height": 20.831812575067165,
			"seed": 123452078,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 233,
			"versionNonce": 389948014,
			"isDeleted": false,
			"id": "xx4TuDNw",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1674.4273877161988,
			"y": 40.602305979862535,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 66.48615066663446,
			"height": 22.633583205662795,
			"seed": 60066,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
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
			"version": 296,
			"versionNonce": 486409074,
			"isDeleted": false,
			"id": "rHKcAhSO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1353.3642771812868,
			"y": 40.602305979862535,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 54.1260271224291,
			"height": 21.94298396855234,
			"seed": 35648,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
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
			"version": 373,
			"versionNonce": 1013687470,
			"isDeleted": false,
			"id": "nq6OeKmxjq7LofYFa1KUC",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1581.0272101060425,
			"y": 40.602305979862535,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 67.13137765729975,
			"height": 29.187555503173805,
			"seed": 676019374,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 681,
			"versionNonce": 1292944690,
			"isDeleted": false,
			"id": "8hS-RupxZ9FJfzp2GTogU",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1371.0954772284304,
			"y": 110.16497248938396,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 88,
			"height": 36,
			"seed": 945292526,
			"groupIds": [],
			"roundness": null,
			"boundElements": [
				{
					"type": "text",
					"id": "2od61Woc"
				}
			],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 397,
			"versionNonce": 1563352814,
			"isDeleted": false,
			"id": "2od61Woc",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1349.4665709784304,
			"y": 116.70956328182388,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 44.7421875,
			"height": 22.910818415120165,
			"seed": 1635571438,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false,
			"fontSize": 19.092348679266806,
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
			"version": 867,
			"versionNonce": 2028293874,
			"isDeleted": false,
			"id": "ZmL6aSjY6TqTvKhQHd0Il",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1604.4158857317896,
			"y": 110.16497248938396,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 125,
			"height": 36,
			"seed": 1149035182,
			"groupIds": [],
			"roundness": null,
			"boundElements": [
				{
					"type": "text",
					"id": "UT8cN3JQ"
				}
			],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 521,
			"versionNonce": 1846595886,
			"isDeleted": false,
			"id": "UT8cN3JQ",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1591.9080045672388,
			"y": 116.79117578304987,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 99.98423767089844,
			"height": 22.74759341266817,
			"seed": 1089814894,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false,
			"fontSize": 18.956327843890143,
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
			"version": 810,
			"versionNonce": 1426235570,
			"isDeleted": false,
			"id": "9wJJ9KMMaTnDXSOsNBrVy",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 4.704056761079251,
			"x": -667.0136334732796,
			"y": -258.02831947834807,
			"strokeColor": "transparent",
			"backgroundColor": "#ced4da",
			"width": 178.36605488381508,
			"height": 371.0286256170962,
			"seed": 1958614894,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
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
			"version": 1376,
			"versionNonce": 1786411886,
			"isDeleted": false,
			"id": "SyFpGG37xxAAqlIQcFRmC",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1024.7831296020113,
			"y": -85.84421927716994,
			"strokeColor": "#000000",
			"backgroundColor": "#fa5252",
			"width": 241.49125439113004,
			"height": 133.87440773043681,
			"seed": 247100786,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
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
			"version": 236,
			"versionNonce": 1829747314,
			"isDeleted": false,
			"id": "7AYwHic3",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -667.1598638980145,
			"y": 33.27478709757486,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 178.42011834319507,
			"height": 40.69230769230765,
			"seed": 65548,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "5a07fc370d0cb2f6dc1ce56565e77d228684574b",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 1106,
			"versionNonce": 2025119150,
			"isDeleted": false,
			"id": "3SKupjShpxbooAlDslSoF",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1809.723547218049,
			"y": -332.92252690195073,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 762.7846201763067,
			"height": 501.0957170242527,
			"seed": 140348530,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 889,
			"versionNonce": 1070832690,
			"isDeleted": false,
			"id": "YUoULYHsOlxaJjkD8miiY",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1810.4758951277663,
			"y": -329.86704739572815,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 128.12453690233346,
			"height": 28.147467696483357,
			"seed": 1600465838,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 961,
			"versionNonce": 233371630,
			"isDeleted": false,
			"id": "Gfju7UCzbNahfKB7PeQQy",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1564.344237162569,
			"y": -332.7457460620169,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 514.0733698194568,
			"height": 33.52912273290804,
			"seed": 362229298,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 946,
			"versionNonce": 1530217970,
			"isDeleted": false,
			"id": "4yIvWxHXTX1TZ9-QAKAE-",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1814.2872422223425,
			"y": -285.34218298223914,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 764.2462829437945,
			"height": 3.3001303756242146,
			"seed": 358581742,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324725,
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
					764.2462829437945,
					-3.3001303756242146
				]
			]
		},
		{
			"type": "freedraw",
			"version": 899,
			"versionNonce": 304073262,
			"isDeleted": false,
			"id": "4KQTy-NGJIYwYzrysP80Z",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1756.6910448922415,
			"y": -313.90147609961105,
			"strokeColor": "#e67700",
			"backgroundColor": "transparent",
			"width": 0.00017886010357958857,
			"height": 0.00017886010357958857,
			"seed": 381065202,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324725,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.00017886010357958857,
					0.00017886010357958857
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 949,
			"versionNonce": 2017179570,
			"isDeleted": false,
			"id": "Pr1A_hMaGL9_uqT0UfxBD",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1783.2255700491207,
			"y": -313.5226789880361,
			"strokeColor": "#c92a2a",
			"backgroundColor": "transparent",
			"width": 0.00017886010357958857,
			"height": 0.00017886010357958857,
			"seed": 1200920622,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.00017886010357958857,
					0.00017886010357958857
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 965,
			"versionNonce": 71455854,
			"isDeleted": false,
			"id": "BGw2ZzRpyt1jqKMvT0nC6",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1732.3984886145263,
			"y": -313.8071752759075,
			"strokeColor": "#087f5b",
			"backgroundColor": "transparent",
			"width": 0.00017886010357958857,
			"height": 0.00017886010357958857,
			"seed": 465750450,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.00017886010357958857,
					0.00017886010357958857
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "line",
			"version": 1796,
			"versionNonce": 386789746,
			"isDeleted": false,
			"id": "_HjI6SCijQ-1b9y0gLO2V",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1593.2434544306918,
			"y": -323.60470113824124,
			"strokeColor": "#000000",
			"backgroundColor": "#efefef",
			"width": 13.259980637567608,
			"height": 14.725875598965914,
			"seed": 233661038,
			"groupIds": [
				"zgB9YfffpQvNtJ_F8Y8w1",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					13.259980637567608,
					14.725875598965914
				]
			]
		},
		{
			"type": "line",
			"version": 1938,
			"versionNonce": 504993454,
			"isDeleted": false,
			"id": "_1VGD8Iqs_uJ-v3-n8YM1",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1581.2155206161367,
			"y": -323.8251999076173,
			"strokeColor": "#000000",
			"backgroundColor": "#efefef",
			"width": 12.584930721832684,
			"height": 13.599219057715906,
			"seed": 467846002,
			"groupIds": [
				"zgB9YfffpQvNtJ_F8Y8w1",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					-12.584930721832684,
					13.599219057715906
				]
			]
		},
		{
			"type": "line",
			"version": 1583,
			"versionNonce": 452129586,
			"isDeleted": false,
			"id": "Daxdb_6tJcc_o11_YBSxK",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1546.5766153100258,
			"y": -328.2942749523845,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 0.43490932390403525,
			"height": 20.20639387905593,
			"seed": 456320174,
			"groupIds": [
				"rmG_KB-9g5ACoFf9hZd3l",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					0.43490932390403525,
					20.20639387905593
				]
			]
		},
		{
			"type": "line",
			"version": 1553,
			"versionNonce": 2018414830,
			"isDeleted": false,
			"id": "GMOGqmi0EVAi5WFFhx9u1",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1556.6217539660222,
			"y": -317.5647610841985,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 21.348558656881576,
			"height": 0.6460303549254117,
			"seed": 291341618,
			"groupIds": [
				"rmG_KB-9g5ACoFf9hZd3l",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					21.348558656881576,
					-0.6460303549254117
				]
			]
		},
		{
			"type": "rectangle",
			"version": 1070,
			"versionNonce": 1716632818,
			"isDeleted": false,
			"id": "LCUcZ4tzPyVK55UDV5PYV",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1698.5328483016285,
			"y": -273.64768547978906,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 564.4735740041921,
			"height": 33.32471573616463,
			"seed": 1628315374,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 1
			},
			"boundElements": [],
			"updated": 1681363324726,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 2050,
			"versionNonce": 778715950,
			"isDeleted": false,
			"id": "aev0KWtNEYpmQau7EnWBg",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 1.5707963267948957,
			"x": -1797.701445335137,
			"y": -256.8692601187056,
			"strokeColor": "#000000",
			"backgroundColor": "#c8c8c8",
			"width": 26.35925964162713,
			"height": 14.048994265353722,
			"seed": 362417906,
			"groupIds": [
				"sHtY0XkOygTDAbOeyGmmt",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					13.737349977273137,
					14.048994265353722
				],
				[
					26.35925964162713,
					1.1941714881131809
				]
			]
		},
		{
			"type": "line",
			"version": 1648,
			"versionNonce": 1991331506,
			"isDeleted": false,
			"id": "4rrJJ2POHR4dww6pp8QCs",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 1.5753595573144006,
			"x": -1776.2696731581677,
			"y": -237.08416643776786,
			"strokeColor": "#000000",
			"backgroundColor": "#c8c8c8",
			"width": 1.0060880826351857,
			"height": 28.879618677587082,
			"seed": 872943918,
			"groupIds": [
				"sHtY0XkOygTDAbOeyGmmt",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					-1.0060880826351857,
					-28.879618677587082
				]
			]
		},
		{
			"type": "line",
			"version": 2065,
			"versionNonce": 47557998,
			"isDeleted": false,
			"id": "Nw2xvmIQD3-5J12wSvkXn",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 4.71238898038469,
			"x": -1731.1212695049394,
			"y": -259.62822330248434,
			"strokeColor": "#000000",
			"backgroundColor": "#c8c8c8",
			"width": 26.35925964162713,
			"height": 14.048994265353722,
			"seed": 2099208370,
			"groupIds": [
				"6qazGXrrutAE53B8B00zh",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					13.737349977273137,
					14.048994265353722
				],
				[
					26.35925964162713,
					1.1941714881131809
				]
			]
		},
		{
			"type": "line",
			"version": 1645,
			"versionNonce": 12101746,
			"isDeleted": false,
			"id": "YVGHLmLrqIteUw0MZ6bcm",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 1.5753595573144006,
			"x": -1729.5213099846387,
			"y": -234.77775559440147,
			"strokeColor": "#000000",
			"backgroundColor": "#c8c8c8",
			"width": 1.0060880826351857,
			"height": 28.879618677587082,
			"seed": 1871297390,
			"groupIds": [
				"6qazGXrrutAE53B8B00zh",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					-1.0060880826351857,
					-28.879618677587082
				]
			]
		},
		{
			"type": "line",
			"version": 1641,
			"versionNonce": 47828910,
			"isDeleted": false,
			"id": "zbcQQ6KeyZSBnftJdXAbU",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1108.1960441827914,
			"y": -267.4284985753542,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 34.63512039926226,
			"height": 1.837584025579445,
			"seed": 1939110514,
			"groupIds": [
				"_Ia1rEoZFHA45kSbei9Cb",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					34.63512039926226,
					-1.837584025579445
				]
			]
		},
		{
			"type": "line",
			"version": 1615,
			"versionNonce": 204393010,
			"isDeleted": false,
			"id": "oAy7HMEmDwQyDrtGnl7IP",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1108.8982098237968,
			"y": -253.85329618257992,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 32.6140220120906,
			"height": 3.552748541805499,
			"seed": 433855918,
			"groupIds": [
				"_Ia1rEoZFHA45kSbei9Cb",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					32.6140220120906,
					-3.552748541805499
				]
			]
		},
		{
			"type": "line",
			"version": 1666,
			"versionNonce": 715106798,
			"isDeleted": false,
			"id": "JSjUtshwmNlTK41WIuQEv",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1108.1890574599952,
			"y": -243.45355930061635,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 32.6140220120906,
			"height": 3.552748541805499,
			"seed": 398482482,
			"groupIds": [
				"_Ia1rEoZFHA45kSbei9Cb",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					32.6140220120906,
					-3.552748541805499
				]
			]
		},
		{
			"type": "line",
			"version": 968,
			"versionNonce": 268088306,
			"isDeleted": false,
			"id": "tcMcVbltCXcB47HwgoARj",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1814.0453805322381,
			"y": -227.85228348940666,
			"strokeColor": "#000000",
			"backgroundColor": "#ced4da",
			"width": 759.8966242457075,
			"height": 0.9295936128741423,
			"seed": 136853486,
			"groupIds": [
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					759.8966242457075,
					0.9295936128741423
				]
			]
		},
		{
			"type": "ellipse",
			"version": 1512,
			"versionNonce": 154156078,
			"isDeleted": false,
			"id": "5Ku8NeCYbPtwAAZJc2n9H",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1689.9040303348938,
			"y": -265.4736701511415,
			"strokeColor": "#000000",
			"backgroundColor": "#c8c8c8",
			"width": 15.34608274839236,
			"height": 15.34608274839236,
			"seed": 394921458,
			"groupIds": [
				"A5z2g5qRhYcFY8GAjjOxN",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324726,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 1513,
			"versionNonce": 237200818,
			"isDeleted": false,
			"id": "3GoRvGkQN00DuhtSw1k6C",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1676.312876881674,
			"y": -251.22919250441691,
			"strokeColor": "#000000",
			"backgroundColor": "#c8c8c8",
			"width": 9.701361716497448,
			"height": 8.079107488313978,
			"seed": 41355822,
			"groupIds": [
				"A5z2g5qRhYcFY8GAjjOxN",
				"7onF4C3YF1znyNiU21PsQ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363324726,
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
					9.701361716497448,
					8.079107488313978
				]
			]
		},
		{
			"type": "arrow",
			"version": 85,
			"versionNonce": 2056788914,
			"isDeleted": false,
			"id": "4GavzaUu3r2WT7d6T731d",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1480,
			"y": -560,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 120,
			"seed": 2052734066,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363381456,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "zRoP3J1y",
				"focus": 2.3290223564314485,
				"gap": 12.251662946372448
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "triangle",
			"points": [
				[
					0,
					0
				],
				[
					0,
					-120
				]
			]
		},
		{
			"type": "arrow",
			"version": 183,
			"versionNonce": 1480447346,
			"isDeleted": false,
			"id": "1qJ5XiSgOWQzI-MzjKkbB",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1480,
			"y": -560,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 120,
			"height": 0,
			"seed": 912963058,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363381456,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "zRoP3J1y",
				"focus": -1.023637368113243,
				"gap": 12.251662946372448
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "triangle",
			"points": [
				[
					0,
					0
				],
				[
					120,
					0
				]
			]
		},
		{
			"type": "ellipse",
			"version": 186,
			"versionNonce": 959417966,
			"isDeleted": false,
			"id": "9OtxBoDq4f4esvdxKOaxg",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1429.168912598808,
			"y": -868.7370585523719,
			"strokeColor": "#000000",
			"backgroundColor": "#fa5252",
			"width": 20,
			"height": 20,
			"seed": 1746133998,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363397931,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 28,
			"versionNonce": 1632051506,
			"isDeleted": false,
			"id": "HaUgma5u",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1380,
			"y": -540,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 25,
			"height": 20,
			"seed": 67431,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324727,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "36a687664f3d1ed19657e840a30673f9f9cd359c",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 28,
			"versionNonce": 320619246,
			"isDeleted": false,
			"id": "2g29rSKh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1520,
			"y": -680,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 20,
			"height": 26.666666666666668,
			"seed": 79412,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324727,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "0b8b766858df01b504e97c1948dca6480bfc258e",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 254,
			"versionNonce": 1844456178,
			"isDeleted": false,
			"id": "ye1v-YRiXdC5P3ey4e-Gk",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 1.0108569927257447,
			"x": -1376.9238826691033,
			"y": -776.9238826691031,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 121.95966035165699,
			"height": 121.95966035165699,
			"seed": 1652953070,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324727,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1d6ec9d6c27d48228045d52183f9e314c44dfcd3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "line",
			"version": 23,
			"versionNonce": 1219605806,
			"isDeleted": false,
			"id": "TIGqFhFJ3MB2e12yh0kww",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1340,
			"y": -700,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 100,
			"height": 0,
			"seed": 1838023474,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324727,
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
					100,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 29,
			"versionNonce": 475135154,
			"isDeleted": false,
			"id": "x3Lp6hIP5Lxliz5CJcvXy",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1340,
			"y": -700,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 80,
			"height": 60,
			"seed": 1704883822,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324727,
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
					80,
					-60
				]
			]
		},
		{
			"type": "freedraw",
			"version": 21,
			"versionNonce": 123658094,
			"isDeleted": false,
			"id": "GFcDu2mY_uG-UC4v3q6PK",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1323.4961019443745,
			"y": -712.0786401295766,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 4.39426526216721,
			"height": 11.425089681635086,
			"seed": 1039416174,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363324727,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.8788530524334419,
					0
				],
				[
					1.7577061048668838,
					0
				],
				[
					2.6365591573003258,
					0
				],
				[
					2.6365591573003258,
					1.7577061048668838
				],
				[
					4.39426526216721,
					2.6365591573003258
				],
				[
					4.39426526216721,
					3.5154122097337677
				],
				[
					4.39426526216721,
					4.394265262167323
				],
				[
					4.39426526216721,
					5.273118314600765
				],
				[
					4.39426526216721,
					6.151971367034321
				],
				[
					4.39426526216721,
					7.030824419467763
				],
				[
					4.39426526216721,
					7.909677471901205
				],
				[
					4.39426526216721,
					8.788530524334647
				],
				[
					4.39426526216721,
					9.667383576768088
				],
				[
					3.5154122097337677,
					11.425089681635086
				],
				[
					3.5154122097337677,
					11.425089681635086
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "image",
			"version": 186,
			"versionNonce": 123894514,
			"isDeleted": false,
			"id": "bsyRccAq",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1262.5251721201423,
			"y": -720.7944125992869,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 47,
			"height": 16,
			"seed": 8631,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363359120,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "60ce7bac40498b79ca9eb244920756c26223d4bf",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 75,
			"versionNonce": 1535366770,
			"isDeleted": false,
			"id": "zRoP3J1y",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1510.6887688190973,
			"y": -559.7976621228595,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 18.4371058727249,
			"height": 17.120169738958836,
			"seed": 89333,
			"groupIds": [],
			"roundness": null,
			"boundElements": [
				{
					"id": "4GavzaUu3r2WT7d6T731d",
					"type": "arrow"
				},
				{
					"id": "1qJ5XiSgOWQzI-MzjKkbB",
					"type": "arrow"
				},
				{
					"id": "ixERrA4kwzmvdbTVRK4vE",
					"type": "arrow"
				}
			],
			"updated": 1681363789089,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "fb4bed4385ca54ae26e093dbc7f2607c2ea8d060",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 399,
			"versionNonce": 1578746866,
			"isDeleted": false,
			"id": "CC4SEgurnkK-_hYaeyd9B",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 1.7763568394002505e-15,
			"x": -868.5841606125834,
			"y": -725.4646050214044,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 109.08772726865354,
			"height": 109.08772726865354,
			"seed": 716524270,
			"groupIds": [],
			"roundness": null,
			"boundElements": [
				{
					"id": "lk_-yZGY_CJWwGZ5r_GGF",
					"type": "arrow"
				}
			],
			"updated": 1681363696802,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1d6ec9d6c27d48228045d52183f9e314c44dfcd3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 113,
			"versionNonce": 848886382,
			"isDeleted": false,
			"id": "oqRKPhOHjr-gyUKUVK6Mv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1418.5858225925997,
			"y": -913.032869267831,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 44.534498142889085,
			"height": 26.720698885733455,
			"seed": 691218482,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 112,
			"versionNonce": 459058034,
			"isDeleted": false,
			"id": "Zi49Iaf9-nPSkXv2TzlOr",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1409.6789229640217,
			"y": -913.032869267831,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 353905646,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 114,
			"versionNonce": 1454079150,
			"isDeleted": false,
			"id": "TpXqX-ajCxibuXMtEL0pp",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1409.6789229640217,
			"y": -895.2190700106753,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 147018226,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 116,
			"versionNonce": 1499098418,
			"isDeleted": false,
			"id": "jFwhEuCrK2fadC2RGrSsH",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1400.772023335444,
			"y": -904.1259696392533,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 1430814254,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 117,
			"versionNonce": 1370732270,
			"isDeleted": false,
			"id": "q9LItmUhHZF8D0I-91zHG",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1391.8651237068661,
			"y": -895.2190700106753,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 1613251506,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 119,
			"versionNonce": 498726642,
			"isDeleted": false,
			"id": "DyS1WuEvsLb5IsYCtkM8T",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1382.9582240782884,
			"y": -904.1259696392533,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 1211402350,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 122,
			"versionNonce": 742041902,
			"isDeleted": false,
			"id": "fCkCwjczZG3vXA_WYqjH6",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1391.8651237068661,
			"y": -913.032869267831,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 1770585458,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 114,
			"versionNonce": 1224886450,
			"isDeleted": false,
			"id": "gbvo1tLz8GJH7NYIaeQXG",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1418.5858225925997,
			"y": -904.1259696392533,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 228936366,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363511374,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 116,
			"versionNonce": 1974031214,
			"isDeleted": false,
			"id": "GlYesT2yYFOLV4AXvLOl5",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1418.5858225925997,
			"y": -913.032869267831,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 0,
			"height": 53.44139777146691,
			"seed": 36470578,
			"groupIds": [
				"FVwxIFLwSwvgXnxCADrk4"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1681363511374,
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
					0,
					53.44139777146691
				]
			]
		},
		{
			"type": "ellipse",
			"version": 1393,
			"versionNonce": 151881326,
			"isDeleted": false,
			"id": "_jRCzs_fkhvxWanz6Rjhi",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -858.8672718843823,
			"y": -813.2865490642649,
			"strokeColor": "#000000",
			"backgroundColor": "#228be6",
			"width": 76.45163801630515,
			"height": 66.98638477272944,
			"seed": 1749595566,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363561204,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 539,
			"versionNonce": 1828936306,
			"isDeleted": false,
			"id": "rZxFzCKni4YmTL4BeY9kE",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 50,
			"angle": 5.497787143782134,
			"x": -935.3573134806644,
			"y": -792.237757889485,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 121.95966035165699,
			"height": 121.95966035165699,
			"seed": 2065678770,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363637150,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1d6ec9d6c27d48228045d52183f9e314c44dfcd3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 632,
			"versionNonce": 1434026030,
			"isDeleted": false,
			"id": "3tNW6UOBhSfrFiYyMewFc",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 50,
			"angle": 6.217346537876891,
			"x": -976.3866001827383,
			"y": -849.3569609453135,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 121.95966035165699,
			"height": 121.95966035165699,
			"seed": 1064299054,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363642026,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1d6ec9d6c27d48228045d52183f9e314c44dfcd3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 663,
			"versionNonce": 1079512430,
			"isDeleted": false,
			"id": "UhtY4pHW7jaggCgkMBiOE",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 50,
			"angle": 0.8301443948520717,
			"x": -932.139330209914,
			"y": -912.9121305426432,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 121.95966035165699,
			"height": 121.95966035165699,
			"seed": 44295986,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363638850,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1d6ec9d6c27d48228045d52183f9e314c44dfcd3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 710,
			"versionNonce": 208664494,
			"isDeleted": false,
			"id": "doeUsd4P_kAJnGgc4jGx3",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 50,
			"angle": 0.03332099587824722,
			"x": -880.6515978779008,
			"y": -956.3549046977786,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 121.95966035165699,
			"height": 121.95966035165699,
			"seed": 1283982514,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363645410,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1d6ec9d6c27d48228045d52183f9e314c44dfcd3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 65,
			"versionNonce": 1983355374,
			"isDeleted": false,
			"id": "lk_-yZGY_CJWwGZ5r_GGF",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -750.4851273809281,
			"y": -769.0692311449772,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 60.33718632657917,
			"seed": 1865470446,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363696802,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "CC4SEgurnkK-_hYaeyd9B",
				"focus": 1.1652120946806281,
				"gap": 9.011305963001575
			},
			"lastCommittedPoint": null,
			"startArrowhead": "bar",
			"endArrowhead": "bar",
			"points": [
				[
					0,
					0
				],
				[
					0,
					60.33718632657917
				]
			]
		},
		{
			"type": "image",
			"version": 74,
			"versionNonce": 1939007986,
			"isDeleted": false,
			"id": "9p6yP0cd",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -741.3394110355786,
			"y": -748.1399441152928,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 45.853700506269234,
			"height": 20.229573752765834,
			"seed": 22834,
			"groupIds": [],
			"roundness": null,
			"boundElements": [],
			"updated": 1681363715714,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "769a2a49ad68347ff3a4821590c8eeb6e88ebc33",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "ellipse",
			"version": 219,
			"versionNonce": 1300962162,
			"isDeleted": false,
			"id": "3hjzrbkIh0Ng6_ezIovim",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -605.8818164703044,
			"y": -840.6127860063158,
			"strokeColor": "#000000",
			"backgroundColor": "#fa5252",
			"width": 20,
			"height": 20,
			"seed": 486203182,
			"groupIds": [],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 146,
			"versionNonce": 2027687086,
			"isDeleted": false,
			"id": "5lk-tRmt4YVXrzXX0kqkV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -595.2987264640961,
			"y": -884.9085967217749,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 44.534498142889085,
			"height": 26.720698885733455,
			"seed": 1812492978,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 145,
			"versionNonce": 473619762,
			"isDeleted": false,
			"id": "dVsoy6j2HVmcwBRMM4wDI",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -586.3918268355179,
			"y": -884.9085967217749,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 217237870,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 147,
			"versionNonce": 2136098542,
			"isDeleted": false,
			"id": "_-lW6e0VPg925bQ9vLmoT",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -586.3918268355179,
			"y": -867.0947974646191,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 126569586,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 149,
			"versionNonce": 185362162,
			"isDeleted": false,
			"id": "z3uZXx0BSDmQXXiy1mbyL",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -577.4849272069401,
			"y": -876.0016970931971,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 49507246,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 150,
			"versionNonce": 1200044334,
			"isDeleted": false,
			"id": "o83d1414JtbrDeaYJgGcQ",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -568.5780275783624,
			"y": -867.0947974646191,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 1762455090,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 152,
			"versionNonce": 1116125362,
			"isDeleted": false,
			"id": "Akz5bwyAp4xzhRrKMCcCa",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -559.6711279497846,
			"y": -876.0016970931971,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 757450222,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 155,
			"versionNonce": 417588078,
			"isDeleted": false,
			"id": "YmoKEnn3Btn9LQ2Q3mbU0",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -568.5780275783624,
			"y": -884.9085967217749,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 1970558962,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 147,
			"versionNonce": 1112593010,
			"isDeleted": false,
			"id": "eKOADx9hDKGnenByrZSXU",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -595.2987264640961,
			"y": -876.0016970931971,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 8.906899628577818,
			"height": 8.906899628577818,
			"seed": 210950190,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": null,
			"boundElements": null,
			"updated": 1681363743976,
			"link": null,
			"locked": false
		},
		{
			"type": "line",
			"version": 149,
			"versionNonce": 1706116526,
			"isDeleted": false,
			"id": "lw9HdOXPhR1Pj_wF8wqwm",
			"fillStyle": "cross-hatch",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -595.2987264640961,
			"y": -884.9085967217749,
			"strokeColor": "#000000",
			"backgroundColor": "#868e96",
			"width": 0,
			"height": 53.44139777146691,
			"seed": 1556646322,
			"groupIds": [
				"PTxi0vRUIGMSa5XtmpvIJ"
			],
			"roundness": {
				"type": 2
			},
			"boundElements": null,
			"updated": 1681363743976,
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
					0,
					53.44139777146691
				]
			]
		},
		{
			"id": "ixERrA4kwzmvdbTVRK4vE",
			"type": "arrow",
			"x": -1480.1628340236905,
			"y": -559.0958227284807,
			"width": 29.766345254445923,
			"height": 129.52382664772335,
			"angle": 0,
			"strokeColor": "#e67700",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"roundness": null,
			"seed": 1284771186,
			"version": 199,
			"versionNonce": 9648814,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1681363798434,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					29.766345254445923,
					-129.52382664772335
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "zRoP3J1y",
				"focus": 1.743414780683882,
				"gap": 12.088828922681955
			},
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "triangle"
		},
		{
			"id": "B7tdUvHxOTETRtXmaoMe5",
			"type": "arrow",
			"x": -1480.1628340236905,
			"y": -559.0958227284807,
			"width": 51.487732332014275,
			"height": 135.95979318922514,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 0.5,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"roundness": null,
			"seed": 1863868398,
			"version": 25,
			"versionNonce": 1122452210,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1681363770509,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					51.487732332014275,
					-135.95979318922514
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "zRoP3J1y",
				"focus": 1.4711976237876405,
				"gap": 12.088828922681955
			},
			"endBinding": null,
			"startArrowhead": "bar",
			"endArrowhead": "bar"
		}
	],
	"appState": {
		"theme": "light",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#e67700",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "solid",
		"currentItemStrokeWidth": 1,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 0,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 3,
		"currentItemFontSize": 16,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "triangle",
		"scrollX": 1661.9788888211158,
		"scrollY": 969.7783674109119,
		"zoom": {
			"value": 1.2430145415475176
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