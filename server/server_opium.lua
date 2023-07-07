local QBCore = exports['qb-core']:GetCoreObject()



RegisterServerEvent('atomik-Drugs:Opiumtopla')
AddEventHandler('atomik-Drugs:Opiumtopla', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local opium = math.random(PickingMinOpium,PickingMaxOpium)
    local keyset = {}

    for v in pairs(OpiumRewards) do
        table.insert(keyset, v)
    end
    local reward = OpiumRewards[keyset[math.random(#keyset)]]
        if Player.Functions.AddItem(reward, opium) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
        end
end)

RegisterServerEvent("atomik-Drugs:OpiumBadProcess2")
AddEventHandler("atomik-Drugs:OpiumBadProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("opium-bad-ql")
    if gerekenItem1 and gerekenItem1.amount >= ProcessOpium then
        if Player.Functions.RemoveItem("opium-bad-ql", ProcessOpium) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["opium-bad-ql"], 'remove')
			if Player.Functions.AddItem("leaves-opium-bad-ql", math.random(ProcessMinOpium, ProcessMaxOpium)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-bad-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, OpiumLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:OpiumMedProcess2")
AddEventHandler("atomik-Drugs:OpiumMedProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("opium-med-ql")
    if gerekenItem1 and gerekenItem1.amount >= ProcessOpium then
        if Player.Functions.RemoveItem("opium-med-ql", ProcessOpium) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["opium-med-ql"], 'remove')
			if Player.Functions.AddItem("leaves-opium-med-ql", math.random(ProcessMinOpium, ProcessMaxOpium)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-med-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, OpiumLocales['not_own'])
    end

end)

RegisterServerEvent("atomik-Drugs:OpiumMaxProcess2")
AddEventHandler("atomik-Drugs:OpiumMaxProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("opium-max-ql")
    if gerekenItem1 and gerekenItem1.amount >= ProcessOpium then
        if Player.Functions.RemoveItem("opium-max-ql", ProcessOpium) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["opium-max-ql"], 'remove')
			if Player.Functions.AddItem("leaves-opium-max-ql", math.random(ProcessMinOpium, ProcessMaxOpium)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-max-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, OpiumLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:OpiumBadPacking2")
AddEventHandler("atomik-Drugs:OpiumBadPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-opium-bad-ql")
    if gerekenItem1 and gerekenItem1.amount >= PacketOpium then
        if Player.Functions.RemoveItem("leaves-opium-bad-ql", PacketOpium) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-bad-ql"], 'remove')
			if Player.Functions.AddItem("package-opium-bad-ql", math.random(PacketMinOpium,PacketMaxOpium)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-bad-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, OpiumLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:OpiumMedPacking2")
AddEventHandler("atomik-Drugs:OpiumMedPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-opium-med-ql")
    if gerekenItem1 and gerekenItem1.amount >= PacketOpium then
        if Player.Functions.RemoveItem("leaves-opium-med-ql", PacketOpium) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-med-ql"], 'remove')
			if Player.Functions.AddItem("package-opium-med-ql", math.random(PacketMinOpium,PacketMaxOpium)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-med-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, OpiumLocales['not_own'])
    end
end)

RegisterServerEvent("atomik-Drugs:OpiumMaxPacking2")
AddEventHandler("atomik-Drugs:OpiumMaxPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-opium-max-ql")
    if gerekenItem1 and gerekenItem1.amount >= PacketOpium then
        if Player.Functions.RemoveItem("leaves-opium-max-ql", PacketOpium) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-max-ql"], 'remove')
			if Player.Functions.AddItem("package-opium-max-ql", math.random(PacketMinOpium,PacketMaxOpium)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-opium-max-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, OpiumLocales['itemerror'])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, OpiumLocales['not_own'])
    end
end)



