-- Register command for setting the weather
RegisterCommand('setweather', function(source, args, rawCommand)
    -- Check if a weather name argument is provided
    if args[1] then
        local weather = args[1] -- Get the weather name from command arguments
        -- Call an event for all players
        local players = GetPlayers()
        for _, playerId in ipairs(players) do
            -- Set the weather type override for each player
            TriggerClientEvent('weather:setweather', playerId, weather)
        end
    end
end, false)

-- Register command for clearing the weather
RegisterCommand('clearweather', function(source, args, rawCommand)
    -- Call an event for all players
    local players = GetPlayers()
    for _, playerId in ipairs(players) do
        -- Clear the weather type override for each player
        TriggerClientEvent('weather:clearweather', playerId)
    end
end, false)

-- Add command descriptions
-- They don't work so ignore them, fix them, or delete them
TriggerEvent('chat:addSuggestion', '/setweather', 'Sets the servers weather', {
    { name = 'Weather Types: CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT, BLIZZARD', help = 'Sets the servers weather' }
})

TriggerEvent('chat:addSuggestion', '/clearweather', 'Clears the servers weather, returning it to normal', {
    {help = 'Clears the servers weather, returning it to normal' }
})