local lplr = game.Players.LocalPlayer
local plrs = game.Players

local looptable = {}
local function doLoop(name,func)
	if looptable[name] == nil then
		looptable[name] = game:GetService("RunService").Stepped:Connect(func)
	end
end
local function endLoop(name)
	if looptable[name] then
		looptable[name]:Disconnect()
		looptable[name] = nil
	end
end
local SafeSpot = Instance.new("Part", workspace)

SafeSpot.Position = Vector3.new(500,100,500)

SafeSpot.Name = "Spot"

SafeSpot.Size = Vector3.new(50,50,50)

SafeSpot.Anchored = true

SafeSpot.Transparency = .5

Time = 0

bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)
    
    task.wait()
    
    if setfpscap then
        
        setfpscap(12569)
        
    end
    
   local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/R2O/main/Files/Gloves.lua"))()

   local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/R2O/main/Files/Functions.lua"))()

   local function getGlove()
	    
       return game.Players.LocalPlayer.leaderstats.Glove.Value
	    
    end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "A00PKIDD Hub | By a00pkidd",
   LoadingTitle = "A00PKIDD Hub",
   LoadingSubtitle = "by a00pkidd",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   }
})
local Tab = Window:CreateTab("AutoFarms", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Slap Farm")
local Toggle = Tab:CreateToggle({
   Name = "Universal Slap Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

            allFarming = bool

                if bool == true then
                    
                    if setfpscap then
                        
                        setfpscap(50)
                    
                    end
                    
                    workspace.DEATHBARRIER.CanTouch = false
                    workspace.DEATHBARRIER2.CanTouch = false
                    workspace.dedBarrier.CanTouch = false
            
                    task.wait()

                    while allFarming do

                        task.wait()
                        
                        pcall(function()
                        
                        for Index, Human in next, game.Players:GetPlayers() do
                            
                            if Human ~= game.Players.LocalPlayer and Human.Character and not Human.Character:FindFirstChild("isParticipating") and Human.Character:FindFirstChild("Torso") and Human.Character:FindFirstChild("Head") and Human.Character:FindFirstChild("entered") and Human.Character.Head:FindFirstChild("UnoReverseCard") == nil and Human.Character:FindFirstChild("rock") == nil and Human.Character.Ragdolled.Value == false then
                                
                                if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                
                                task.wait(.1)
                                
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = Human.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)
                                        
                                        task.wait()
                                        
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
                                    
                                        wait(.25)
                                        
                                    shared.gloveHits[getGlove()]:FireServer(Human.Character:FindFirstChild("Torso"))
                                        
                                        wait(.25)
                                    
                                    end
                                end
                        end
                        
                        end)
                        
                        end
                    
                    
                    else
                    
                    if setfpscap then
                    
                    setfpscap(1269)
                    
                    end
                    
                    workspace.DEATHBARRIER.CanTouch = true
                    workspace.DEATHBARRIER2.CanTouch = true
                    workspace.dedBarrier.CanTouch = true
                    
                    if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then
                        
                        task.wait(3)
                        
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                        
                    end
                    
                end

    end,
   
})

local Toggle = Tab:CreateToggle({
   Name = "Ghost Slap Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

            Farming = bool

                if bool == true then
                    
                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
                    
                    if setfpscap then
                        
                        setfpscap(50)
                        
                    end
                    
                    while Farming do

                        wait()
                        
                        pcall(function()
                            
                        for Index, Human in next, game.Players:GetPlayers() do
                                
                            if Human ~= game.Players.LocalPlayer and Human.Character and Human.Character:FindFirstChild("Head") and Human.Character:FindFirstChild("entered") and Human.Character.Head:FindFirstChild("UnoReverseCard") == nil and Human.Character:FindFirstChild("rock") == nil and Human.Character.Ragdolled.Value == false then
                                
                                if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                
                                task.wait(.1)
                                
                                if getGlove() == "Ghost" then

                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = Human.Character:FindFirstChild("Torso").CFrame * CFrame.new(6,-2,6)
                                        
                                        task.wait()
                                        
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
                                    
                                        wait(.25)
                                        
                                    game.ReplicatedStorage.GhostHit:FireServer(Human.Character:WaitForChild(toHit))
                                    
                                        wait(.25)
                                    
                                    end
                                end
                            end
                        end
                        end)
                    end
                    
                else
                    
                game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()
                
                    if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then
                        
                        task.wait(3)
                        
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                        
                    end

                if setfpscap then
                    
                    setfpscap(1269)
                    
                end
                
                end

    end,

})

