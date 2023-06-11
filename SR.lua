local decal_codes = {
    ["http://www.roblox.com/asset/?id=9648769161"] = "4",

    ["http://www.roblox.com/asset/?id=9648765536"] = "2",

    ["http://www.roblox.com/asset/?id=9648762863"] = "3",

    ["http://www.roblox.com/asset/?id=9648759883"] = "9",

    ["http://www.roblox.com/asset/?id=9648755440"] = "8",

    ["http://www.roblox.com/asset/?id=9648752438"] = "2",

    ["http://www.roblox.com/asset/?id=9648749145"] = "8",

    ["http://www.roblox.com/asset/?id=9648745618"] = "3",

    ["http://www.roblox.com/asset/?id=9648742013"] = "7",

    ["http://www.roblox.com/asset/?id=9648738553"] = "8",

    ["http://www.roblox.com/asset/?id=9648734698"] = "2",

    ["http://www.roblox.com/asset/?id=9648730082"] = "6",

    ["http://www.roblox.com/asset/?id=9648723237"] = "3",

    ["http://www.roblox.com/asset/?id=9648718450"] = "6",

    ["http://www.roblox.com/asset/?id=9648715920"] = "6",

    ["http://www.roblox.com/asset/?id=9648712563"] = "2"
}


local Items = {

  "Potion of Strength", 
  "Bull's essence", 
  "Speed Potion", 
  "Boba", 
  "Frog Potion", 
  "Strength Brew", 
  "Frog Brew", 
  "Speed Brew"

}

	local Time = tick()

	local userinputservice = game:GetService("UserInputService")

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
 local namecall
    namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local Args = {...}
        if getnamecallmethod() == "FireServer" and tostring(self) == "WS" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS2" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
            return
        end
        return namecall(self, ...)
    end)
    
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    
    local Window = Rayfield:CreateWindow({
   Name = "A00PKIDD Hub | by a00pkidd",
   LoadingTitle = "A00PKIDD Hub",
   LoadingSubtitle = "by a00pkidd",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   }
})

local Tab = Window:CreateTab("Combat", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Slaps")

local Toggle = Tab:CreateToggle({
   Name = "Slap Aura",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
				getgenv().Aura = bool
				while getgenv().Aura == true do
					task.wait()
					for _, L_8 in pairs(game.Players:GetPlayers()) do
						if L_8 ~= game.Players.LocalPlayer then
							if L_8.Character:FindFirstChild("HumanoidRootPart") ~= nil and L_8.Character:FindFirstChild("Humanoid") and not L_8.Character:FindFirstChild("Dead")  and not game.Players.LocalPlayer.Character:FindFirstChild("Dead")  then
								local magnitude =
								(L_8.Character.HumanoidRootPart.Position -
								game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if 25 >= magnitude  then
									game:GetService("ReplicatedStorage").Events.Slap:FireServer(L_8.Character.Torso)
								end
							end
						end
					end
				end
			end,
})

local Tab = Window:CreateTab("Misc", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Badges")

local Button = Tab:CreateButton({
   Name = "Get Chain",
   Callback = function()


for i,v in ipairs(game:GetService("Workspace").Map:WaitForChild("CodeBrick"):WaitForChild("SurfaceGui"):GetDescendants()) do
    if v.Name == 'IMGTemplate' then
        local decal_url = tostring(v.Image)
        local code = decal_codes[decal_url]

        if 0 < #game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Display.SurfaceGui.TextLabel.Text then
            fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons.Reset.ClickDetector)
        end

        task.wait(.2)

        fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons[code].ClickDetector)
    end
end

task.wait(.2)

fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons.Enter.ClickDetector)

    end,
})

local Section = Tab:CreateSection("Items")

