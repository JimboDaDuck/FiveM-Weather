-- Register a client event for setting the weather
RegisterNetEvent('weather:setweather')
AddEventHandler('weather:setweather', function(weather)
    -- Set the weather
    SetOverrideWeather(weather)
    TriggerEvent('chat:addMessage', { args = { 'Weather has been changed.' } })
end)

-- Register a client event for clearing the weather
RegisterNetEvent('weather:clearweather')
AddEventHandler('weather:clearweather', function()
    -- Clear the weather
    ClearOverrideWeather()
    TriggerEvent('chat:addMessage', { args = { 'Weather has been changed.' } })
end)