local Section = Tab:CreateSection("Badges")
local Button = Tab:CreateButton({
   Name = "Get Tycoon",
   Callback = function()
        
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) then
            
            if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
                
            repeat task.wait(.5)
                                
            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                            
            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
                            
            until game.Players.LocalPlayer.Character:FindFirstChild("entered")
            
            else
                
            end
            
            repeat task.wait(.5)
                
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0)
                
            until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) 
            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)

        end
        
    end,
})

local Button = Tab:CreateButton({
   Name = "Get [ REDACTED ]",
   Callback = function()
        
        local Door = 1

        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) and 5000 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

        repeat
    
        task.wait(.25)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PocketDimension.Doors[Door].CFrame

        Door = Door + 1

        print(Door)

        wait(5)

        until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850)

        else 

        print("YOU ALREADY HAVE [ R E D A C T E D ] !!")

        print("OR YOU DONT HAVE 5K SLAPS")

        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bob Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        bobFarm = bool
        
        if bool == true then
           
            while bobFarm do
                
                task.wait()
                
                    if getGlove() == "Replica" and bobFarm and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then

                    game.ReplicatedStorage.Duplicate:FireServer() -- dont retoggle u fucking retards

                    task.wait()
                    
                    tick = os.time()
                    
                    repeat task.wait()
                        
                    until os.time() - tick >= 5.1
                    
                    end
            end
            
            else
            
            task.wait(10.2)
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Fish Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    
        fishFarm = bool
    
        if bool == true then
            
        if game.Players.LocalPlayer.Character:FindFirstChild("entered") and getGlove() == "ZZZZZZZ" then
            
            print("READY")

            task.wait()
            
            print("-------------------------------------------")
            
            task.wait()
            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed [ OvErCrInGe02#0658 ] "].Bed3.CFrame * CFrame.new(0,0,-1)
            task.wait(.5)
            
            game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
            
        else
            
            print("FAILED TO TELEPORT TO SAFE SPOT PLEASE DO IT MANUALLY")
        
        end
        
        task.wait()
        
            while fishFarm and task.wait() do
        
                if getGlove() == "ZZZZZZZ" and workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("entered") then
                
                    if workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("Ragdolled").Value then
                    
                        task.wait(1)
                    
                        Time += 1 -- Editor Bug ( Works )
                        
                        print(Time)
                    
                    else
                    
                    Time = 0
                    
                    end
                
                end

            end
    
        else
        
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        
        end
    
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Brick Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.840027, 127.999977, 500.244598, 0.902061045, 0, -0.431608498, 0, 1, 0, 0.431608498, 0, 0.902061045)
		_G.Brickfarm = Value
while _G.Brickfarm do
game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
task.wait(2.6)
 end
  end,
})

local Toggle = Tab:CreateToggle({
   Name = "Slapple Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

            getgenv().Slapple = bool

                if bool == true then

                    while getgenv().Slapple do

                        wait(.001)

                        for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do

                            if Instance.ClassName == "TouchTransmitter" then

                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)

                            end

                        end

                    end

                end

    end,
})

local Tab = Window:CreateTab("Combat", 4483362458) -- Title, Image
local Section = Tab:CreateSection("SlapAura")
local Toggle = Tab:CreateToggle({
   Name = "Slap Aura",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

        getgenv().SlapAura = bool

            if bool == true then

                while getgenv().SlapAura do

                    task.wait(.005)
                        
                        pcall(function()
                            
                        for Index, Player in next, game.Players:GetPlayers() do
                            
                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
                                
                                if Player.Character:FindFirstChild("Head") then
                                    
                                if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
                                    
                                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

                                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                                    
                                    if 50 >= Magnitude then
                                        
                                        shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))
                                        
                                end
                                    
                                    end
                            end
                                
                                end
                        end
                        
                        end
                    end)
                end
                
            end
    
    end,
})

