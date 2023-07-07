Config = {}

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Settings
-- ▄▄▄▄▄▄▄▄▄▄▄

OpiumRewards = {
    "opium-bad-ql",
    "opium-med-ql",
    "opium-max-ql"
}

OpiumPickingTime = 10000 -- 1 seconds = 1000
OpiumProcessingTime = 10000 -- 1 seconds = 1000
OpiumPackingTime = 10000 -- 1 seconds = 1000


PickingMaxOpium = 3 -- Sets the maximum amount to give when collected.
PickingMinOpium = 1 -- Sets the minimum amount to give when collected.


ProcessOpium = 5 -- Determines the amount to be given when processed.
ProcessMinOpium = 5 -- Determines the minimum number of materials required to process.
ProcessMaxOpium = 10 -- Determines the maximum number of materials required to process.


PacketOpium = 10 -- Determines the amount to be given when packaged.
PacketMinOpium = 1 -- Determines the minimum number of materials required to packaged.
PacketMaxOpium = 5 -- Determines the maximum number of materials required to packaged.



-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  Target Coords
-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄


OpiumToplama = {
    targetZone = vector3(1914.748, 4900.462, 47.946),
    targetHeading = 36.74,
    minZ = 40.05,
    maxZ = 52.00,
}

OpiumIsleme = {
    targetZone = vector3(733.2775, 2523.378, 73.223),
    targetHeading = 315.44,
    minZ = 70.05,
    maxZ = 80.00,
}

OpiumPaket = {
    targetZone = vector3(1538.493, 6323.877, 24.058),
    targetHeading = 47.39,
    minZ = 20.05,
    maxZ = 30.00,
}


-- ▄▄▄▄▄▄▄▄▄▄▄
--  Locales
-- ▄▄▄▄▄▄▄▄▄▄▄

OpiumLocales = {
    ['collect_opium'] = 'Afyon topluyorsun...',
    ['opium_processing'] = 'Afyon işliyorsun..',
    ['packing_opium'] = 'Afyon paketliyorsun...',
    ['process_Opium'] = 'Afyon İşlendi.',
    ['cancel'] = 'İptal edildi.',
    ['not_have_Opium'] = 'Hiç Afyonun yok',
    ['not_own'] = 'Gerekli eşyalara sahip değilsiniz.',
    ['itemerror'] = 'Bir hata oluştu eşyayı veremedim.',
    ['targetpicklabel'] = 'Topla.',
    ['targetprocesslabel'] = 'Konuş.',
    ['targetpacketlabel'] = 'Konuş.',
    ['processmenulabel'] = 'Afyon İşle.',
    ['processmenuheader1'] = 'Düşük Kaliteli Afyon İşle',
    ['processmenutext1'] = 'Gerekli: <br> 5x Düşük Kaliteli Afyon Yaprağı',
    ['processmenuheader2'] = 'Orta Kaliteli Afyon İşle',
    ['processmenutext2'] = 'Gerekli: <br> 5x Orta Kaliteli Afyon Yaprağı',
    ['processmenuheader3'] = 'Yüksek Kaliteli Afyon İşle',
    ['processmenutext4'] = 'Gerekli: <br> 5x Yüksek Kaliteli Afyon Yaprağı',
    ['packetmenulabel'] = 'Afyon Paketle.',
    ['packetmenuheader1'] = 'Düşük Kaliteli Afyon Paketle',
    ['packetmenutext1'] = 'Gerekli: <br> 10x İşlenmiş Düşük Kaliteli Afyon',
    ['packetmenuheader2'] = 'Orta Kaliteli Afyon Paketle',
    ['packetmenutext2'] = 'Gerekli: <br> 10x İşlenmiş Orta Kaliteli Afyon',
    ['packetmenuheader3'] = 'Yüksek Kaliteli Afyon Paketle',
    ['packetmenutext3'] = 'Gerekli: <br> 10x İşlenmiş Yüksek Kaliteli Afyon'
}

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Peds
-- ▄▄▄▄▄▄▄▄▄▄▄


OpiumPeds = {
	[1] = { handle = nil, model ="s_m_m_gaffer_01", coords = vector3(733.2775, 2523.378, 73.223), heading = 270.14, anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- İşleme
    [2] = { handle = nil, model ="s_m_m_gaffer_01", coords = vector3(1538.493, 6323.877, 24.058), heading = 322.14, anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- Paketleme
}

	

