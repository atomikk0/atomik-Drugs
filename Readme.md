# atomik-Drugs

Discord: https://discord.gg/GSeQ747HsC

Desteklenen Altyapılar;
- New QB
- Old QB

Desteklenen Target Scriptleri;
- qb-target

Resmon Değerleri;

Boşta: 0.00ms
Çalışırken: 0.00-0.01ms (Nadiren 0.01)


[ÖZELLİKLER]


- Sadece QBCore'da çalışmaktadır.

- Kolay özelleştirilebilir config. (Github)

- 3 Aşamalı maddeler. (Toplama, İşleme, Paketleme)

- Tüm yerler değiştirilebilir.

- Şimdilik yalnızca qb-target kullanabilirsiniz.

- Tüm maddeler 'Düşük Kaliteli, Orta Kaliteli ve Yüksek Kaliteli' olmak üzere 3 çeşittir.

- 3 Madde vardır. (Kokain, Afyon, Ot)

Tanıtım Videosu: https://www.youtube.com/watch?v=Pma_6z-tb-k


items.lua
```lua
	["weed-bad-ql"] 		= {["name"] = "weed-bad-ql",		["label"] = "Ot Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "weed-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["weed-med-ql"] 		= {["name"] = "weed-med-ql",		["label"] = "Ot Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "weed-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["weed-max-ql"] 		= {["name"] = "weed-max-ql",		["label"] = "Ot Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "weed-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	
	["leaves-weed-bad-ql"] = {["name"] = "leaves-weed-bad-ql",		["label"] = "İşlenmiş Ot Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-weed-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["leaves-weed-med-ql"] = {["name"] = "leaves-weed-med-ql",		["label"] = "İşlenmiş Ot Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-weed-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["leaves-weed-max-ql"] = {["name"] = "leaves-weed-max-ql",		["label"] = "İşlenmiş Ot Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-weed-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

	["package-weed-bad-ql"] = {["name"] = "package-weed-bad-ql",		["label"] = "Paketlenmiş Ot",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-weed-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["package-weed-med-ql"] = {["name"] = "package-weed-med-ql",		["label"] = "Paketlenmiş Ot",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-weed-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["package-weed-max-ql"] = {["name"] = "package-weed-max-ql",		["label"] = "Paketlenmiş Ot",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-weed-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

	["coke-bad-ql"] 		= {["name"] = "coke-bad-ql",		["label"] = "Kokain Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "coke-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["coke-med-ql"] 		= {["name"] = "coke-med-ql",		["label"] = "Kokain Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "coke-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["coke-max-ql"] 		= {["name"] = "coke-max-ql",		["label"] = "Kokain Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "coke-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	
	["leaves-coke-bad-ql"] = {["name"] = "leaves-coke-bad-ql",		["label"] = "İşlenmiş Kokain Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-coke-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["leaves-coke-med-ql"] = {["name"] = "leaves-coke-med-ql",		["label"] = "İşlenmiş Kokain Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-coke-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["leaves-coke-max-ql"] = {["name"] = "leaves-coke-max-ql",		["label"] = "İşlenmiş Kokain Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-coke-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

	["package-coke-bad-ql"] = {["name"] = "package-coke-bad-ql",		["label"] = "Paketlenmiş Kokain",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-coke-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["package-coke-med-ql"] = {["name"] = "package-coke-med-ql",		["label"] = "Paketlenmiş Kokain",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-coke-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["package-coke-max-ql"] = {["name"] = "package-coke-max-ql",		["label"] = "Paketlenmiş Kokain",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-coke-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

	["opium-bad-ql"] 		= {["name"] = "opium-bad-ql",		["label"] = "Afyon Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "opium-bad-ql.png.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["opium-med-ql"] 		= {["name"] = "opium-med-ql",		["label"] = "Afyon Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "opium-med-ql.png.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["opium-max-ql"] 		= {["name"] = "opium-max-ql",		["label"] = "Afyon Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "opium-max-ql.png.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	
	["leaves-opium-bad-ql"] = {["name"] = "leaves-opium-bad-ql",		["label"] = "İşlenmiş Afyon Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-opium-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["leaves-opium-med-ql"] = {["name"] = "leaves-opium-med-ql",		["label"] = "İşlenmiş Afyon Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-opium-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["leaves-opium-max-ql"] = {["name"] = "leaves-opium-max-ql",		["label"] = "İşlenmiş Afyon Yaprağı",	["weight"] = 25,      	["type"] = "item",		["image"] = "leaves-opium-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

	["package-opium-bad-ql"] = {["name"] = "package-opium-bad-ql",		["label"] = "Paketlenmiş Afyon",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-opium-bad-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["package-opium-med-ql"] = {["name"] = "package-opium-med-ql",		["label"] = "Paketlenmiş Afyon",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-opium-med-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["package-opium-max-ql"] = {["name"] = "package-opium-max-ql",		["label"] = "Paketlenmiş Afyon",	["weight"] = 25,      	["type"] = "item",		["image"] = "package-opium-max-ql.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```
