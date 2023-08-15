 --Adding a GUI soon prolly, and more features




local UserInputService = game:GetService("UserInputService")
local user = game:GetService('Players').LocalPlayer
local model = game.Workspace:FindFirstChild(user.Name..'Aircraft')

local HotKeyUp = 'X'
local HotKeyUp = 'Z'

print(user)
if model ==
--enable
UserInputService.InputBegan:Connect(function(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.HotKeyUp then
	    for _, part in pairs(model:GetChildren()) do
		    for _, child in pairs(part:GetChildren()) do
			    if child.Name == "BlockStd" then
			    	local bodyvel = Instance.new("BodyVelocity")
			    	local zrandom = math.random(-180, 180)
				    local xrandom = math.random(0, 200)/100
				    bodyvel.Velocity = Vector3.new(0, xrandom, 0)
				    bodyvel.Parent = child
                    local angvel = Instance.new('AngularVelocity')
			    end
		    end
	    end
    end
end)

--disable
UserInputService.InputBegan:Connect(function(inputObject)
if inputObject.KeyCode == Enum.KeyCode.HotKeyUp then
	for _, part in pairs(model:GetChildren()) do
		for _, child in pairs(part:GetChildren()) do
			if child.Name == "BlockStd" then
				local ad = child:FindFirstChildOfClass("BodyVelocity")
                local ad2 = child:FindFirstChildOfClass("AngularVelocity")
                ad2:Destroy()
				ad:Destroy()
			end
		end
	end
end
end)
