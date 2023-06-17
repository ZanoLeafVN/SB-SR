local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()

local placeIds = {

    [6403373529] = function()

        NotificationLibrary:SendNotification("Success", "Game Supported!", 5)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZanoLeafVN/SB-SR/main/SB.lua"))()

    end,

    [9431156611] = function()

        NotificationLibrary:SendNotification("Success", "Game Supported!", 5)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZanoLeafVN/SB-SR/main/SR.lua"))()

    end,

    

}

local placeId = game.PlaceId

if placeIds[placeId] then

placeIds[placeId]()

else

loadstring(game:HttpGet("https://raw.githubusercontent.com/ZanoLeafVN/Yessir/main/Gamenotsupported"))()

end
