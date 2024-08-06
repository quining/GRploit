-- Instances:

local loader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local grploits = Instance.new("TextLabel")
local test = Instance.new("TextLabel")

--Properties:

loader.Name = "loader"
loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = loader
Frame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.778212309, 0, 0.815362871, 0)
Frame.Size = UDim2.new(0, 425, 0, 182)

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

grploits.Name = "grploits"
grploits.Parent = Frame
grploits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
grploits.BackgroundTransparency = 1.000
grploits.BorderColor3 = Color3.fromRGB(0, 0, 0)
grploits.BorderSizePixel = 0
grploits.Position = UDim2.new(0.268847078, 0, 0.0886927992, 0)
grploits.Size = UDim2.new(0, 221, 0, 65)
grploits.Font = Enum.Font.SourceSansBold
grploits.Text = "GRploits"
grploits.TextColor3 = Color3.fromRGB(255, 255, 255)
grploits.TextScaled = true
grploits.TextSize = 14.000
grploits.TextWrapped = true

test.Name = "test"
test.Parent = Frame
test.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
test.BackgroundTransparency = 1.000
test.BorderColor3 = Color3.fromRGB(0, 0, 0)
test.BorderSizePixel = 0
test.Position = UDim2.new(0.0900235549, 0, 0.335945547, 0)
test.Size = UDim2.new(0, 348, 0, 59)
test.Font = Enum.Font.SourceSansItalic
test.Text = "Dev Version Loaded"
test.TextColor3 = Color3.fromRGB(255, 255, 255)
test.TextScaled = true
test.TextSize = 14.000
test.TextWrapped = true

-- Scripts:

local function ZRMFK_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	wait(3)
	script.Parent.Parent.Frame.Visible = false	
end
coroutine.wrap(ZRMFK_fake_script)()
