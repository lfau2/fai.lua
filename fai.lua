local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()

library.rank = "User"
local Wm = library:Watermark("Fai.cc | v" .. library.version .. " | " .. library:GetUsername() .. " | rank: " .. library.rank)
local FpsWm = Wm:AddWatermark("fps: " .. library.fps)

coroutine.wrap(function()
    while wait(0.75) do
        FpsWm:Text("fps: " .. library.fps)
    end
end)()

local Notif = library:InitNotifications()

-- Loading Animation
for i = 20, 0, -1 do 
    task.wait(0.05)
    Notif:Notify("Loading Fai.cc, please be patient.", 3, "information")
end 

library.title = "fai.cc"
library:Introduction()
wait(1)

-- Finish loading
local FinishedLoading = Notif:Notify("Loaded Fai.cc successfully", 4, "success")


-- Ensure the first script has finished
wait(1) -- Adjust this if necessary, depending on your actual loading times

-- Now wait for 3 seconds before loading fai.lua
wait(2)

-- Load fai.lua
local fai = loadstring(game:HttpGet("https://raw.githubusercontent.com/lfau2/fai.lua/main/fai.lua"))()

-- Notify that Fai features are loaded
local Notif = library:InitNotifications()
local FinishedLoading = Notif:Notify("Loaded Fai features successfully", 4, "success")

-- Example usage of a feature from fai.lua
-- fai:SomeFunction()  -- Replace with actual function calls you want to use
