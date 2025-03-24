local function createCustomNotification()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "CustomNotification"
    screenGui.Parent = game:GetService("CoreGui")
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local notificationContainer = Instance.new("Frame")
    notificationContainer.Name = "NotificationContainer"
    notificationContainer.Parent = screenGui
    notificationContainer.BackgroundTransparency = 1
    notificationContainer.Size = UDim2.new(0, 300, 0, 80)
    notificationContainer.Position = UDim2.new(0.5, 0, -0.1, 0)
    notificationContainer.AnchorPoint = Vector2.new(0.5, 0.5)

    local notificationFrame = Instance.new("Frame")
    notificationFrame.Name = "NotificationFrame"
    notificationFrame.Parent = notificationContainer
    notificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    notificationFrame.Size = UDim2.new(1, 0, 1, 0)
    notificationFrame.BorderSizePixel = 0
    notificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    notificationFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 10)
    uiCorner.Parent = notificationFrame

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.fromRGB(0, 0, 0)
    uiStroke.Transparency = 0.8
    uiStroke.Thickness = 1
    uiStroke.Parent = notificationFrame

    local accentLine = Instance.new("Frame")
    accentLine.Name = "AccentLine"
    accentLine.Parent = notificationFrame
    accentLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    accentLine.Size = UDim2.new(1, 0, 0, 3)
    accentLine.Position = UDim2.new(0, 0, 0, 0)
    accentLine.BorderSizePixel = 0
    accentLine.ZIndex = 2

    local accentCorner = Instance.new("UICorner")
    accentCorner.CornerRadius = UDim.new(0, 10)
    accentCorner.Parent = accentLine

    local iconFrame = Instance.new("Frame")
    iconFrame.Name = "IconFrame"
    iconFrame.Parent = notificationFrame
    iconFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconFrame.Size = UDim2.new(0, 40, 0, 40)
    iconFrame.Position = UDim2.new(0, 15, 0.5, 0)
    iconFrame.AnchorPoint = Vector2.new(0, 0.5)
    iconFrame.BorderSizePixel = 0

    local iconCorner = Instance.new("UICorner")
    iconCorner.CornerRadius = UDim.new(1, 0)
    iconCorner.Parent = iconFrame

    local iconLabel = Instance.new("TextLabel")
    iconLabel.Name = "IconLabel"
    iconLabel.Parent = iconFrame
    iconLabel.BackgroundTransparency = 1
    iconLabel.Size = UDim2.new(1, 0, 1, 0)
    iconLabel.Text = "✓"
    iconLabel.TextColor3 = Color3.fromRGB(30, 30, 30)
    iconLabel.TextSize = 24
    iconLabel.Font = Enum.Font.GothamBold

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Parent = notificationFrame
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0, 200, 0, 25)
    titleLabel.Position = UDim2.new(0, 70, 0, 15)
    titleLabel.Text = "SigmarxidiOS"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 16
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local messageLabel = Instance.new("TextLabel")
    messageLabel.Name = "MessageLabel"
    messageLabel.Parent = notificationFrame
    messageLabel.BackgroundTransparency = 1
    messageLabel.Size = UDim2.new(0, 200, 0, 20)
    messageLabel.Position = UDim2.new(0, 70, 0, 40)
    messageLabel.Text = "Injected Successfully!"
    messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    messageLabel.TextSize = 14
    messageLabel.Font = Enum.Font.Gotham
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left

    local function animateIn()
        local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        local tween = game:GetService("TweenService"):Create(
            notificationContainer,
            tweenInfo,
            {Position = UDim2.new(0.5, 0, 0.1, 0)}
        )
        tween:Play()

        notificationFrame.BackgroundTransparency = 0.5
        local fadeTween = game:GetService("TweenService"):Create(
            notificationFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 0}
        )
        fadeTween:Play()
    end

    local function animateOut()
        local textFadeTween = game:GetService("TweenService"):Create(
            titleLabel,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {TextTransparency = 1}
        )
        textFadeTween:Play()

        local messageFadeTween = game:GetService("TweenService"):Create(
            messageLabel,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {TextTransparency = 1}
        )
        messageFadeTween:Play()

        local accentFadeTween = game:GetService("TweenService"):Create(
            accentLine,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {BackgroundTransparency = 1}
        )
        accentFadeTween:Play()

        wait(0.3)

        local shrinkTween = game:GetService("TweenService"):Create(
            notificationFrame,
            TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In),
            {Size = UDim2.new(0, 50, 0, 50), Position = UDim2.new(0.5, 0, 0.5, 0)}
        )
        shrinkTween:Play()

        local iconMoveTween = game:GetService("TweenService"):Create(
            iconFrame,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5)}
        )
        iconMoveTween:Play()

        wait(0.4)

        local finalFadeTween = game:GetService("TweenService"):Create(
            notificationContainer,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {BackgroundTransparency = 1}
        )
        finalFadeTween:Play()

        local iconFadeTween = game:GetService("TweenService"):Create(
            iconFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {BackgroundTransparency = 1}
        )
        iconFadeTween:Play()

        local iconLabelFadeTween = game:GetService("TweenService"):Create(
            iconLabel,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {TextTransparency = 1}
        )
        iconLabelFadeTween:Play()

        local frameFadeTween = game:GetService("TweenService"):Create(
            notificationFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {BackgroundTransparency = 1}
        )
        frameFadeTween:Play()

        wait(0.3)
        screenGui:Destroy()
    end

    animateIn()

    spawn(function()
        wait(4)
        animateOut()
    end)

    notificationFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            animateOut()
        end
    end)

    return screenGui
end

createCustomNotification()
