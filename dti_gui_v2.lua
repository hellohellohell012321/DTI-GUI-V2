-- formatting: 3 line breaks between buttons, 5 between tabs
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shidemuri/scripts/main/ui_lib.lua"))() -- defining the gui library

local Pendulum = Library:New("dress to impress fucker")





local Exploit1 = Pendulum:NewTab("exploits")



Exploit1:NewButton("rainbow skin", "makes your skin flash rainbow", function()

-- original script is from https://pastebin.com/bKmeynqv

getgenv().lmao = not getgenv().lmao
task.spawn(function()
    while true do
        task.wait()
        if not getgenv().lmao then
            break
        end
        local args = {
            [1] = "Change Skintone",
            [2] = Color3.new(math.random(), math.random(), math.random())
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
end)

end)



Exploit1:NewButton("obstruct camera/runway", "gives you a ton of hair to block others on the runway", function()
loadstring(game:HttpGet("https://pastefy.app/KjfFN9Wh/raw",true))() -- hair

local x = "-229"
local y = "16"
local z = "-409"
local P = game.Players.LocalPlayer.Character.HumanoidRootPart
P.CFrame = CFrame.new(x, y, z)

end)



Exploit1:NewButton("autofarm money", "all money that spawns will be remotely collected", function()

while wait() do
    
local MoneyFolder = workspace.CollectibleMoney.Money
if MoneyFolder then
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart then
        for _, moneyPart in ipairs(MoneyFolder:GetChildren()) do
            if moneyPart:IsA("BasePart") then
                local doge = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
local cheems = doge:FindFirstChildWhichIsA("BasePart")

firetouchinterest(moneyPart,cheems,0)
firetouchinterest(moneyPart,cheems,1) 
            end
        end
    else
        warn("Player's HumanoidRootPart not found!")
    end
else
    warn("Money folder not found in workspace!")
end

end

end)





local Exploit2 = Pendulum:NewTab("better exploits")



Exploit2:NewButton("unlock all items", "click anything to equip, this also destroys vip door and purchase prompts", function()
    
    
    
    
local userInputService = game:GetService("UserInputService")
local camera = workspace.CurrentCamera
local replicatedStorage = game:GetService("ReplicatedStorage")

local function onClick(input, gameProcessedEvent)
    if gameProcessedEvent then
        return
    end

    -- Check for mouse click or touch input
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        local mousePosition = input.Position
        local ray = camera:ScreenPointToRay(mousePosition.X, mousePosition.Y)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist -- Ignore players' characters
        raycastParams.FilterDescendantsInstances = {workspace:FindFirstChildOfClass("Players")}
        raycastParams.IgnoreWater = true

        local raycastResult = workspace:Raycast(ray.Origin, ray.Direction * 1000, raycastParams)

        if raycastResult then
            local hitObject = raycastResult.Instance
            print("Raycast hit: " .. tostring(hitObject))
            if hitObject:IsA("Part") then
                local parentOfClickedObject = hitObject.Parent
                print("Clicked on model: " .. hitObject.Name)
                print("Parent of clicked object: " .. parentOfClickedObject.Name)
                
                local args = {
                    [1] = "Equip",
                    [2] = parentOfClickedObject.Name
                }

                local remoteEvent = replicatedStorage:WaitForChild("Dress Up"):WaitForChild("RemoteEvent")
                remoteEvent:FireServer(unpack(args))
            else
                print("Hit object is not a model: " .. hitObject.Name)
            end
        else
            print("Raycast did not hit anything.")
        end
    end
end

userInputService.InputBegan:Connect(onClick)




workspace["VIP Door"].Part:Destroy()
game:GetService("CoreGui").PurchasePrompt:Destroy()
game.Players.LocalPlayer.PlayerGui.Shopping:Destroy()



end)



local copyoutfit = Exploit2:NewTextBar("user/display name (can shorten)", "user/display name (can shorten)", "", function()
    end)
    


Exploit2:NewButton("copy outfit", "copy the outfit of specified username (85% accurate)", function()



loadstring(game:HttpGet("https://pastefy.app/lMNQKGxK/raw",true))() -- clear

wait(0.01)

-- get the player

local Players = game:GetService("Players")

local function findPlayer(input)
    local inputLower = string.lower(input)

    for _, player in ipairs(Players:GetPlayers()) do
        local displayName = player.DisplayName
        local username = player.Name

        -- Check full display name
        if string.lower(displayName) == inputLower then
            return player
        end

        -- Check shortened display name
        for i = 1, #displayName do
            if string.lower(string.sub(displayName, 1, i)) == inputLower then
                return player
            end
        end

        -- Check full username
        if string.lower(username) == inputLower then
            return player
        end

        -- Check shortened username
        for i = 1, #username do
            if string.lower(string.sub(username, 1, i)) == inputLower then
                return player
            end
        end
    end

    return nil
end

-- Example usage
local input = copyoutfit.Text  -- Replace with the input you want to search for
local foundPlayer = findPlayer(input)

if foundPlayer then
    print("Found player: " .. foundPlayer.Name)
else
    print("Player not found")
end




-- copy

local playerName = foundPlayer.Name

-- Get the player and their EquippedAccessories folder
local player = workspace:FindFirstChild(playerName)
if player then
    print("Player found: " .. playerName)
    
    local equippedAccessories = player:FindFirstChild("EquippedAccessories")
    if equippedAccessories then
        print("EquippedAccessories folder found for player: " .. playerName)
        
        for _, item in ipairs(equippedAccessories:GetChildren()) do
            -- Print the item name
            print("Item found: " .. item.Name)

            -- Prepare the arguments for the first RemoteEvent (Equip)
            local equipArgs = {
                [1] = "Equip",
                [2] = item.Name
            }

            -- Fire the first RemoteEvent (Equip)
            game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(equipArgs))
            print("RemoteEvent (Equip) fired with args: ")
            print("local args = {")
            print("    [1] = \"" .. equipArgs[1] .. "\",")
            print("    [2] = \"" .. equipArgs[2] .. "\"")
            print("}")
            
            -- Find the first folder within the item
            local firstFolder = nil
            for _, child in ipairs(item:GetChildren()) do
                if child:IsA("Folder") then
                    firstFolder = child
                    break
                end
            end
            
            if firstFolder then
                print("Folder found for item: " .. item.Name .. ", Folder name: " .. firstFolder.Name)
                -- Iterate through parts 1 to 5 in the folder
                for partNumber = 1, 5 do
                    local part = firstFolder:FindFirstChild(tostring(partNumber))
                    if part then
                        -- Use the part's Color directly
                        local color = part.Color

                        -- Prepare the arguments for the second RemoteEvent (Color Accessory)
                        local colorArgs = {
                            [1] = "Color Accessory",
                            [2] = item.Name,
                            [3] = tostring(partNumber),
                            [4] = Color3.new(color.R, color.G, color.B)
                        }

                        -- Print the exact RemoteEvent code for debugging
                        print("RemoteEvent (Color Accessory) fired with args: ")
                        print("local args = {")
                        print("    [1] = \"" .. colorArgs[1] .. "\",")
                        print("    [2] = \"" .. colorArgs[2] .. "\",")
                        print("    [3] = \"" .. colorArgs[3] .. "\",")
                        print("    [4] = Color3.new(" .. colorArgs[4].R .. ", " .. colorArgs[4].G .. ", " .. colorArgs[4].B .. ")")
                        print("}")

                        -- Fire the second RemoteEvent (Color Accessory)
                        game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(colorArgs))
                        print("RemoteEvent (Color Accessory) fired for item: " .. item.Name .. ", part: " .. partNumber)
                    else
                        print("No part found with name: " .. tostring(partNumber) .. " in folder of item: " .. item.Name)
                    end
                end
            else
                warn("No folder found for item: " .. item.Name)
            end
        end
    else
        warn("EquippedAccessories folder not found for player: " .. playerName)
    end
    
    -- Get the player's head part and change the skintone
    local head = player:FindFirstChild("Head")
    if head then
        local headColor = head.Color

        local skinToneArgs = {
            [1] = "Change Skintone",
            [2] = Color3.new(headColor.R, headColor.G, headColor.B)
        }

        -- Print the exact RemoteEvent code for debugging
        print("RemoteEvent (Change Skintone) fired with args: ")
        print("local args = {")
        print("    [1] = \"" .. skinToneArgs[1] .. "\",")
        print("    [2] = Color3.new(" .. skinToneArgs[2].R .. ", " .. skinToneArgs[2].G .. ", " .. skinToneArgs[2].B .. ")")
        print("}")

        -- Fire the RemoteEvent (Change Skintone)
        game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(skinToneArgs))
        print("RemoteEvent (Change Skintone) fired for player: " .. playerName .. ", Head color: " .. tostring(headColor))
        
        -- Get the player's face decal and change its texture
        local face = head:FindFirstChild("face")
        if face and face:IsA("Decal") then
            local faceTexture = face.Texture

            local faceArgs = {
                [1] = "Classic Makeup",
                [2] = faceTexture
            }

            -- Print the exact RemoteEvent code for debugging
            print("RemoteEvent (Classic Makeup) fired with args: ")
            print("local args = {")
            print("    [1] = \"" .. faceArgs[1] .. "\",")
            print("    [2] = \"" .. faceArgs[2] .. "\"")
            print("}")

            -- Fire the RemoteEvent (Classic Makeup)
            game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(faceArgs))
            print("RemoteEvent (Classic Makeup) fired for player: " .. playerName .. ", Face texture: " .. faceTexture)
        else
            warn("Face decal not found for player: " .. playerName)
        end
    else
        warn("Head part not found for player: " .. playerName)
    end

    -- Get the Nails accessory and find part '1'
    local nails = player:FindFirstChild("Nails")
    if nails then
        local part1 = nails:FindFirstChild("1")
        if part1 then
            local part1Color = part1.Color

            local nailsColorArgs = {
                [1] = "Color Accessory",
                [2] = "Nails",
                [3] = "1",
                [4] = Color3.new(part1Color.R, part1Color.G, part1Color.B)
            }

            -- Print the exact RemoteEvent code for debugging
            print("RemoteEvent (Color Accessory for Nails) fired with args: ")
            print("local args = {")
            print("    [1] = \"" .. nailsColorArgs[1] .. "\",")
            print("    [2] = \"" .. nailsColorArgs[2] .. "\",")
            print("    [3] = \"" .. nailsColorArgs[3] .. "\",")
            print("    [4] = Color3.new(" .. nailsColorArgs[4].R .. ", " .. nailsColorArgs[4].G .. ", " .. nailsColorArgs[4].B .. ")")
            print("}")

            -- Fire the RemoteEvent (Color Accessory for Nails)
            game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(nailsColorArgs))
            print("RemoteEvent (Color Accessory for Nails) fired for Nails part '1', Color: " .. tostring(part1Color))
        else
            warn("Part '1' not found in Nails accessory for player: " .. playerName)
        end
    else
        warn("Nails accessory not found for player: " .. playerName)
    end
