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

-- Gui to Lua
-- Version: 3.2

-- Instances:

local InsertedObjects = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

--Properties:

InsertedObjects.Name = "InsertedObjects"
InsertedObjects.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TextLabel.Parent = InsertedObjects
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.376687109, 0, 0.0297805648, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "IcedTearz"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 30.000

-- Scripts:

local function JVMYF_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local top = 255
		while true do
		wait()
		for i = 1,top,1 do
		script.Parent.TextColor3 = Color3.new(i/top,0/top,0/top)
		wait()
		end
		for i = 1,top,1 do
		script.Parent.TextColor3 = Color3.new(top/top,i/top,0/top)
		wait()
		end
		for i = 1,top,1 do
		script.Parent.TextColor3 = Color3.new(top/top,top/top,i/top)
		wait()
		end
		for i = top,1,-1 do
		script.Parent.TextColor3 = Color3.new(i/top,top/top,top/top)
		wait()
		end
		for i = top,1,-1 do
		script.Parent.TextColor3 = Color3.new(0/top,i/top,top/top)
		wait()
		end
		for i = top,1,-1 do
		script.Parent.TextColor3 = Color3.new(0/top,0/top,i/top)
		wait()
		end
		end
end
coroutine.wrap(JVMYF_fake_script)()

------------------------- MADE BY IcedTearz
