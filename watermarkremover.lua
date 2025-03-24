local CoreGui = game:GetService("CoreGui")
local NotificationFrame = CoreGui:FindFirstChild("RobloxGui")
    and CoreGui.RobloxGui:FindFirstChild("NotificationFrame")

if NotificationFrame then
    NotificationFrame.ChildAdded:Connect(function(notification)
        task.wait(0.1)
        if notification:IsA("Frame") then
            local title = notification:FindFirstChild("NotificationTitle")
            if title and title:IsA("TextLabel") then
                if string.find(title.Text, "[SpashAPI Nezur]") then
                    notification:Destroy()
                end
            end
        end
    end)
end