local Section = Tab:CreateSection("Bully People")
local Toggle = Tab:CreateToggle({
   Name = "Bully People [ Shukuchi ]",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
   autoShuk = bool
        if bool == true then
            while autoShuk do
                task.wait()
                pcall(function()
                if getGlove() == "Shukuchi" then
                    for i,x in pairs(game.Players:GetPlayers()) do
                        if x ~= game.Players.LocalPlayer and x.Character and 150 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x.Character.HumanoidRootPart.Position).Magnitude then
                            game.ReplicatedStorage.SM:FireServer(x)
                        end
                    end
                end
                end)
            end
        end
   end,
})

local Tab = Window:CreateTab("Misc", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
   Name = "Auto Enter Area",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

        getgenv().autoJoin = bool

            if bool == true then

                while getgenv().autoJoin do

                    wait()
                        
                        repeat task.wait() until game.Players.LocalPlayer.Character
                    
                        if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            
                            repeat task.wait(.005)
                                
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                            
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

                            until game.Players.LocalPlayer.Character:FindFirstChild("entered")
                            
                        end
                
                end
                
            end
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Ragdoll",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    
        antiRagdoll = bool
        
        if bool == true then
            
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        
        task.wait()
        
        game.Players.LocalPlayer.CharacterAdded:Connect(function()

            local Character = game.Workspace[game.Players.LocalPlayer.Name]
            
            task.wait()
            
            Character:WaitForChild("Ragdolled").Changed:Connect(function()
                
                if Character:WaitForChild("Ragdolled").Value == true and antiRagdoll == true then
                    
                    repeat task.wait()
                        
                    Character.Torso.Anchored = true
                        
                    until Character:FindFirstChild("Torso") == nil or Character:WaitForChild("Ragdolled").Value == false
                    
                    Character.Torso.Anchored = false

                end
                
            end)
            
        end)
        
        end
            
    end,
})

local Section = Tab:CreateSection("Stuff")
local Toggle = Tab:CreateToggle({
   Name = "Anti Void",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(noVoid)
        
        if noVoid == true then
            
            for i,v in pairs(game.Workspace:GetDescendants()) do
                
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then
           
                    if v.CanCollide == false then
               
                        v.CanCollide = true
                        
                        v.Material = "ForceField"
                        
                        v.Color = Color3.new(0,255,0)
                        
                        v.Transparency = 12
               
                    end
           
                end
                
            end
            
            else
                
            for i,v in pairs(game.Workspace:GetDescendants()) do
                
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then
           
                    if v.CanCollide == true then
               
                        v.CanCollide = false
                        
                        v.Transparency = 1
               
                    end
           
                end
                
            end
        
        end
    
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Admins",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    
    antiAdmins = bool
    
    if bool == true then
           
        game.Players.PlayerAdded:Connect(function(Plr)
            
            if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                game.Players.LocalPlayer:Kick("Admin Cummer Detected 🔥")
            end
            
        end)
        
    end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Remove Name",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        Auto_Remove = bool
        
        if bool == true then
        
        game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
            
            task.wait()
            
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
                
                if Auto_Remove == true then
                    
                repeat task.wait()
                    
                until game.Players.LocalPlayer.Character:FindFirstChild("Head")
                
                game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
                    
                end
                
            end)
    
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Invis",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

        autoInvis = bool

            game.Players.LocalPlayer.CharacterAdded:Connect(function()

                if autoInvis == true and 666 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

        
                    repeat task.wait()  
                    
                    until game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("Nametag") ~= nil
                    
                    game.Players.LocalPlayer.Character.Head.Nametag:Destroy()

                    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

                    task.wait(.1)

                    local gloveClick = game.Players.LocalPlayer.leaderstats.Glove.Value

                    task.wait(.2)

                    fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)

                    task.wait(.2)

                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

                    task.wait(.2)

                    fireclickdetector(game.Workspace.Lobby[gloveClick].ClickDetector)

                end

            end)
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Disable Cube Of Death",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        if bool == true then
        
        if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
            
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        
        end
        
        else
            
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
                
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true

            end

        end
        
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Invisible Reverse [ FE ]",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        Invis_Reverse = bool
        
        if bool == true then
        
        while Invis_Reverse do
        
            repeat wait(.005) until game.Players.LocalPlayer.Character:FindFirstChild("SelectionBox", 1) and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("UnoReverseCard")

            game.Players.LocalPlayer.Character.Head["UnoReverseCard"]:Destroy()

            for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    
                if v.Name == "SelectionBox" then
                
                v:Destroy()
        
                end
            
            end
        
        end
        
        end
        
    end,
})

