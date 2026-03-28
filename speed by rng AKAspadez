--// Load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--// Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local RunService = game:GetService("RunService")

--// Player
local player = Players.LocalPlayer

--// Character handling
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = char:WaitForChild("HumanoidRootPart")
    humanoid = char:WaitForChild("Humanoid")
end)

---------------------------------------------------
-- MAIN SYSTEM
---------------------------------------------------

local Waypoint = nil
local AutoFarm = false
local Delay = 1
local UseTween = false
local TweenSpeed = 0.5

---------------------------------------------------
-- RNG SYSTEM
---------------------------------------------------

-- 25 Wins (old 10 wins)
local Win25 = Vector3.new(-140.0140838623047, 3.189606475830078, 794.1905517578125)

-- 50 Wins (new)
local Win50 = Vector3.new(498.53778076171875, 9.920595169067383, 962.8899536132812)

-- 25 system
local RNGTween25 = false
local RNGTweenSpeed25 = 0.5
local RNGAuto25 = false
local RNGDelay25 = 1

-- 50 system
local RNGTween50 = false
local RNGTweenSpeed50 = 0.5
local RNGAuto50 = false
local RNGDelay50 = 1

---------------------------------------------------
-- MISC SYSTEM
---------------------------------------------------

local WalkSpeedValue = 16
local InfiniteJump = false

RunService.RenderStepped:Connect(function()
    if humanoid then
        humanoid.WalkSpeed = WalkSpeedValue
    end
end)

UserInputService.JumpRequest:Connect(function()
    if InfiniteJump and humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

---------------------------------------------------
-- UI
---------------------------------------------------

local Window = Rayfield:CreateWindow({
   Name = "AKAspadez premium",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by AKAspadez",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Universal", 4483362458)
local SpeedTab = Window:CreateTab("Speed by RNG game (:", 4483362458)
local MiscTab = Window:CreateTab("Misc", 4483362458)

---------------------------------------------------
-- MAIN TAB
---------------------------------------------------

Tab:CreateButton({
    Name = "Set Waypoint",
    Callback = function()
        Waypoint = hrp.Position
    end
})

local function goToWaypoint()
    if not Waypoint then return end

    if UseTween then
        hrp.Anchored = true
        local tween = TweenService:Create(hrp, TweenInfo.new(TweenSpeed), {
            CFrame = CFrame.new(Waypoint + Vector3.new(0,3,0))
        })
        tween:Play()
        tween.Completed:Wait()
        hrp.Anchored = false
    else
        hrp.CFrame = CFrame.new(Waypoint + Vector3.new(0,3,0))
    end
end

Tab:CreateButton({
    Name = "Go To Waypoint",
    Callback = goToWaypoint
})

Tab:CreateToggle({
    Name = "Auto Waypoint",
    CurrentValue = false,
    Callback = function(val)
        AutoFarm = val
        if val then
            task.spawn(function()
                while AutoFarm do
                    goToWaypoint()
                    task.wait(Delay)
                end
            end)
        end
    end
})

Tab:CreateSlider({
    Name = "Delay",
    Range = {0.2,5},
    Increment = 0.1,
    CurrentValue = 1,
    Callback = function(val)
        Delay = val
    end
})

Tab:CreateToggle({
    Name = "Use Tween",
    CurrentValue = false,
    Callback = function(val)
        UseTween = val
    end
})

Tab:CreateSlider({
    Name = "Tween Speed",
    Range = {0.1,2},
    Increment = 0.1,
    CurrentValue = 0.5,
    Callback = function(val)
        TweenSpeed = val
    end
})

---------------------------------------------------
-- RNG TAB
---------------------------------------------------

--// 50 WINS
local function goTo50()
    if RNGTween50 then
        hrp.Anchored = true
        local tween = TweenService:Create(hrp, TweenInfo.new(RNGTweenSpeed50), {
            CFrame = CFrame.new(Win50 + Vector3.new(0,3,0))
        })
        tween:Play()
        tween.Completed:Wait()
        hrp.Anchored = false
    else
        hrp.CFrame = CFrame.new(Win50 + Vector3.new(0,3,0))
    end
end

SpeedTab:CreateButton({ Name = "50 Wins", Callback = goTo50 })

SpeedTab:CreateToggle({
    Name = "Tween 50 Wins",
    CurrentValue = false,
    Callback = function(val) RNGTween50 = val end
})

SpeedTab:CreateSlider({
    Name = "Tween Speed 50",
    Range = {0.1,2},
    Increment = 0.1,
    CurrentValue = 0.5,
    Callback = function(val) RNGTweenSpeed50 = val end
})

SpeedTab:CreateToggle({
    Name = "Auto 50 Wins",
    CurrentValue = false,
    Callback = function(val)
        RNGAuto50 = val
        if val then
            task.spawn(function()
                while RNGAuto50 do
                    goTo50()
                    task.wait(RNGDelay50)
                end
            end)
        end
    end
})

SpeedTab:CreateSlider({
    Name = "Auto Delay 50",
    Range = {0.2,5},
    Increment = 0.1,
    CurrentValue = 1,
    Callback = function(val) RNGDelay50 = val end
})

SpeedTab:CreateParagraph({
    Title = "Tip 50",
    Content = "Recommended: 0.2"
})

--// 25 WINS
local function goTo25()
    if RNGTween25 then
        hrp.Anchored = true
        local tween = TweenService:Create(hrp, TweenInfo.new(RNGTweenSpeed25), {
            CFrame = CFrame.new(Win25 + Vector3.new(0,3,0))
        })
        tween:Play()
        tween.Completed:Wait()
        hrp.Anchored = false
    else
        hrp.CFrame = CFrame.new(Win25 + Vector3.new(0,3,0))
    end
end

SpeedTab:CreateButton({ Name = "25 Wins", Callback = goTo25 })

SpeedTab:CreateToggle({
    Name = "Tween 25 Wins",
    CurrentValue = false,
    Callback = function(val) RNGTween25 = val end
})

SpeedTab:CreateSlider({
    Name = "Tween Speed 25",
    Range = {0.1,2},
    Increment = 0.1,
    CurrentValue = 0.5,
    Callback = function(val) RNGTweenSpeed25 = val end
})

SpeedTab:CreateToggle({
    Name = "Auto 25 Wins",
    CurrentValue = false,
    Callback = function(val)
        RNGAuto25 = val
        if val then
            task.spawn(function()
                while RNGAuto25 do
                    goTo25()
                    task.wait(RNGDelay25)
                end
            end)
        end
    end
})

SpeedTab:CreateSlider({
    Name = "Auto Delay 25",
    Range = {0.2,5},
    Increment = 0.1,
    CurrentValue = 1,
    Callback = function(val) RNGDelay25 = val end
})

SpeedTab:CreateParagraph({
    Title = "Tip 25",
    Content = "Recommended: 0.2"
})

---------------------------------------------------
-- MISC TAB
---------------------------------------------------

MiscTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {1,500},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(val)
        WalkSpeedValue = val
    end
})

MiscTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Callback = function(val)
        InfiniteJump = val
    end
})

MiscTab:CreateButton({
    Name = "Rejoin",
    Callback = function()
        TeleportService:Teleport(game.PlaceId, player)
    end
})

MiscTab:CreateButton({
    Name = "Server Hop",
    Callback = function()
        TeleportService:Teleport(game.PlaceId)
    end
})

---------------------------------------------------

Rayfield:LoadConfiguration()
