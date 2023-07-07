local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('atomik-Drugs:coketopla')
AddEventHandler('atomik-Drugs:coketopla', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local coke = math.random(PickingMincoke,PickingMaxcoke)
    local keyset = {}
    for v in pairs(cokeRewards) do
        table.insert(keyset, v)
    end
    local reward = cokeRewards[keyset[math.random(#keyset)]]
        if Player.Functions.AddItem(reward, coke) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
        end
end)

RegisterServerEvent("atomik-Drugs:cokeBadProcess2")
AddEventHandler("atomik-Drugs:cokeBadProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("coke-bad-ql")
    if gerekenItem1 and gerekenItem1.amount >= Processcoke then
        if Player.Functions.RemoveItem("coke-bad-ql", Processcoke) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coke-bad-ql"], 'remove')
			if Player.Functions.AddItem("leaves-coke-bad-ql", math.random(ProcessMincoke,ProcessMaxcoke)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-bad-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, CokeLocales["not_own"])
    end
end)

RegisterServerEvent("atomik-Drugs:cokeMedProcess2")
AddEventHandler("atomik-Drugs:cokeMedProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("coke-med-ql")
    if gerekenItem1 and gerekenItem1.amount >= Processcoke then
        if Player.Functions.RemoveItem("coke-med-ql", Processcoke) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coke-med-ql"], 'remove')
			if Player.Functions.AddItem("leaves-coke-med-ql", math.random(ProcessMincoke,ProcessMaxcoke)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-med-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, CokeLocales["not_own"])
    end

end)

RegisterServerEvent("atomik-Drugs:cokeMaxProcess2")
AddEventHandler("atomik-Drugs:cokeMaxProcess2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("coke-max-ql")
    if gerekenItem1 and gerekenItem1.amount >= Processcoke then
        if Player.Functions.RemoveItem("coke-max-ql", Processcoke) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coke-max-ql"], 'remove')
			if Player.Functions.AddItem("leaves-coke-max-ql", math.random(ProcessMincoke,ProcessMaxcoke)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-max-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, CokeLocales["not_own"])
    end
end)

RegisterServerEvent("atomik-Drugs:cokeBadPacking2")
AddEventHandler("atomik-Drugs:cokeBadPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-coke-bad-ql")
    if gerekenItem1 and gerekenItem1.amount >= Packetcoke then
        if Player.Functions.RemoveItem("leaves-coke-bad-ql", Packetcoke) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-bad-ql"], 'remove')
			if Player.Functions.AddItem("package-coke-bad-ql", math.random(PacketMincoke,PacketMaxcoke)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-bad-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, CokeLocales["not_own"])
    end
end)

RegisterServerEvent("atomik-Drugs:cokeMedPacking2")
AddEventHandler("atomik-Drugs:cokeMedPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-coke-med-ql")
    if gerekenItem1 and gerekenItem1.amount >= Packetcoke then
        if Player.Functions.RemoveItem("leaves-coke-med-ql", Packetcoke) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-med-ql"], 'remove')
			if Player.Functions.AddItem("package-coke-med-ql", math.random(PacketMincoke,PacketMaxcoke)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-med-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, CokeLocales["not_own"])
    end
end)

RegisterServerEvent("atomik-Drugs:cokeMaxPacking2")
AddEventHandler("atomik-Drugs:cokeMaxPacking2", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gerekenItem1 = Player.Functions.GetItemByName("leaves-coke-max-ql")
    if gerekenItem1 and gerekenItem1.amount >= Packetcoke then
        if Player.Functions.RemoveItem("leaves-coke-max-ql", Packetcoke) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-max-ql"], 'remove')
			if Player.Functions.AddItem("package-coke-max-ql", math.random(PacketMincoke,PacketMaxcoke)) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["leaves-coke-max-ql"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, CokeLocales["itemerror"])
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, CokeLocales["not_own"])
    end
end)