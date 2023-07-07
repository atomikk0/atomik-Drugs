local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('atomik-Drugs:Weedtopla')
AddEventHandler('atomik-Drugs:Weedtopla', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local weed = math.random(PickingMinWeed,PickingMaxWeed)
    local keyset = {}
    
    for v in pairs(WeedRewards) do
        table.insert(keyset, v)
    end
    local reward = WeedRewards[keyset[math.random(#keyset)]]
        if Player.Functions.AddItem(reward, weed) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
        end
end)

RegisterServerEvent("atomik-Drugs:WeedBadProcess2")
AddEventHandler("atomik-Drugs:WeedBadProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("weed-bad-ql")
    if gerekenItem1 and gerekenItem1.amount >= ProcessWeed then
        if Player.Functions.RemoveItem("weed-bad-ql", ProcessWeed) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed-bad-ql"], 'remove')
			if Player.Functions.AddItem("leaves-weed-bad-ql", math.random(ProcessMinWeed, ProcessMaxWeed)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-bad-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, WeedLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:WeedMedProcess2")
AddEventHandler("atomik-Drugs:WeedMedProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("weed-med-ql")
    if gerekenItem1 and gerekenItem1.amount >= ProcessWeed then
        if Player.Functions.RemoveItem("weed-med-ql", ProcessWeed) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed-med-ql"], 'remove')
			if Player.Functions.AddItem("leaves-weed-med-ql", math.random(ProcessMinWeed, ProcessMaxWeed)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-med-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, WeedLocales['not_own'])
    end

end)

RegisterServerEvent("atomik-Drugs:WeedMaxProcess2")
AddEventHandler("atomik-Drugs:WeedMaxProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("weed-max-ql")
    if gerekenItem1 and gerekenItem1.amount >= ProcessWeed then
        if Player.Functions.RemoveItem("weed-max-ql", ProcessWeed) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed-max-ql"], 'remove')
			if Player.Functions.AddItem("leaves-weed-max-ql", math.random(ProcessMinWeed, ProcessMaxWeed)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-max-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, WeedLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:WeedBadPacking2")
AddEventHandler("atomik-Drugs:WeedBadPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-weed-bad-ql")
    if gerekenItem1 and gerekenItem1.amount >= PacketWeed then
        if Player.Functions.RemoveItem("leaves-weed-bad-ql", PacketWeed) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-bad-ql"], 'remove')
			if Player.Functions.AddItem("package-weed-bad-ql", math.random(PacketMinWeed, PacketMaxWeed)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-bad-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, WeedLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:WeedMedPacking2")
AddEventHandler("atomik-Drugs:WeedMedPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-weed-med-ql")
    if gerekenItem1 and gerekenItem1.amount >= PacketWeed then
        if Player.Functions.RemoveItem("leaves-weed-med-ql", PacketWeed) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-med-ql"], 'remove')
			if Player.Functions.AddItem("package-weed-med-ql", math.random(PacketMinWeed, PacketMaxWeed)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-med-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, WeedLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:WeedMaxPacking2")
AddEventHandler("atomik-Drugs:WeedMaxPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-weed-max-ql")
    if gerekenItem1 and gerekenItem1.amount >= PacketWeed then
        if Player.Functions.RemoveItem("leaves-weed-max-ql", PacketWeed) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-max-ql"], 'remove')
			if Player.Functions.AddItem("package-weed-max-ql", math.random(PacketMinWeed, PacketMaxWeed)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-weed-max-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, WeedLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, WeedLocales['not_own'])
    end
end)



