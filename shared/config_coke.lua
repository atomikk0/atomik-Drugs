Config = {}

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Settings
-- ▄▄▄▄▄▄▄▄▄▄▄


cokeRewards = { -- item name
    "coke-bad-ql",
    "coke-med-ql",
    "coke-max-ql"
}

CokePickingTime = 10000 -- 1 seconds = 1000
CokeProcessingTime = 10000 -- 1 seconds = 1000
CokePackingTime = 10000 -- 1 seconds = 1000


PickingMaxcoke = 3 -- Sets the maximum amount to give when collected.
PickingMincoke = 1 -- Sets the minimum amount to give when collected.


Processcoke = 5 -- Determines the amount to be given when processed.
ProcessMincoke = 5 -- Determines the minimum number of materials required to process.
ProcessMaxcoke = 10 -- Determines the maximum number of materials required to process.

Packetcoke = 10 -- Determines the amount to be given when packaged.
PacketMincoke = 1 -- Determines the minimum number of materials required to packaged.
PacketMaxcoke = 5 -- Determines the maximum number of materials required to packaged.



-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  Target Coords
-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄


cokeToplama = {
    targetZone = vector3(5213.139, -5129.65, 7.2418),
    targetHeading = 36.74,
    minZ = 0.05,
    maxZ = 10.00,
}

cokeIsleme = {
    targetZone = vector3(3526.521, 3737.624, 36.730),
    targetHeading = 170.44,
    minZ = 35.05,
    maxZ = 40.00,
}

cokePaket = {
    targetZone = vector3(2479.937, 3440.779, 49.999),
    targetHeading = 140.39,
    minZ = 45.05,
    maxZ = 55.00,
}


-- ▄▄▄▄▄▄▄▄▄▄▄
--  Locales
-- ▄▄▄▄▄▄▄▄▄▄▄

CokeLocales = {
    ['collect_coke'] = 'Kokain topluyorsun...',
    ['coke_processing'] = 'Kokain işliyorsun..',
    ['packing_coke'] = 'Kokain paketliyorsun...',
    ['process_coke'] = 'Kokain İşlendi.',
    ['cancel'] = 'İptal edildi.',
    ['not_have_coke'] = 'Hiç kokainin yok',
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
    ['processmenutext3'] = 'Gerekli: <br> 5x Yüksek Kaliteli Kokain Yaprağı',
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


cokePeds = {
	[1] = { handle = nil, model ="s_m_m_gaffer_01", coords = vector3(3526.521, 3737.624, 36.730), heading = 170.14, anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- İşleme
    [2] = { handle = nil, model ="s_m_m_gaffer_01", coords = vector3(2479.937, 3440.779, 49.999), heading = 140.14, anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- Paketleme
}

	

