local QBCore = exports['qb-core']:GetCoreObject()


-- ▄▄▄▄▄▄▄▄▄▄▄
--  Targets
-- ▄▄▄▄▄▄▄▄▄▄▄


exports['qb-target']:AddBoxZone("coketopla", cokeToplama.targetZone, 5.4, 5.4, {
	name="coketopla",
	heading = cokeToplama.heading,
	debugPoly = false,
	minZ = cokeToplama.minZ,
	maxZ = cokeToplama.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:cokePick",
				icon = "fas fa-circle",
				label = CokeLocales['targetpicklabel'],
			},
		},
	   distance = 4.5
  })


exports['qb-target']:AddBoxZone("processing", cokeIsleme.targetZone, 1.4, 1.4, {
	name="processing",
	heading = cokeIsleme.heading,
	debugPoly = false,
	minZ = cokeIsleme.minZ,
	maxZ = cokeIsleme.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpencokeProcess",
				icon = "fas fa-cut",
				label = CokeLocales['targetprocesslabel'],
			},
		},
	   distance = 1.5
  })

exports['qb-target']:AddBoxZone("packing", cokePaket.targetZone, 1.4, 1.4, {
	name="packing",
	heading = cokePaket.heading,
	debugPoly = false,
	minZ = cokePaket.minZ,
	maxZ = cokePaket.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpencokePacking",
				icon = "fas fa-archive",
				label = CokeLocales['targetpacketlabel'],
			},
		},
	   distance = 1.5
  })

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Events
-- ▄▄▄▄▄▄▄▄▄▄▄


RegisterNetEvent('atomik-Drugs:cokePick', function()

	QBCore.Functions.Progressbar('collect_coke', CokeLocales['collect_coke'], CokePickingTime, false, true, {
	  disableMovement = true,
	  disableCarMovement = true,
	  disableMouse = false,
	  disableCombat = true,
	  }, {
	  animDict = 'mini@repair',
	  anim = 'fixing_a_player',
	  flags = 16,
	  }, {}, {}, function()
		  TriggerServerEvent('atomik-Drugs:coketopla')
	  end, function()
	  QBCore.Functions.Notify(CokeLocales['cancel'], "error")
	end)
end)


-- Process

RegisterNetEvent('atomik-Drugs:cokeBadProcess', function()
	local hasItem = QBCore.Functions.HasItem('coke-bad-ql')
	if hasItem then
		QBCore.Functions.Progressbar('coke_processing', CokeLocales['coke_processing'], CokeProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:cokeBadProcess2")
			end, function()
				QBCore.Functions.Notify(CokeLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(CokeLocales['not_have_coke'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:cokeMedProcess', function()
	local hasItem = QBCore.Functions.HasItem('coke-med-ql')
	if hasItem then
		QBCore.Functions.Progressbar('coke_processing', CokeLocales['coke_processing'], CokeProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:cokeMedProcess2")
			end, function()
				QBCore.Functions.Notify(CokeLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(CokeLocales['not_have_coke'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:cokeMaxProcess', function()
	local hasItem = QBCore.Functions.HasItem('coke-max-ql')
	if hasItem then
		QBCore.Functions.Progressbar('coke_processing', CokeLocales['coke_processing'], CokeProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:cokeMaxProcess2")
			end, function()
				QBCore.Functions.Notify(CokeLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(CokeLocales['not_have_coke'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:cokeBadPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-coke-bad-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_coke', CokeLocales['packing_coke'], CokePackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:cokeBadPacking2")
			end, function()
				QBCore.Functions.Notify(CokeLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(CokeLocales['not_have_coke'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:cokeMedPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-coke-med-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_coke', CokeLocales['packing_coke'], CokePackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:cokeMedPacking2")
			end, function()
				QBCore.Functions.Notify(CokeLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(CokeLocales['not_have_coke'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:cokeMaxPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-coke-max-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_coke', CokeLocales['packing_coke'], CokePackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:cokeMaxPacking2")
			end, function()
				QBCore.Functions.Notify(CokeLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(CokeLocales['not_have_coke'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:OpencokeProcess', function()
    local coke = {
      {
        header = CokeLocales['processmenulabel'],
        isMenuHeader = true,
      },
      {
          header = CokeLocales['processmenuheader1'],
          txt = CokeLocales['processmenutext1'],
          params = {
              event = 'atomik-Drugs:cokeBadProcess',
            }
      },
      {
		header = CokeLocales['processmenuheader2'],
		txt = CokeLocales['processmenutext2'],
		params = {
			event = 'atomik-Drugs:cokeMedProcess',
		  }
	},
	{
		header = CokeLocales['processmenuheader3'],
		txt = CokeLocales['processmenutext3'],
		params = {
			event = 'atomik-Drugs:cokeMaxProcess',
		  }
	},
    }
exports['qb-menu']:openMenu(coke)
end)

RegisterNetEvent('atomik-Drugs:OpencokePacking', function()
    local coke = {
      {
        header = CokeLocales['packetmenulabel'],
        isMenuHeader = true,
      },
      {
		header = CokeLocales['packetmenuheader1'],
		txt = CokeLocales['packetmenutext1'],
          params = {
              event = 'atomik-Drugs:cokeBadPacking',
            }
      },
      {
		header = CokeLocales['packetmenuheader2'],
		txt = CokeLocales['packetmenutext2'],
		params = {
			event = 'atomik-Drugs:cokeMedPacking',
		  }
	},
	{
		header = CokeLocales['packetmenuheader3'],
		txt = CokeLocales['packetmenutext3'],
		params = {
			event = 'atomik-Drugs:cokeMaxPacking',
		  }
	},
    }
exports['qb-menu']:openMenu(coke)
end)




-- ▄▄▄▄▄▄▄▄▄▄▄
--  Threads
-- ▄▄▄▄▄▄▄▄▄▄▄

CreateThread(function()
	for _,v in pairs(cokePeds) do
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