local Tab = Window:CreateTab("Anti", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Anti Glove")
local Toggle = Tab:CreateToggle({
   Name = "Anti Hallow-Jack",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

        antiHallow = bool
        
        if bool == true then
            
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true
        
        else
        
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true
        
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Za Hando",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        getgenv().AntiZaHando = bool
        
        if bool == true then
            
            while getgenv().AntiZaHando do
                
                wait(.001)
                
                for i,v in pairs(game.Workspace:GetChildren()) do
                    
                    if v.ClassName == "Part" and v.Name == "Part" then
                        
                        v:Destroy()
                    
                    end
                    
                end
                
            end
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti TimeStop",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(cb)
	if cb then
		doLoop("ats",function()
			for i,v in pairs(lplr.Character:GetChildren()) do
				if v:IsA("BasePart") and donerag then
					v.Anchored = false
				end
			end
		end)
	else
		endLoop("ats")
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Reaper",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        getgenv().AntiReaper = bool
        
        if bool == true then
            
            while getgenv().AntiReaper do
            
                wait(.001)
            
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

                    if v.Name == "DeathMark" then

                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)

                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 

                    end 
        
                end
            
            end
            
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Pusher",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        getgenv().AntiPusher = bool
        
        if bool == true then
            
            while getgenv().AntiPusher do
            
                wait(.001)
            
                for i,v in pairs(game.Workspace:GetChildren()) do
        
                    if v.Name == "wall" then
            
                    v.CanCollide = false
            
                    end
        
                end
            
            end
            
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Booster",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        antiBooster = bool
        
        if bool == true then
            
            if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1) then
            
                game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1):Destroy()
            
            end
        
            task.wait()
            
            game.Workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function(v)
                
                if antiBooster == true then
                    
                    if v.Name == "BoosterObject" then
                        
                        task.wait(.1)
                        
                        v:Destroy()
                        
                    end
                    
                end
                
            end)
            
        end
        
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Mail",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        antiMail = bool
        
        if bool == true then
            
            game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(UI)
                
                if antiMail == true then
                    
                    if UI.Name == "MailPopup" then
                    
                        UI.Frame.Visible = false
                        
                        task.wait()
                        
                        game.Players.LocalPlayer.Character.Head.MailIcon:Destroy()
                    
                    end
                
                end
                
            end)
        else
        
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MailPopup") then
            
            game.Players.LocalPlayer.PlayerGui.MailPopup.Frame.Visible = true
        
            task.wait()
            
        end
        
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Stun",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        antiStun = bool
        
        if bool == true then
            
            while antiStun do
                
            task.wait()
            
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true and not Farming and not allFarming and not game.Players.LocalPlayer.Character.Ragdolled.Value == true and game.Workspace:FindFirstChild("Shockwave") then
                
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                
            end
            
            end
            
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Megarock / Custom",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        AntiRock = bool
        
        if bool == true then
            
            while AntiRock do
                
                task.wait(.1)
                
        for _, Instance in pairs(game.Workspace:GetDescendants()) do
                    
            if Instance.Name == "rock" and Instance.CanTouch == true then

                Instance.CanTouch = false
                        
                Instance.CanQuery = false
                        
            end
                    
                    
        end
                
            end
            
        else
        
        task.wait(.1)  
        
        for _, Instance in pairs(game.Workspace:GetDescendants()) do
                    
            if Instance.Name == "rock" and Instance.CanTouch == false then
                
                task.wait()
                
                Instance.CanTouch = true
                        
                Instance.CanQuery = true
                        
            end
        
        end
            
        end
                
    
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Squid",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    
        AntiSquid = bool
        
        if bool == true then
            
            while AntiSquid do
            
            task.wait()
            
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.SquidInk:GetChildren()) do
                
                if v.Parent then
                    
                    v:Destroy()
                    
                end
                
            end
            
            end
        
        end
        
    end,
})

