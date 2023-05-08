-- Register a client event for setting the weather
RegisterNetEvent('weather:setweather')
AddEventHandler('weather:setweather', function(weather)
    -- Set the weather
    SetOverrideWeather(weather)
    TriggerEvent('notifications:displayNotification', 'Weather changed to: ' + weather)
end)

-- Register a client event for clearing the weather
RegisterNetEvent('weather:clearweather')
AddEventHandler('weather:clearweather', function()
    -- Clear the weather
    ClearOverrideWeather()
    TriggerEvent('notifications:displayNotification', 'Weather has been reset')
end)