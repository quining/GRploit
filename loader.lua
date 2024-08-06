-- Instances:

local loader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local grploits = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

loader.Name = "loader"
loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = loader
Frame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.263678998, 0, 0.247680888, 0)
Frame.Size = UDim2.new(0, 907, 0, 543)

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

grploits.Name = "grploits"
grploits.Parent = Frame
grploits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
grploits.BackgroundTransparency = 1.000
grploits.BorderColor3 = Color3.fromRGB(0, 0, 0)
grploits.BorderSizePixel = 0
grploits.Position = UDim2.new(0.175303191, 0, 0.372686952, 0)
grploits.Size = UDim2.new(0, 588, 0, 160)
grploits.Font = Enum.Font.SourceSansBold
grploits.Text = "GRploits"
grploits.TextColor3 = Color3.fromRGB(255, 255, 255)
grploits.TextScaled = true
grploits.TextSize = 14.000
grploits.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.175303191, 0, 0.28797242, 0)
TextLabel.Size = UDim2.new(0, 588, 0, 160)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "loading"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 41.000
TextLabel.TextWrapped = true

-- Scripts:

local function ACMK_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local textLabel = frame:WaitForChild("TextLabel")
	
	frame.BackgroundTransparency = 1
	textLabel.TextTransparency = 1
	frame.Visible = true
	textLabel.Text = ""
	
	local function tweenProperty(object, propertyTable, time)
		local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		local tween = game:GetService("TweenService"):Create(object, tweenInfo, propertyTable)
		tween:Play()
		tween.Completed:Wait()
	end
	
	local function updateText(newText, delayTime)
		tweenProperty(textLabel, {TextTransparency = 0}, 0.5) 
		textLabel.Text = newText
		wait(delayTime)
		tweenProperty(textLabel, {TextTransparency = 1}, 0.5) 
	end
	
	tweenProperty(frame, {BackgroundTransparency = 0}, 1) 
	
	updateText("Loading...", 2)
	updateText("Loading assets...", 2)
	updateText("Thank you for using!", 2)
	
	tweenProperty(frame, {BackgroundTransparency = 1}, 1) 
	frame.Visible = false
	
end
coroutine.wrap(ACMK_fake_script)()
