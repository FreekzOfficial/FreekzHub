local SelfModules = {
  Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/FreekzOfficial/FreekzHub/main/functions.lua"), "Error loading functions")()
}

local LocalPlayer = _SRV("Players").LocalPlayer
local OrionLib = _GHTTP('https://raw.githubusercontent.com/shlexware/Orion/main/source', nil, true)()

local Window = OrionLib:MakeWindow({Name = "FreekzHub", IntroEnabled = true, IntroText = "Welcome to FreekzHub ", HidePremium = false})
local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
print(LocalPlayer)
