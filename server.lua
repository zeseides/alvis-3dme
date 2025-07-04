local lang = Languages[Config.language]

-- @desc Handle /me command
local function onMeCommand(source, args)
    local text = " " .. lang.prefix .. table.concat(args, " ") .. " "
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
end

-- Register the command
RegisterCommand(lang.commandName, onMeCommand)
