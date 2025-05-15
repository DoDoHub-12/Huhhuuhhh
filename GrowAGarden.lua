GameName = "Grow a garden"

local Loading = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Loading_2 = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Discord = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local Description_2 = Instance.new("TextLabel")

local function addStroke(textLabel)
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 3
	stroke.Color = Color3.new(0, 0, 0)
	stroke.Parent = textLabel
end

-- Properties:

Loading.Name = "Loading"
Loading.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Loading
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.300
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.223439947, 0, 0.300324678, 0)
Main.Size = UDim2.new(0.553103447, 0, 0.399350643, 0)
addStroke(Main)

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Main

Loading_2.Name = "Loading"
Loading_2.Parent = Main
Loading_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading_2.BackgroundTransparency = 1.000
Loading_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loading_2.BorderSizePixel = 0
Loading_2.Position = UDim2.new(0, 0, 0.366666675, 0)
Loading_2.Size = UDim2.new(1, 0, 0.260162592, 0)
Loading_2.Font = Enum.Font.SourceSans
Loading_2.Text = "Loading"
Loading_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Loading_2.TextScaled = true
Loading_2.TextSize = 14.000
Loading_2.TextWrapped = true
addStroke(Loading_2)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, -0.190909132, 0)
Title.Size = UDim2.new(1, 0, 0.16260162, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = GameName .." Script"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
addStroke(Title)

Discord.Name = "Discord"
Discord.Parent = Main
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.BackgroundTransparency = 1.000
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Position = UDim2.new(0.0975609198, 0, 1.0454545, 0)
Discord.Size = UDim2.new(0.802992523, 0, 0.142276421, 0)
Discord.Font = Enum.Font.SourceSans
Discord.Text = "https://discord.gg/wkzTvQTSE8"
Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord.TextScaled = true
Discord.TextSize = 14.000
Discord.TextWrapped = true
addStroke(Discord)

Description.Name = "Description"
Description.Parent = Main
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0.0975609198, 0, 1.19090915, 0)
Description.Size = UDim2.new(0.802992523, 0, 0.08130081, 0)
Description.Font = Enum.Font.SourceSans
Description.Text = "(Automatically Copied To Clipboard)"
Description.TextColor3 = Color3.fromRGB(255, 255, 255)
Description.TextScaled = true
Description.TextSize = 14.000
Description.TextWrapped = true
addStroke(Description)

Description_2.Name = "Description"
Description_2.Parent = Main
Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_2.BackgroundTransparency = 1.000
Description_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_2.BorderSizePixel = 0
Description_2.Position = UDim2.new(0.0487804301, 0, 0.854545474, 0)
Description_2.Size = UDim2.new(0.900249362, 0, 0.142276421, 0)
Description_2.Font = Enum.Font.SourceSans
Description_2.Text = "Dont execute this ingame. or it will not work"
Description_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_2.TextScaled = true
Description_2.TextSize = 14.000
Description_2.TextWrapped = true
addStroke(Description_2)

-- Scripts:

local function ZVWYAVC_fake_script() -- Loading_2.Loop 
	local script = Instance.new('LocalScript', Loading_2)

	local txt = script.Parent

	while true do
		txt.Text = "Loading"
		wait(0.3)
		txt.Text = "Loading."
		wait(0.3)
		txt.Text = "Loading.."
		wait(0.3)
		txt.Text = "Loading..."
		wait(0.3)
	end
end
coroutine.wrap(ZVWYAVC_fake_script)()

-- Load main script in the background
task.spawn(function()
	local success, result = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/DoDoHub-12/scripts/refs/heads/main/GrowAGardenScript.lua"))()
	end)

	-- Optional warning if it fails
	if not success then
		warn("Failed to load Grow A Garden script:", result)
	end

	-- Wait a bit so the script feels like it "loaded"
	task.wait(2) -- Adjust this delay if needed

	-- Remove loading screen
	run = false
	screenGui:Destroy()
end)
