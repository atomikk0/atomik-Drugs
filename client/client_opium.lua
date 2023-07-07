local QBCore = exports['qb-core']:GetCoreObject()


-- ▄▄▄▄▄▄▄▄▄▄▄
--  Targets
-- ▄▄▄▄▄▄▄▄▄▄▄




exports['qb-target']:AddBoxZone("Opiumtopla", OpiumToplama.targetZone, 5.4, 5.4, {
	name="Opiumtopla",
	heading = OpiumToplama.heading,
	debugPoly = false,
	minZ = OpiumToplama.minZ,
	maxZ = OpiumToplama.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpiumPick",
				icon = "fas fa-circle",
				label =  OpiumLocales['targetpicklabel'],
			},
		},
	   distance = 4.5
  })


  exports['qb-target']:AddBoxZone("opiumprocessing", OpiumIsleme.targetZone, 1.4, 1.4, {
	name="opiumprocessing",
	heading = OpiumIsleme.heading,
	debugPoly = false,
	minZ = OpiumIsleme.minZ,
	maxZ = OpiumIsleme.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpenOpiumProcess",
				icon = "fas fa-archive",
				label = OpiumLocales['targetprocesslabel'],
			},
		},
	   distance = 1.5
  })

exports['qb-target']:AddBoxZone("opiumpacking", OpiumPaket.targetZone, 1.4, 1.4, {
	name="opiumpacking",
	heading = OpiumPaket,
	debugPoly = false,
	minZ = OpiumPaket.minZ,
	maxZ = OpiumPaket.maxZ,
	}, {
		options = {
			{
				event = "atomik-Drugs:OpenOpiumPacking",
				icon = "fas fa-archive",
				label = OpiumLocales['targetpacketlabel'],
			},
		},
	   distance = 1.5
  })

-- ▄▄▄▄▄▄▄▄▄▄▄
--  Events
-- ▄▄▄▄▄▄▄▄▄▄▄


RegisterNetEvent('atomik-Drugs:OpiumPick', function()

	QBCore.Functions.Progressbar('collect_opium', OpiumLocales['collect_opium'], OpiumPickingTime, false, true, {
	  disableMovement = true,
	  disableCarMovement = true,
	  disableMouse = false,
	  disableCombat = true,
	  }, {
	  animDict = 'mini@repair',
	  anim = 'fixing_a_player',
	  flags = 16,
	  }, {}, {}, function()
		  TriggerServerEvent('atomik-Drugs:Opiumtopla')
	  end, function()
	  QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
	end)
end)


-- Process

RegisterNetEvent('atomik-Drugs:OpiumBadProcess', function()
	local hasItem = QBCore.Functions.HasItem('opium-bad-ql')
	if hasItem then
		QBCore.Functions.Progressbar('opium_processing', OpiumLocales['opium_processing'], OpiumProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:OpiumBadProcess2")
			end, function()
				QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(OpiumLocales['not_have_Opium'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:OpiumMedProcess', function()
	local hasItem = QBCore.Functions.HasItem('opium-med-ql')
	if hasItem then
		QBCore.Functions.Progressbar('opium_processing', OpiumLocales['opium_processing'], OpiumProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:OpiumMedProcess2")
			end, function()
				QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(OpiumLocales['not_have_Opium'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:OpiumMaxProcess', function()
	local hasItem = QBCore.Functions.HasItem('opium-max-ql')
	if hasItem then
		QBCore.Functions.Progressbar('opium_processing', OpiumLocales['opium_processing'], OpiumProcessingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:OpiumMaxProcess2")
			end, function()
				QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(OpiumLocales['not_have_Opium'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:OpiumBadPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-opium-bad-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_opium', OpiumLocales['packing_opium'], OpiumPackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:OpiumBadPacking2")
			end, function()
				QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(OpiumLocales['not_have_Opium'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:OpiumMedPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-opium-med-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_opium', OpiumLocales['packing_opium'], OpiumPackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:OpiumMedPacking2")
			end, function()
				QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(OpiumLocales['not_have_Opium'], "error")
	end
end)
RegisterNetEvent('atomik-Drugs:OpiumMaxPacking', function()
	local hasItem = QBCore.Functions.HasItem('leaves-opium-max-ql')
	if hasItem then
		QBCore.Functions.Progressbar('packing_opium', OpiumLocales['packing_opium'], OpiumPackingTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				TriggerServerEvent("atomik-Drugs:OpiumMaxPacking2")
			end, function()
				QBCore.Functions.Notify(OpiumLocales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(OpiumLocales['not_have_Opium'], "error")
	end
end)

RegisterNetEvent('atomik-Drugs:OpenOpiumProcess', function()
    local Opium = {
      {
        header = OpiumLocales['processmenulabel'],
        isMenuHeader = true,
      },
      {
          header = OpiumLocales['processmenuheader1'],
          txt = OpiumLocales['processmenutext1'],
          params = {
              event = 'atomik-Drugs:OpiumBadProcess',
            }
      },
      {
		header = OpiumLocales['processmenuheader2'],
		txt = OpiumLocales['processmenutext2'],
		params = {
			event = 'atomik-Drugs:OpiumMedProcess',
		  }
	},
	{
		header = OpiumLocales['processmenuheader3'],
		txt = OpiumLocales['processmenutext3'],
		params = {
			event = 'atomik-Drugs:OpiumMaxProcess',
		  }
	},
    }
exports['qb-menu']:openMenu(Opium)
end)

RegisterNetEvent('atomik-Drugs:OpenOpiumPacking', function()
    local Opium = {
      {
        header = OpiumLocales['packetmenulabel'],
        isMenuHeader = true,
      },
      {
		header = OpiumLocales['packetmenuheader1'],
		txt = OpiumLocales['packetmenutext1'],
          params = {
              event = 'atomik-Drugs:OpiumBadPacking',
            }
      },
      {
		header = OpiumLocales['packetmenuheader2'],
		txt = OpiumLocales['packetmenutext2'],
		params = {
			event = 'atomik-Drugs:OpiumMedPacking',
		  }
	},
	{
		header = OpiumLocales['packetmenuheader3'],
		txt = OpiumLocales['packetmenutext3'],
		params = {
			event = 'atomik-Drugs:OpiumMaxPacking',
		  }
	},
    }
exports['qb-menu']:openMenu(Opium)
end)




-- ▄▄▄▄▄▄▄▄▄▄▄
--  Threads
-- ▄▄▄▄▄▄▄▄▄▄▄


CreateThread(function()
	for _,v in pairs(OpiumPeds) do
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
