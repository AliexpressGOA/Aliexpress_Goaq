local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 윈도우 생성
local Window = Rayfield:CreateWindow({
    Name = "🔥공백이 스크립트⭐✅",
    Icon = 0,
    LoadingTitle = "로딩중",
    LoadingSubtitle = "by 공백이",
    Theme = "Light",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = true,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "키는 'AliExpress' 입니다.",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"AliExpress"}
    }
})

-- 탭 생성
local Tab1 = Window:CreateTab("🔥메인 탭", 6031075938)

-- 플라이 기능
local flying = false
local speed = 50
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)

local function toggleFly()
    if flying then
        flying = false
        bodyVelocity:Destroy()
        character.Humanoid.PlatformStand = false
    else
        flying = true
        bodyVelocity.Velocity = Vector3.new(0, speed, 0)
        bodyVelocity.Parent = humanoidRootPart
        character.Humanoid.PlatformStand = true
    end
end

-- F키로 플라이 토글
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.F then
        toggleFly()
    end
end)

-- WASD로 이동
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if flying then
        local moveDirection = Vector3.new(0, 0, 0)
        
        if input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == Enum.KeyCode.W then
                moveDirection = moveDirection + humanoidRootPart.CFrame.LookVector
            elseif input.KeyCode == Enum.KeyCode.S then
                moveDirection = moveDirection - humanoidRootPart.CFrame.LookVector
            elseif input.KeyCode == Enum.KeyCode.A then
                moveDirection = moveDirection - humanoidRootPart.CFrame.RightVector
            elseif input.KeyCode == Enum.KeyCode.D then
                moveDirection = moveDirection + humanoidRootPart.CFrame.RightVector
            end
            bodyVelocity.Velocity = moveDirection * speed
        end
    end
end)

-- 무제한 점프 기능
local unlimitedJump = false
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Space then
        if unlimitedJump then
            character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Physics)
            character:FindFirstChildOfClass("Humanoid"):Move(Vector3.new(0, 0, 0))
        end
    end
end)

-- 노클립 기능
local noclip = false
local function toggleNoClip()
    noclip = not noclip
    local character = game.Players.LocalPlayer.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if noclip then
        humanoid.PlatformStand = true
        character:FindFirstChild("HumanoidRootPart").Anchored = true
    else
        humanoid.PlatformStand = false
        character:FindFirstChild("HumanoidRootPart").Anchored = false
    end
end

-- F 키로 노클립 토글
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.N then
        toggleNoClip()
    end
end)

-- 플라이 버튼
Tab1:CreateButton({
    Name = "플라이 F",
    Callback = function()
        toggleFly()
    end,
})

-- 무제한 점프 버튼
Tab1:CreateButton({
    Name = "무제한 점프",
    Callback = function()
        unlimitedJump = not unlimitedJump
        if unlimitedJump then
            print("무제한 점프가 활성화되었습니다.")
        else
            print("무제한 점프가 비활성화되었습니다.")
        end
    end,
})

-- 노클립 버튼
Tab1:CreateButton({
    Name = "노클립 (N)",
    Callback = function()
        toggleNoClip()
    end,
})

-- 기타 버튼들
Tab1:CreateButton({
    Name = "어드민",
    Callback = function()
        print("FE어드민 기능이 켜졌어요!")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
})

Tab1:CreateButton({
    Name = "딸치기 스크",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end,
})

Tab1:CreateButton({
    Name = "ESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua', true))()
    end,
})

Tab1:CreateButton({
    Name = "스피드있고다른좋은거많은기본핵-개좋음",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox-Exploit/main/Sirius"))()
    end,
})
