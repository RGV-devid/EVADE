local Library = loadstring(game:HttpGet("https://github.com/RGV-devid/Script/blob/main/Library/MacLib.lua?raw=true"))()

local Window = Library:Window({
	Title = "YOUHUB ",
	Subtitle = "v0.0.1",
	Size = UDim2.fromOffset(758, 500),
	DragStyle = 1,
	MainText = "☘️EVADE🍀",
	DisabledWindowControls = {},
	ShowUserInfo = true,
	Keybind = Enum.KeyCode.RightControl,
	AcrylicBlur = true,
})
local Tabs = {
	Main = Window:TabGroup():Tab({ Name = "Main", Image = "rbxassetid://18821914323" }),
	Visual = Window:TabGroup():Tab({ Name = "Visual", Image = "rbxassetid://18821914323" }),
	Settings = Window:TabGroup():Tab({ Name = "Settings", Image = "rbxassetid://18821914323" }),
}
local Beside = {
	Farm = Tabs.Main:Section({ Side = "Left" }),
}
local Section = {
	Farm = Beside.Farm:Header({Name = "Farm"}),
}
Section.Farm:Dropdown({
	Name = "Elevation",
	Search = true,
	Multi = false,
	Required = false,
	Options = {"1000","1500","2000"},
	Default = {"1000"},
	Callback = function(v)
_G.Elevation = v
end})
Section.Farm:Toggle({
	Name = "Auto Farm XP",
	Default = false,
	Callback = function(v)
_G.AutoFarmXP = v
if v then
local part = Instance.new("Part", workspace)
   part.Anchored = true
   part.CFrame = CFrame.new(100, 996, 100)
   part.Material = "Neon"
   part.Transparency = 1
   part.Size = Vector3.new(10000,1,10000)
local part2 = Instance.new("Part", workspace)
   part2.Anchored = true
   part2.CFrame = CFrame.new(100, 1496, 100)
   part2.Material = "Neon"
   part2.Transparency = 1
   part2.Size = Vector3.new(10000,1,10000)
local part3 = Instance.new("Part", workspace)
   part3.Anchored = true
   part3.CFrame = CFrame.new(100, 1996, 100)
   part3.Material = "Neon"
   part3.Transparency = 1
   part3.Size = Vector3.new(10000,1,10000)
end
while _G.AutoFarmXP do wait(0.3)
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart", 3)
hrp.CFrame = CFrame.new(100, _G.Elevation, 100)
	end
end})
