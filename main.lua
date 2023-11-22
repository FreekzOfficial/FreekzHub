loadstring(game:HttpGet("https://raw.githubusercontent.com/FreekzOfficial/FreekzHub/main/functions.lua"))();
local LocalPlayer = _SRV("Players").LocalPlayer;
local gid = game.GameId;
local gameIds = {
	["66654135"] = "MurderMystery2"
};
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
getgenv()["OrionWindow"] = Window;
getfenv()["OrionWin"] = Window;
_G.OrionW = Window;
local tfind = function(x, y) for i,v in next, x do if (i == y) then return true end end return false end
if (tfind(gameIds, tostring(gid)) then
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/FreekzOfficial/FreekzHub/main/games/" .. gameIds[tostring(gid)] .. ".lua")))();
else
	OrionLib:MakeNotification({
		Name = "Warning!",
		Content = "This game is an unsupported game",
		Image = "rbxassetid://4483345998",
		Time = 5
	});
end
OrionLib:Init()
