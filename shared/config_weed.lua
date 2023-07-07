Config = {}

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Settings
-- ▄▄▄▄▄▄▄▄▄▄▄

WeedRewards = {
    "weed-bad-ql",
    "weed-med-ql",
    "weed-max-ql"
}

CokePickingTime = 10000 -- 1 seconds = 1000
CokeProcessingTime = 10000 -- 1 seconds = 1000
CokePackingTime = 10000 -- 1 seconds = 1000

PickingMaxWeed = 3 -- Sets the maximum amount to give when collected.
PickingMinWeed = 1 -- Sets the minimum amount to give when collected.

ProcessWeed = 5 -- Determines the amount to be given when processed.
ProcessMinWeed = 5 -- Determines the minimum number of materials required to process.
ProcessMaxWeed = 10 -- Determines the maximum number of materials required to process.

PacketWeed = 10 -- Determines the amount to be given when packaged.
PacketMinWeed = 1 -- Determines the minimum number of materials required to packaged.
PacketMaxWeed = 5 -- Determines the maximum number of materials required to packaged.


-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  Target Coords
-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄


WeedToplama = {
    targetZone = vector3(2231.454, 5576.546, 53.997),
    targetHeading = 180.74,
    minZ = 50.05,
    maxZ = 60.00,
}

WeedIsleme = {
    targetZone = vector3(778.5072, 4184.154, 41.789),
    targetHeading = 31.44,
    minZ = 35.05,
    maxZ = 50.00,
}

WeedPaket = {
    targetZone = vector3(2326.354, 2529.844, 46.667),
    targetHeading = 165.39,
    minZ = 44.05,
    maxZ = 50.00,
}


-- ▄▄▄▄▄▄▄▄▄▄▄
--  Locales
-- ▄▄▄▄▄▄▄▄▄▄▄

WeedLocales = {
    ['collect_weed'] = 'Ot topluyorsun...',
    ['weed_processing'] = 'Ot işliyorsun..',
    ['packing_weed'] = 'Ot paketliyorsun...',
    ['cancel'] = 'İptal edildi.',
    ['not_have_Weed'] = 'Hiç otun yok',
    ['not_own'] = 'Gerekli eşyalara sahip değilsiniz.',
    ['itemerror'] = 'Bir hata oluştu eşyayı veremedim.',
    ['targetpicklabel'] = 'Topla.',
    ['targetprocesslabel'] = 'Konuş.',
    ['targetpacketlabel'] = 'Konuş.',
    ['processmenulabel'] = 'Kokain İşle.',
    ['processmenuheader1'] = 'Düşük Kaliteli Kokain İşle',
    ['processmenutext1'] = 'Gerekli: <br> 5x Düşük Kaliteli Kokain Yaprağı',
    ['processmenuheader2'] = 'Orta Kaliteli Kokain İşle',
    ['processmenutext2'] = 'Gerekli: <br> 5x Orta Kaliteli Kokain Yaprağı',
    ['processmenuheader3'] = 'Yüksek Kaliteli Kokain İşle',
    ['processmenutext4'] = 'Gerekli: <br> 5x Yüksek Kaliteli Kokain Yaprağı',
    ['packetmenulabel'] = 'Kokain Paketle.',
    ['packetmenuheader1'] = 'Düşük Kaliteli Kokain Paketle',
    ['packetmenutext1'] = 'Gerekli: <br> 10x İşlenmiş Düşük Kaliteli Kokain',
    ['packetmenuheader2'] = 'Orta Kaliteli Kokain Paketle',
    ['packetmenutext2'] = 'Gerekli: <br> 10x İşlenmiş Orta Kaliteli Kokain',
    ['packetmenuheader3'] = 'Yüksek Kaliteli Kokain Paketle',
    ['packetmenutext3'] = 'Gerekli: <br> 10x İşlenmiş Yüksek Kaliteli Kokain'
}

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Peds
-- ▄▄▄▄▄▄▄▄▄▄▄


WeedPeds = {
	[1] = { handle = nil, model ="s_m_m_gaffer_01", coords = vector3(778.5072, 4184.154, 41.789), heading = 90.14, anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- İşleme
    [2] = { handle = nil, model ="s_m_m_gaffer_01", coords = vector3(2326.354, 2529.844, 46.667), heading = 165.14, anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- Paketleme
}

	

