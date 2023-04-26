RegisterServerEvent("menuss:GetPlayers")
AddEventHandler("menuss:GetPlayers", function ()
    local players = {}
    for i = 0, 256 do
        if NetworkIsPlayerActive(i) then
            players[#players + 1] = i
        end
    end
    TriggerClientEvent('menuss:RecievePlayers', -1, players)
end)