local Tab = Window:CreateTab("Spam", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Spam Sound")
local Toggle = Tab:CreateToggle({
   Name = "Spam Error Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
        errorSpam = bool
        
        if bool == true then
            
            while errorSpam do
                
                task.wait()
                
                game.ReplicatedStorage.ErrorDeath:FireServer()
                
            end
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Thanos Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)

        autoThanos = bool
        
        if bool == true then
            
            while autoThanos do
                
                task.wait()

                if getGlove() == "Thanos" then
    
                    task.wait()
                    
                    game.ReplicatedStorage.Illbeback:FireServer()
                
                end
            end
        end
        
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Space Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    
    spamSpace = bool
    
    if bool == true then
        
        while spamSpace do
            
            task.wait()
            
            if getGlove() == "Space" then
                game.ReplicatedStorage["ZeroGSound"]:FireServer()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)

            end
            
        end
        
    else
        for x = 1,5 do
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
        end

        
    end
    
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Ping Pong",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    
    spamBall = bool 
    
    if bool == true then
        
        while spamBall and task.wait() do 
            
            if getGlove() == "Ping Pong" then 
                
                game.ReplicatedStorage.GeneralAbility:FireServer()

            end 
            
        end 
        
    end
    
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Ghost Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.GhostSoundSpam = Value
while _G.GhostSoundSpam do
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()
task.wait()
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Golden Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.GoldenSoundSpam = Value
while _G.GoldenSoundSpam do
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
task.wait()
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Slicer Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.SlicerSoundSpam = Value
while _G.SlicerSoundSpam do
game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
task.wait()
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Charge Sound",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.ChargeSoundSpam = Value
while _G.ChargeSoundSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character.Charge)
wait(3.05)
end
                    end,
})

