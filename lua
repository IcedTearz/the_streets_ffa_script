-- Don't make fun of code I'm new (:
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "r" then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
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
game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "Revert";
		    Text = "Reverted Update (barely touch this script lol)";
			})
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "n" then
        game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
        end
end)
--IcedTearz^^^^
