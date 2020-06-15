-- Don't make fun of code I'm new (:
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "r" then
        game.Players.LocalPlayer.Character:Destroy()
        end
end)
local amount = fovamount

game:GetService'Workspace'.Camera.FieldOfView = 100
rpm = 1
game:GetService('RunService').RenderStepped:connect(function()
    for i=1,math.ceil((rpm/60)/60) do
        game.Lighting.TimeOfDay = "14:00:00"
    end
end)
function deseat(instance) 
    for i,v in pairs(instance:GetChildren()) do
    if v:IsA("Seat") then
        v.Parent = game.Lighting
    end
        deseat(v)
    end
end

deseat(game.Workspace) 
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)

if (string.lower(msg) == "nodoors") then
	local doors = game.Workspace:GetChildren()
for i,v in pairs (doors)do 
	if v.Name == "Door" then
		v:Destroy()
		
	 
	end	
	end
end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "FFA Script";
		    Text = "script made by IcedTearz, Ice#1324";
			})
local decalsyeeted = true 
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "[UPADTE!]";
		    Text = "First script update, added an FPS booster (Looks like low gfx but better) and when you click R it voids your character. n for anti fe 5/30/2020";
			})
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "n" then
        game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
        end
end)
--thx to IcedTearz he is epic cutie