local Section = Tab:CreateSection("Spam Glove")
local Toggle = Tab:CreateToggle({
   Name = "Home Run Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.HomeRunSpam = Value
while _G.HomeRunSpam do
local args = {
    [1] = {
        ["start"] = true
    }
}
game:GetService("ReplicatedStorage").HomeRun:FireServer(unpack(args))
task.wait()
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Home Run Max Charge Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     _G.HomeRunSpam = Value
while _G.HomeRunSpam do
local args = {
    [1] = {
        ["start"] = true
    }
}
game:GetService("ReplicatedStorage").HomeRun:FireServer(unpack(args))
wait(3.05)
                    end    
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Shukuchi Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.ShukuchiSpam = Value
while _G.ShukuchiSpam do
local LocalPlayer = game.Players.LocalPlayer
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= LocalPlayer
PersonToKill = RandomPlayer
game:GetService("ReplicatedStorage").SM:FireServer(PersonToKill)
wait(0.01)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Slicer Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.SlicerSpam = Value
while _G.SlicerSpam do
game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
game:GetService("ReplicatedStorage").Slicer:FireServer("slash", CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(-5.66729e-11, 0.000832287, -1.10219e-10), Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation))
wait(5.1)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Kraken Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.KrakenSpam = Value
while _G.KrakenSpam do
game:GetService("ReplicatedStorage").KrakenArm:FireServer()
wait(5)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Psycho Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.PsychoSpam = Value
while _G.PsychoSpam do
game:GetService("ReplicatedStorage").Psychokinesis:InvokeServer({["grabEnabled"] = true})
task.wait()
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bus Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.BusSpam = Value
while _G.BusSpam do
game:GetService("ReplicatedStorage").busmoment:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Mitten Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.MittenSpam = Value
while _G.MittenSpam do
game:GetService("ReplicatedStorage").MittenA:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Fort Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.FortSpam = Value
while _G.FortSpam do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Defense Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.DefenseSpam = Value
while _G.DefenseSpam do
game:GetService("ReplicatedStorage").Barrier:FireServer()
wait(0.25)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bomb Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.BombSpam = Value
while _G.BombSpam do
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(2.5)
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(4.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Replica Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.ReplicaSpam = Value
while _G.ReplicaSpam do
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Pusher Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.PusherSpam = Value
while _G.PusherSpam do
game:GetService("ReplicatedStorage").PusherWall:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Jet Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     _G.JetSpam = Value
while _G.JetSpam do
local LocalPlayer = game.Players.LocalPlayer
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= LocalPlayer
PersonToKill = RandomPlayer
game:GetService("ReplicatedStorage").AirStrike:FireServer(PersonToKill.Character)
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Tableflip Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.TableflipSpam = Value
while _G.TableflipSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Rocky Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.RockySpam = Value
while _G.RockySpam do
game:GetService("ReplicatedStorage").RockyShoot:FireServer()
wait(6.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Timestop Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.TimestopSpam = Value
while _G.TimestopSpam do
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
wait(50.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Za Hando Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.ZahandoSpam = Value
while _G.ZahandoSpam do
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(4.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Baller Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.BallerSpam = Value
while _G.BallerSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Stun Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.StunSpam = Value
while _G.StunSpam do
game:GetService("ReplicatedStorage").StunR:FireServer(game:GetService("Players").LocalPlayer.Character.Stun)
wait(10.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Glitch Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.GlitchSpam = Value
while _G.GlitchSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Stop Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.StopSpam = Value
while _G.StopSpam do
game:GetService("ReplicatedStorage").STOP:FireServer(true)
wait(4.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Track Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.TrackSpam = Value
while _G.TrackSpam do
 local LocalPlayer = game.Players.LocalPlayer
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= LocalPlayer
PersonToKill = RandomPlayer
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(PersonToKill.Character)
wait(10.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Track Orbit",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.TrackSpam = Value
while _G.TrackSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character)
wait(10.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Mail Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.MailSpam = Value
while _G.MailSpam do
game:GetService("ReplicatedStorage").MailSend:FireServer()
wait(3.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Shard Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.ShardSpam = Value
while _G.ShardSpam do
game:GetService("ReplicatedStorage").Shards:FireServer()
wait(4.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Swapper Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.SwapperSpam = Value
while _G.SwapperSpam do
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bubble Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.BubbleSpam = Value
while _G.BubbleSpam do
game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Slapple Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.SlappleSpam = Value
while _G.SlappleSpam do
game:GetService("ReplicatedStorage").funnyTree:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Kinetic Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.KineticSpam = Value
while _G.KineticSpam do
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game:GetService("Players").LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(9.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Dominance Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.DominanceSpam = Value
while _G.DominanceSpam do
game:GetService("ReplicatedStorage").DominanceAc:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Shield Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.ShieldSpam = Value
while _G.ShieldSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Redacted Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.RedactedSpam = Value
while _G.RedactedSpam do
game:GetService("ReplicatedStorage").Well:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Duelist Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.DuelistSpam = Value
while _G.DuelistSpam do
game:GetService("ReplicatedStorage").DuelistAbility:FireServer()
wait(5.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Engineer Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.EngineerSpam = Value
while _G.EngineerSpam do
game:GetService("ReplicatedStorage").Sentry:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Brick Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.BrickSpam = Value
while _G.BrickSpam do
game:GetService("ReplicatedStorage").lbrick:FireServer()
wait(1.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Trap Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.TrapSpam = Value
while _G.TrapSpam do
game:GetService("ReplicatedStorage").funnyhilariousbeartrap:FireServer()
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Woah Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.WoahSpam = Value
while _G.WoahSpam do
game:GetService("ReplicatedStorage").VineThud:FireServer()
wait(5.2)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Ping Pong Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.PingPongSpam = Value
while _G.PingPongSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(8)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Recall VFX",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.RecallVFXSpam = Value
while _G.RecallVFXSpam do
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(3.05)
end
                    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spam Sleep",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.SleepSpam = Value
while _G.SleepSpam do
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
task.wait()
end
                    end,
})

local Tab = Window:CreateTab("Teleport", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Island")
local Button = Tab:CreateButton({
   Name = "Lobby",
   Callback = function()
  local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-553.357727, 327.927612, -1.61680317, -0.0151273916, -0, -0.999885619, -0, 1.00000012, -0, 0.999885619, 0, -0.0151273916)
   end,
})

local Button = Tab:CreateButton({
   Name = "Default Area",
   Callback = function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(116.000206, 359.984283, 7.96988058, 0.99999994, 1.22788251e-08, 0.000383929088, -1.22673818e-08, 1, -2.98091436e-08, -0.000383929088, 2.98044327e-08, 0.99999994)
   end,
})

local Button = Tab:CreateButton({
   Name = "Normal Area",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-9.99995422, -1.50228882, 36.9697876, 0.999697328, -2.53584876e-05, -0.0246023219, -0.000715803937, 0.99954617, -0.030116437, 0.0245919209, 0.0301249307, 0.999243557)
    end,
})

local Button = Tab:CreateButton({
   Name = "Tournament",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(3026.0271, 145.773895, -0.273300707, -0.0419249646, 2.43408174e-08, -0.999120772, -3.03162686e-08, 1, 2.5634364e-08, 0.999120772, 3.13643334e-08, -0.0419249646)
    end,
})

local Button = Tab:CreateButton({
   Name = "Slapple Island",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-393.214111, 50.7640572, -12.5281019, -0.119613551, 0, 0.992820501, 0, 1.00000012, -0, -0.992820621, 0, -0.119613536)
    end,
})

local Tab = Window:CreateTab("ESP", 4483362458) -- Title, Image
local Section = Tab:CreateSection("ESP Player")

local tracerState = false
local Players = game:GetService("Players"):GetChildren()
local localPlayer = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = Workspace.CurrentCamera

for i,v in pairs(game.Players:GetChildren()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(0,255,110)
    Tracer.Thickness = 0.5
    Tracer.Transparency = 0.5

    local function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= localPlayer and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    Tracer.Visible = tracerState
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end

game.Players.PlayerAdded:Connect(function(v)
        local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(0,255,110)
    Tracer.Thickness = 0.5
    Tracer.Transparency = 0.5

    local function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= localPlayer and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    
                    Tracer.Visible = tracerState
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end)

local Toggle = Tab:CreateToggle({
   Name = "ESP Tracer",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    if bool then
        tracerState = true
    else
        tracerState = false
    end
   end,
})

local workspace = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera

local on = false
local Box_Color = Color3.fromRGB(0, 255, 110)
local Box_Thickness = 0.5
local Box_Transparency = 0.5 -- 0.5 Visible, 0 Not Visible

local Autothickness = false

local Team_Check = false
local red = Color3.fromRGB(0, 255, 110)
local green = Color3.fromRGB(0, 255, 110)

local function NewLine()
    local line = Drawing.new("Line")
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(1, 1)
    line.Color = Box_Color
    line.Thickness = Box_Thickness
    line.Transparency = Box_Transparency
    return line
end

for i, v in pairs(game.Players:GetChildren()) do
    --// Lines for 3D box (12)
    local lines = {
        line1 = NewLine(),
        line2 = NewLine(),
        line3 = NewLine(),
        line4 = NewLine(),
        line5 = NewLine(),
        line6 = NewLine(),
        line7 = NewLine(),
        line8 = NewLine(),
        line9 = NewLine(),
        line10 = NewLine(),
        line11 = NewLine(),
        line12 = NewLine(),
    }

    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if on and v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= player.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if vis then
                    local Scale = v.Character.Head.Size.Y/2
                    local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                    local Top1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                    local Top2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                    local Top3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                    local Top4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)


                    lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                    lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                    lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                    lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                    lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                    lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                    --// Bottom:
                    lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                    lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                    lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                    lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)


                    lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                    lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line12.To = Vector2.new(Top4.X, Top4.Y)


                    if Team_Check then
                        if v.TeamColor == player.TeamColor then
                            for u, x in pairs(lines) do
                                x.Color = green
                            end
                        else 
                            for u, x in pairs(lines) do
                                x.Color = red
                            end
                        end
                    end
                    
                    
                    if Autothickness then
                        local distance = (player.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                        local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(lines) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(lines) do
                            x.Thickness = Box_Thickness
                        end
                    end

                    for u, x in pairs(lines) do
                        if x ~= lines.Tracer then
                            x.Visible = true
                        end
                    end
                    if Tracers then
                        lines.Tracer.Visible = true
                    end
                else 
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(lines) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(v.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end

game.Players.PlayerAdded:Connect(function(newplr)

    local lines = {
        line1 = NewLine(),
        line2 = NewLine(),
        line3 = NewLine(),
        line4 = NewLine(),
        line5 = NewLine(),
        line6 = NewLine(),
        line7 = NewLine(),
        line8 = NewLine(),
        line9 = NewLine(),
        line10 = NewLine(),
        line11 = NewLine(),
        line12 = NewLine(),
    }


    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if on and newplr.Character ~= nil and newplr.Character:FindFirstChild("Humanoid") ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= player.Name and newplr.Character.Humanoid.Health > 0 and newplr.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                if vis then
                    local Scale = newplr.Character.Head.Size.Y/2
                    local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                    local Top1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                    local Top2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                    local Top3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                    local Top4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)


                    lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                    lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                    lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                    lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                    lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                    lines.line4.To = Vector2.new(Top1.X, Top1.Y)


                    lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                    lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                    lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                    lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)


                    lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                    lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line12.To = Vector2.new(Top4.X, Top4.Y)


                    if Team_Check then
                        if newplr.TeamColor == player.TeamColor then
                            for u, x in pairs(lines) do
                                x.Color = green
                            end
                        else 
                            for u, x in pairs(lines) do
                                x.Color = red
                            end
                        end
                    end


                    if Autothickness then
                        local distance = (player.Character.HumanoidRootPart.Position - newplr.Character.HumanoidRootPart.Position).magnitude
                        local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(lines) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(lines) do
                            x.Thickness = Box_Thickness
                        end
                    end

                    for u, x in pairs(lines) do
                        if x ~= lines.Tracer then
                            x.Visible = true
                        end
                    end
                    if Tracers then
                        lines.Tracer.Visible = true
                    end
                else 
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(lines) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(newplr.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end)

local Toggle = Tab:CreateToggle({
   Name = "ESP Box",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        on = bool
   end,
})

local nameState = false
local localPlayer = game.Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera
local camera = game:GetService("Workspace").CurrentCamera
local HeadOff = Vector3.new(0,1,0) --the 1 here is the height of the name esp
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

function esp_function(v)
    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true
    text.Font = 10
    text.Color = Color3.new(0,255,0)
    text.Size = 20
    game:GetService("RunService").RenderStepped:Connect(function()
        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= localPlayer and v.Character.Humanoid.Health > 0 then

            local Head = v.Character.Head
            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
            if onScreen then
                text.Position = Vector2.new(HeadPosition.X, HeadPosition.Y)
                text.Text = v.DisplayName
                text.Visible = nameState
            else
                text.Visible = false
            end
        else
            text.Visible = false
        end

    end)
end

for i, v in pairs(game.Players:GetChildren()) do
    coroutine.wrap(esp_function)(v)
end

game.Players.PlayerAdded:Connect(function()
    coroutine.wrap(esp_function)(v)
end)

local Toggle = Tab:CreateToggle({
   Name = "ESP Name",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
   nameState = bool
   end,
})

local Tab = Window:CreateTab("Players", 4483362458) -- Title, Image
local Section = Tab:CreateSection("WalkSpeed")

local speedval = 80
local realjump = false
local autoj = false
local jumpheight = 70

local Toggle = Tab:CreateToggle({
   Name = "Auto WS Bypass",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(cb)
	if cb then
		doLoop("speed",function()
			for i,v in pairs(lplr.Character:GetChildren()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
			local actspeedval = speedval
			if lplr.Character.Humanoid.FloorMaterial ~= Air then
				actspeedval = speedval + 25
			end
			local newvelo = lplr.Character.Humanoid.MoveDirection * actspeedval
			lplr.Character.HumanoidRootPart.Velocity = Vector3.new(newvelo.X, lplr.Character.HumanoidRootPart.Velocity.Y, newvelo.Z)
			if autoj and (lplr.Character.Humanoid.FloorMaterial ~= Enum.Material.Air) and lplr.Character.Humanoid.MoveDirection ~= Vector3.zero then
				if realjump then lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) else lplr.Character.HumanoidRootPart.Velocity = Vector3.new(lplr.Character.HumanoidRootPart.Velocity.X, jumpheight, lplr.Character.HumanoidRootPart.Velocity.Z) end
			end
		end)
	else
		endLoop("speed")
	end
end,
})

shared.removeBlue()

    shared.autofarmTab()
    
    shared.createBed()
    
    shared.chatPlr()