else
    warn("Player not found: " .. playerName)
end



end)



local face = Exploit2:NewTextBar("asset id for your face", "asset id for your face", "", function()
    end)
    


Exploit2:NewButton("shove it on your face", "places the asset id on your face", function()
    
    
local assetId = face.Text

local args = {
    [1] = "Classic Makeup",
    [2] = "http://www.roblox.com/asset/?id=" .. assetId
}

game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(args))


end)



Exploit2:NewButton("shove it into THEIR faces", "positions you so your face decal covers the runway cam", function()

-- create platform

local partName = "Meshes/heyhye_Cube.002"
local platformSize = Vector3.new(200, 1, 200)
local platformOffset = 0.45 -- negative y offset

local function createInvisiblePlatform()
    local maps = workspace:FindFirstChild("! Maps")
    local runway = maps:FindFirstChild("! Runway")
    if not runway then return end
    
    for _, model in ipairs(runway:GetChildren()) do
        if model:IsA("Model") then
            local targetPart = model:FindFirstChild(partName)
            if targetPart then
                local platform = Instance.new("Part")
                platform.Size = platformSize
                platform.Position = targetPart.Position - Vector3.new(0, targetPart.Size.Y / 2 + platformSize.Y / 2 + platformOffset, 0)
                platform.Anchored = true
                platform.CanCollide = true
                platform.BrickColor = BrickColor.new("White")
                platform.Material = Enum.Material.SmoothPlastic
                platform.Transparency = 1
                platform.Parent = workspace
                return
            end
        end
    end
end

createInvisiblePlatform()

-- define values

local Players = game:GetService("Players")
local player = Players.LocalPlayer

wait(0.2)

-- teleport

local x = "-229.4" -- the less, the closer to cam
local y = "16"
local z = "-408.6" -- the less, the more to the right
local P = game.Players.LocalPlayer.Character.HumanoidRootPart
P.CFrame = CFrame.new(x, y, z)

-- face cam

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local camera = workspace.CurrentCamera

local function faceCamera()

    local cameraPosition = camera.CFrame.Position
    local characterPosition = humanoidRootPart.Position
    
    local newCFrame = CFrame.lookAt(characterPosition, cameraPosition)
    
    humanoidRootPart.CFrame = newCFrame
end


faceCamera()

-- freeze

local function freezePlayer()
    local character = player.Character
    if character then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") and not part.Anchored then
                part.Anchored = true
            end
        end
    end
end

freezePlayer()

wait(0.5)

-- unfreeze

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local floatName = "FloatName" -- Replace this with the actual name of the part that should remain anchored

local function unfreezePlayer()
    local character = player.Character
    if character then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.Anchored and part.Name ~= floatName then
                part.Anchored = false
            end
        end
    end
end 

unfreezePlayer()

wait(0.2)

end)





