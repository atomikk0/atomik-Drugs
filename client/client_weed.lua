local QBCore = exports['qb-core']:GetCoreObject()


-- ▄▄▄▄▄▄▄▄▄▄▄
--  Targets
-- ▄▄▄▄▄▄▄▄▄▄▄


exports['qb-target']:AddBoxZone("Weedtopla", WeedToplama.targetZone, 5.4, 20.4, {
	name="Weedtopla",
	heading = WeedToplama.targetHeading,
	debugPoly = false,
	minZ = WeedToplama.minZ,
	maxZ = WeedToplama.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:WeedPick",
				icon = "fas fa-circle",
				label = WeedLocales['targetpicklabel'],
			},
		},
	   distance = 4.5
  })


exports['qb-target']:AddBoxZone("weedprocessing", WeedIsleme.targetZone, 1.4, 1.4, {
	name="weedprocessing",
	heading = WeedIsleme.targetHeading,
	debugPoly = false,
	minZ = WeedIsleme.minZ,
	maxZ = WeedIsleme.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpenWeedProcess",
				icon = "fas fa-cut",
				label = WeedLocales['targetprocesslabel'],
			},
		},
	   distance = 3.5
  })

  exports['qb-target']:AddBoxZone("weedpack", WeedPaket.targetZone, 1.4, 1.4, {
	name="weedpack",
	heading = WeedPaket.targetHeading,
	debugPoly = false,
	minZ = WeedPaket.minZ,
	maxZ = WeedPaket.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpenWeedPacking",
				icon = "fas fa-cut",
				label = WeedLocales['targetpacketlabel'],
			},
		},
	   distance = 3.5
  })

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Events
-- ▄▄▄▄▄▄▄▄▄▄▄


RegisterNetEvent('atomik-Drugs:WeedPick', function()

	QBCore.Functions.Progressbar('weed_processing', WeedLocales['collect_weed'], CokePickingTime, false, true, {
	  disableMovement = true,
	  disableCarMovement = true,
	  disableMouse = false,
	  disableCombat = true,
	  }, {
	  animDict = 'mini@repair',
	  anim = 'fixing_a_player',
	  flags = 16,
	  }, {}, {}, function()
		  TriggerServerEvent('atomik-Drugs:Weedtopla')
	  end, function()
	  QBCore.Functions.Notify(WeedLocales['cancel'], "error")
	end)
end)


-- Process

RegisterNetEvent('atomik-Drugs:WeedBadProcess', function()
	local hasItem = QBCore.Functions.HasItem('weed-bad-ql')
	if hasItem then
		QBCore.Functions.Progressbar('weed_processing', WeedLocales['weed_processing'], CokeProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:WeedBadProcess2")
			end, function()
				QBCore.Functions.Notify(WeedLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(WeedLocales['not_have_Weed'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:WeedMedProcess', function()
	local hasItem = QBCore.Functions.HasItem('weed-med-ql')
	if hasItem then
		QBCore.Functions.Progressbar('weed_processing', WeedLocales['weed_processing'], CokeProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:WeedMedProcess2")
			end, function()
				QBCore.Functions.Notify(WeedLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(WeedLocales['not_have_Weed'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:WeedMaxProcess', function()
	local hasItem = QBCore.Functions.HasItem('weed-max-ql')
	if hasItem then
		QBCore.Functions.Progressbar('weed_processing', WeedLocales['weed_processing'], CokeProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:WeedMaxProcess2")
			end, function()
				QBCore.Functions.Notify(WeedLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(WeedLocales['not_have_Weed'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:WeedBadPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-weed-bad-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_weed', WeedLocales['packing_weed'], CokePackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:WeedBadPacking2")
			end, function()
				QBCore.Functions.Notify(WeedLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(WeedLocales['not_have_Weed'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:WeedMedPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-weed-med-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_weed', WeedLocales['packing_weed'], CokePackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:WeedMedPacking2")
			end, function()
				QBCore.Functions.Notify(WeedLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(WeedLocales['not_have_Weed'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:WeedMaxPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-weed-max-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_weed', WeedLocales['packing_weed'], CokePackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:WeedMaxPacking2")
			end, function()
				QBCore.Functions.Notify(WeedLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(WeedLocales['not_have_Weed'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:OpenWeedProcess', function()
    local Weed = {
      {
        header = WeedLocales['processmenulabel'],
        isMenuHeader = true,
      },
      {
		header = WeedLocales['processmenuheader1'],
		txt = WeedLocales['processmenutext1'],
          params = {
              event = 'atomik-Drugs:WeedBadProcess',
            }
      },
      {
		header = WeedLocales['processmenuheader2'],
		txt = WeedLocales['processmenutext2'],
		params = {
			event = 'atomik-Drugs:WeedMedProcess',
		  }
	},
	{
		header = WeedLocales['processmenuheader3'],
		txt = WeedLocales['processmenutext3'],
		params = {
			event = 'atomik-Drugs:WeedMaxProcess',
		  }
	},
    }
exports['qb-menu']:openMenu(Weed)
end)

RegisterNetEvent('atomik-Drugs:OpenWeedPacking', function()
    local Weed = {
      {
        header = WeedLocales['packetmenulabel'],
        isMenuHeader = true,
      },
      {
		header = WeedLocales['packetmenuheader1'],
		txt = WeedLocales['packetmenutext1'],
          params = {
              event = 'atomik-Drugs:WeedBadPacking',
            }
      },
      {
		header = WeedLocales['packetmenuheader2'],
		txt = WeedLocales['packetmenutext2'],
		params = {
			event = 'atomik-Drugs:WeedMedPacking',
		  }
	},
	{
		header = WeedLocales['packetmenuheader3'],
		txt = WeedLocales['packetmenutext3'],
		params = {
			event = 'atomik-Drugs:WeedMaxPacking',
		  }
	},
    }
exports['qb-menu']:openMenu(Weed)
end)




-- ▄▄▄▄▄▄▄▄▄▄▄
--  Threads
-- ▄▄▄▄▄▄▄▄▄▄▄


CreateThread(function()
	for _,v in pairs(WeedPeds) do
		RequestModel(v.model)
		while not HasModelLoaded(v.model) do Wait(1) end
		v.handle = CreatePed(4, v.model, v.coords.x, v.coords.y, v.coords.z-1.0, v.heading, false, false)
		SetPedFleeAttributes(v.handle, 0, 0)
		SetPedDropsWeaponsWhenDead(v.handle, false)
		SetPedDiesWhenInjured(v.handle, false)
		SetEntityInvincible(v.handle , true)
		FreezeEntityPosition(v.handle, true)
		SetBlockingOfNonTemporaryEvents(v.handle, true)
		if v.anim.type == 1 then
			TaskStartScenarioInPlace(v.handle, v.anim.name, 0, true)
		elseif v.anim.type == 2 then
			RequestAnimDict(v.anim.dict)
			TaskPlayAnim(v.handle, v.anim.dict, v.anim.name, 8.0, 1, -1, 49, 0, false, false, false)
		end
	end
end)
