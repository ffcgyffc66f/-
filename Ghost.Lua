local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("标准时间"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "鬼脚本", HidePremium = false, SaveConfig = true,IntroText = "鬼脚本", ConfigFolder = "鬼"})
local Tab = Window:MakeTab({
    Name = "用户",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("你的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("服务器的ID"," "..game.GameId.."")
local Tab =Window:MakeTab({
	Name = "关于作者",
	Icon = "rbxassetid://17360377302",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者QQ",
	Callback = function()
     setclipboard("3368904118")
  	end
})

OrionLib:MakeNotification({
	Name = "❌️❌️❌️❌️ ",
	Content = "持续更新",
	Image = "rbxassetid://17360377302",<
	Time = 2
})

local Tab = Window:MakeTab({
	Name = "音乐",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "防空警报",
   Callback = function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()
    end
 })
 
Tab:AddButton({
   Name = "义勇军进行曲",
   Callback = function()
   local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play() 
   end
})

local Tab = Window:MakeTab({
	Name = "小黑子",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "小黑子1",
  Callback = function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end
})

Tab:AddButton({
  Name = "小黑子2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
  end
})

local Tab = Window:MakeTab({
	Name = "自然灾害",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "自然灾害",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5fKvum70"))()
  end
})
Tab:AddButton({
	Name = "自然灾害2",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
  	end    
})

local Tab = Window:MakeTab({
    Name = "通用",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
    Name ="点击传送工具",
    Callback = function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
    end
})
Tab:AddButton({
    Name ="铁拳（能打飞人）",
    Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()
    end
})
Tab:AddButton({
    Name ="飞车",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
    end
})
Tab:AddButton({
    Name ="飞行",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})
Tab:AddButton({
    Name = "隐身按E",
	Callback = function()
	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
	end
})
Tab:AddButton({
    Name ="甩人通用",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
    end
})
Tab:AddButton({
    Name ="最强透视",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
    end
})
Tab:AddButton({
    Name ="人物体积",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/~KSJXBC62"))()
    end
})
Tab:AddButton({
    Name ="反挂机",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
    end
})
Tab:AddButton({
    Name ="吸人",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/~HHAKS"))()
    end
})
Tab:AddButton({
    Name ="骂人无违规",
    Callback = function()
    loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()
    end
})
Tab:AddButton({
    Name ="工具挂",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
    end
})
Tab:AddButton({
    Name ="键盘",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    end
})
Tab:AddButton({
    Name ="动画中心",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
    end
})
Tab:AddButton({
    Name ="光影v4",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
    end
})
Tab:AddButton({
	Name = "替身",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
    end
})
Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end
})
Tab:AddButton({
	Name = "转起来",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})
Tab:AddButton({
    Name="立即死亡",
    Callback= function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
    end
})

local Tab = Window:MakeTab({
    Name = "玩家",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddSlider({
	Name = "速度!",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
Tab:AddSlider({
	Name = "跳跃高度!",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})
Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
	local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
	end 
})
Tab:AddButton({
  Name = "隐身道具",
  Callback = function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
  end
})
Tab:AddToggle({
	Name = "穿墙(可用)",
	Default = false,
	Callback = function(Value)
	local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Clipon = true
 
Stepped = game:GetService("RunService").Stepped:Connect(function()
	if not Clipon == false then
		for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Players.LocalPlayer.Name then
        for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end end end end
	else
		Stepped:Disconnect()
	end
end)
    end
})

local Tab = Window:MakeTab({
    Name = "通用",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="名字",
    Callback = function()
    loadstring
    end
})
Tab:AddButton({
    Name ="飞车",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
    end
})
Tab:AddButton({
    Name ="飞行",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})
Tab:AddButton({
    Name = "隐身按E",
	Callback = function()
	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
	end
})