local Button = Tab:CreateButton({
   Name = "Get All Items",
   Callback = function()
        local Lplr = game.Players.LocalPlayer
        if Lplr.Character.inMatch.Value and workspace:FindFirstChildWhichIsA("Tool") then
            for _, Items in ipairs(game.Workspace:GetDescendants()) do
                if Items:IsA("TouchTransmitter") and Items.Parent.Name == "Handle" then
                    Lplr.Character.Humanoid:EquipTool(Items.Parent.Parent)
                end
            end
            Lplr.Character.Humanoid:UnequipTools()
            
            else
                
                print("No Items")
        end
    end,
})

local Button = Tab:CreateButton({
   Name = "Use All Permanent Items",
   Callback = function()
            for _, L_3 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if L_3:IsA("Tool") and table.find(Items, L_3.Name) then
                    L_3.Parent = game.Players.LocalPlayer.Character
                end
            end
            wait(.5)
            for _, L_4 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if L_4:IsA("Tool") then
                    L_4:Activate()
                end
            end
    end,
})

local Button = Tab:CreateButton({
   Name = "Bomb Bus",
   Callback = function()
    
        local lp = game.Players.LocalPlayer
			for _, L_5 in ipairs(game.Workspace:GetDescendants()) do
				if L_5:IsA("TouchTransmitter") and L_5.Parent.Name == "Handle" and L_5.Parent.Parent.Name == "Bomb" and workspace:FindFirstChild("BusModel") then

    
    
					lp.Character.Humanoid:EquipTool(L_5.Parent.Parent)
				end
			end
			wait(.1)
			for _, L_6 in pairs(lp.Backpack:GetChildren()) do
				if L_6:IsA("Tool") and L_6.Name == "Bomb" then
					L_6.Parent = lp.Character
				end
			end
			wait(.25)
			for _, L_7 in pairs(lp.Character:GetChildren()) do
				if L_7:IsA("Tool") and L_7.Name == "Bomb" then
					L_7:Activate()
				end
			end
			
    end,
})

local Tab = Window:CreateTab("Anti", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Anti")

local Toggle = Tab:CreateToggle({
   Name = "Anti Acid",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
		
        if bool == true then
            
        game.Workspace:FindFirstChild("antiAcid").CanCollide = true

        else
            
        game.Workspace:FindFirstChild("antiAcid").CanCollide = false
            
        end

	end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Lava",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
		
        if bool == true then
            
        game.Workspace:FindFirstChild("antiLava").CanCollide = true

        else
            
        game.Workspace:FindFirstChild("antiLava").CanCollide = false
            
        end

	end,
})

local Tab = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Toggle = Tab:CreateToggle({
   Name = "Remove Zone Blur",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Blur)
    
    if Blur == true then
        
	game:GetService("ReplicatedStorage").ZoneEffects.ZoneBlur.Enabled = false

	game:GetService("ReplicatedStorage").ZoneEffects.ZoneColorCorrection.Enabled = false

    else

    game:GetService("ReplicatedStorage").ZoneEffects.ZoneBlur.Enabled = true

    game:GetService("ReplicatedStorage").ZoneEffects.ZoneColorCorrection.Enabled = true
    
    end
    
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
    Tracer.Color = Color3.new(50,255,135)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

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
    Tracer.Color = Color3.new(50,255,135)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

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

local Tab = Window:CreateTab("Players", 4483362458) -- Title, Image
local Section = Tab:CreateSection("WalkSpeed")

local speedval = 65
local realjump = false
local autoj = false
local jumpheight = 50

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

local antiLava = Instance.new("Part", workspace)
    antiLava.Name = "antiLava"
	antiLava.Position = Vector3.new(-238, -43, 401)
	antiLava.Size = Vector3.new(150,10,150)
	antiLava.Anchored = true
	antiLava.Transparency = 3
	antiLava.CanCollide = false
	
	local antiAcid = Instance.new("Part", workspace)
	antiAcid.Name = "antiAcid"
	antiAcid.Size = Vector3.new(154, 26, 132)
	antiAcid.Position = Vector3.new(-60, -5, -731)
	antiAcid.Transparency = 3
	antiAcid.CanCollide = false
	antiAcid.Anchored = true
	
	shared.removeBlue()