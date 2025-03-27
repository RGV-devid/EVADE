local Library = loadstring(game:HttpGet("https://github.com/RGV-devid/Script/blob/main/Library/MacLib.lua?raw=true"))()

local Window = Library:Window({
	Title = "YOUHUB | EVADE",
	Subtitle = "v0.0.1",
	Size = UDim2.fromOffset(758, 500),
	DragStyle = 1,
	MainText = "[🍀 ST.PATRICK] EVADE]",
	DisabledWindowControls = {},
	ShowUserInfo = true,
	Keybind = Enum.KeyCode.RightControl,
	AcrylicBlur = true,
})
local Tabs = {
	Main = Window:TabGroup().Tab({ Name = "Main", Image = "rbxassetid://18821914323" }),
	Visual = Window:TabGroup().Tab({ Name = "Visual", Image = "rbxassetid://18821914323" }),
	Settings = Window:TabGroup().Tab({ Name = "Settings", Image = "rbxassetid://18821914323" }),
}
