local c = Config
local lang = Languages[Config.language]
local activeMeTexts = {}

-- @desc Show floating help text above player
-- @param msg message to display
-- @param coords coordinates where to display the text
local function ShowMeFloatingText(msg, coords)
    AddTextEntry('ME_STRING', msg)
    SetFloatingHelpTextWorldPosition(1, coords)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('ME_STRING')
    EndTextCommandDisplayHelp(2, false, false, -1)
end

-- @desc Display the text above the head of a ped
-- @param ped the target ped
-- @param text the text to display
local function displayText(ped, text)
    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)
    local targetPos = GetEntityCoords(ped)
    local dist = #(playerPos - targetPos)
    local los = HasEntityClearLosToEntity(playerPed, ped, 17)

    if dist <= c.dist and los then
        -- Add to active texts with timer
        activeMeTexts[ped] = {
            text = text,
            endTime = GetGameTimer() + c.time
        }
    end
end

-- Thread to handle all active ME texts
CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local sleep = 1000
        local currentTime = GetGameTimer()
        local hasActiveText = false

        -- Check all active texts
        for ped, data in pairs(activeMeTexts) do
            if currentTime <= data.endTime then
                local targetPos = GetEntityCoords(ped)
                -- Add slight offset above head
                local displayPos = targetPos + vector3(0.0, 0.0, 0.9)
                ShowMeFloatingText(data.text, displayPos)
                hasActiveText = true
            else
                activeMeTexts[ped] = nil
            end
        end

        if hasActiveText then
            sleep = 0
        end

        Wait(sleep)
    end
end)

-- @desc Trigger the display of the text for a player
-- @param text text to display
-- @param target the target server id
local function onShareDisplay(text, target)
    local player = GetPlayerFromServerId(target)
    if player ~= -1 or target == GetPlayerServerId(PlayerId()) then
        local ped = GetPlayerPed(player)
        displayText(ped, text)
    end
end

-- Register the event
RegisterNetEvent('3dme:shareDisplay', onShareDisplay)

-- Add the chat suggestion
TriggerEvent('chat:addSuggestion', '/' .. lang.commandName, lang.commandDescription, lang.commandSuggestion)