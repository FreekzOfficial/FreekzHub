loadstring(game:HttpGet("https://raw.githubusercontent.com/FreekzOfficial/FreekzHub/main/functions.lua"))()
local LocalPlayer = _SRV("Players").LocalPlayer
local gid = game.GameId
local gameIds = {
	["66654135"] = "MurderMystery2"
}
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
getgenv()["OrionWindow"] = Window
if (table.find(gameIds, tostring(gid)) then
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/FreekzOfficial/FreekzHub/main/games/" .. gameIds[tostring(gid)] .. ".lua")))()
end
OrionLib:Init()
