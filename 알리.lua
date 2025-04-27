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
local Tab2 = Window:CreateTab("라이벌🔫")
local Tab3 = Window:CreateTab("✅살보결")
local Tab4 = Window:CreateTab("데드레일")
local Tab5 = Window:CreateTab("가장강력한 전장")
local Tab6 = Window:CreateTab("보물선 만들기")

-- 메인 탭 버튼들
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

-- 라이벌 탭 버튼
Tab2:CreateButton({
    Name = "라이벌 총알 자동맞춤-서버 바뀔때마다 누르세요",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ThunderScriptSolutions/Misc/refs/heads/main/RivalsSilentAim'))()
    end,
})

local Slider = Tab1:CreateSlider({
    Name = "스피드",
    Range = {0, 300},
    Increment = 10,
    Suffix = "Bananas",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })

local Slider = Tab1:CreateSlider({
    Name = "점프 파워",
    Range = {0, 600},
    Increment = 10,
    Suffix = "Bananas",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
 })

Tab2:CreateButton({
    Name = "SILENT HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KxGOATESQUE/SilentRivals/main/silentsolara"))()
    end,
})

-- 살보결 탭 버튼들
Tab3:CreateButton({
    Name = "Tbao Hub",
    Callback = function()
        print("살보결 스크립트 켜짐")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff'))()
    end,
})

Tab3:CreateButton({
    Name = "Zeyphr [Close Cheat]",
    Callback = function()
        print("Zeyphr 스크립트 켜짐")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealAvrwm/Projects/refs/heads/main/MVSD%20Xeno%20Closet.lua", true))()
    end,
})

Tab3:CreateButton({
    Name = "살인자vs보안관 가장좋은스크",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Update-script-hitbox-9326"))()
    end,
})

-- 데드레일 탭 버튼
Tab4:CreateButton({
    Name = "Speed Hub X",
    Callback = function()
        print("데드레일 스크립트 켜짐!")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end,
})

-- 가장강력한 전장 탭 버튼
Tab5:CreateButton({
    Name = "무한 쓰레기통,각종 기능",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man", true))()
    end,
})

Tab5:CreateButton({
   Name = "고죠 스크(사이타마)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/refs/heads/main/LatestV2.lua"))()
   end,
})

Tab5:CreateButton({
   Name = "가로우 1번 즉사",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/loadlua/TSB/main/Insta-kill.lua"))()
   end,
})

Tab5:CreateButton({
   Name = "나한테 슬로우-간지전용",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Reapvitalized/TSB/refs/heads/main/ARCAURA.lua"))()
   end,
})

-- 보물선 만들기 탭 버튼
Tab6:CreateButton({
    Name = "오토팜",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ExyXyz/ExyGantenk/main/ExyBABFT"))()
    end,
})