local Universals = Pendulum:NewTab("universals")



Universals:NewButton("inf yield", "yep", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
end)





local face = Pendulum:NewTab("face presets")



local function createButton(face, name, description, uwu)
    face:NewButton(name, description, function()
        local args = {
            [1] = "Classic Makeup",
            [2] = "http://www.roblox.com/asset/?id=" .. uwu
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end)
end
createButton(face, "scary ass face", "AHHH", "16144684694")
createButton(face, "scary ass face 2", "jumpscare", "668614178")
createButton(face, "scary ass face 3", "lmao", "18762395037")
createButton(face, "scary ahh face 4", "heart attack", "18761871297")
createButton(face, "goofy face", "for glowxfy", "18762082290")
createButton(face, "glue face", "lmao", "18762600945")
createButton(face, "man face", "for glowxfy", "13468798521") 
createButton(face, "c00lkidd face", "team c00lkid join today !!1", "10560525674")
createButton(face, "meme face", "bruh", "6074793689")

createButton(face, "rickroll", "never gonna give you up", "6403436054")
createButton(face, "camping monster", "yk it", "1243374078")
createButton(face, "jeff the killer", "jumpscare", "668614178")
createButton(face, "honkai star rail person, forgot her name but hot asf", "SMASH SMASH SMASH", "16738948400")
createButton(face, "john pork is calling", "pick up. now.", "13013958424")
createButton(face, "bald guy stare", "we dont know the name okay", "15883784987")
createButton(face, "1000 yard stare", "homework is due tomorrow", "16000183847")
createButton(face, "minor laugh", "hehe", "13396142297")
createButton(face, "goku drool", "slurp", "15530072543")
createButton(face, "freakbob call", "freakybob!!", "18137084951")
createButton(face, "trollface", "trololololololol", "7120897383")
createButton(face, "stare cat", ":3", "7488932274")
createButton(face, "drake", "protect your little sister", "2156741281")
createButton(face, "silly cat", "silly", "16583833020")













local Tp = Pendulum:NewTab("teleports")



Tp:NewButton("teleport to lobby", "the place with the obby and shit", function()
    
local x = "-493"
local y = "15"
local z = "-559"
local P = game.Players.LocalPlayer.Character.HumanoidRootPart
P.CFrame = CFrame.new(x, y, z)

end)



Tp:NewButton("teleport to runway", "same position as obstructer without the hair", function()
    
local x = "-229"
local y = "16"
local z = "-408.8"
local P = game.Players.LocalPlayer.Character.HumanoidRootPart
P.CFrame = CFrame.new(x, y, z)

end)



Tp:NewButton("teleport to dressing room", "teleports you to the dressing room", function()
    
local x = "-262"
local y = "2"
local z = "70"
local P = game.Players.LocalPlayer.Character.HumanoidRootPart
P.CFrame = CFrame.new(x, y, z)

end)




local Outfit = Pendulum:NewTab("outfits")
    
    

Outfit:NewButton("unequip all", "unequips all accessories", function()


local player = game.Players.LocalPlayer
local equippedAccessories = workspace:WaitForChild(player.Name):WaitForChild("EquippedAccessories")

local function unequipAccessory(accessoryName)
    local args = {
        [1] = "Unequip",
        [2] = accessoryName
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end

for _, item in ipairs(equippedAccessories:GetChildren()) do
    unequipAccessory(item.Name)
end


end)



Outfit:NewButton("naked with dildo", "makes you naked and gives you a dildo", function()
loadstring(game:HttpGet("https://pastefy.app/lMNQKGxK/raw",true))() -- clear

wait(0.01)

loadstring(game:HttpGet("https://pastefy.app/sgdYt8qD/raw",true))() -- wear
end)



Outfit:NewButton("hatsune miku", "smash", function()
loadstring(game:HttpGet("https://pastefy.app/lMNQKGxK/raw",true))() -- clear

wait(0.01)

loadstring(game:HttpGet("https://pastefy.app/gYYL5gDx/raw",true))() -- wear
end)

