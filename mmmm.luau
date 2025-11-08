local scrgui = Instance.new("ScreenGui")
scrgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local function createIntro()
    local splash = Instance.new("Frame")
    splash.Name = "splash"
    splash.Parent = scrgui
    splash.AnchorPoint = Vector2.new(0.5, 0.5)
    splash.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- Darker theme
    splash.BackgroundTransparency = 0.1 -- More solid
    splash.Position = UDim2.new(0.5, 0, -0.5, 0) -- Start from top
    splash.Size = UDim2.new(0, 400, 0, 400) -- Larger size
    splash.Visible = true
    splash.ZIndex = 40

    local uc_22 = Instance.new("UICorner")
    uc_22.CornerRadius = UDim.new(0, 25) -- Rounder corners
    uc_22.Parent = splash

    local sicon = Instance.new("ImageLabel")
    sicon.Name = "sicon"
    sicon.Parent = splash
    sicon.AnchorPoint = Vector2.new(0.5, 0.5)
    sicon.BackgroundTransparency = 1
    sicon.Position = UDim2.new(0.5, 0, 0.5, 0)
    sicon.Size = UDim2.new(0, 250, 0, 250) -- Larger icon
    sicon.ZIndex = 40
    sicon.Image = "rbxassetid://12621719043"
    sicon.ScaleType = Enum.ScaleType.Fit

    local loadingText = Instance.new("TextLabel")
    loadingText.Name = "LoadingText"
    loadingText.Parent = splash
    loadingText.AnchorPoint = Vector2.new(0.5, 0.5)
    loadingText.Position = UDim2.new(0.5, 0, 0.8, 0)
    loadingText.Size = UDim2.new(0, 200, 0, 50)
    loadingText.BackgroundTransparency = 1
    loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
    loadingText.Text = "Loading..."
    loadingText.TextSize = 24
    loadingText.Font = Enum.Font.GothamBold
    loadingText.ZIndex = 41

    -- Animations
    splash:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Bounce", 1.5)
    
    -- Loading animation
    spawn(function()
        while splash.Parent do
            for i = 1, 3 do
                loadingText.Text = "Loading" .. string.rep(".", i)
                wait(0.3)
            end
        end
    end)
    
    wait(3)
    
    -- Exit animation
    splash:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "In", "Quart", 1)
    game:GetService("Debris"):AddItem(splash, 1.1)
end

createIntro()
