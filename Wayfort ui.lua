print("Made by LaptopFreak8888#8888, DM for any bug reports.")

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local PlayerName = game.Players.LocalPlayer.Name

print("The menu will open when you spawn your vehicle.")

local PlayerCar = game:GetService("Workspace").Vehicles:WaitForChild(PlayerName .. "'s Car")
CarTune = require(PlayerCar.Tune)
if PlayerCar then
    CarTune.TransmissionSpeeds = {0, 0, 0}
    CarTune.TransmissionTorque = {0, 0, 0}
end

local w = library:CreateWindow("Wayfort Speed")

local b = w:CreateFolder("Speed/Torque")

local c = w:CreateFolder("Handling")

local d = w:CreateFolder("Misc.")

print("Menu opened")

print("You can use DestroyGui in misc and then re-execute the script when you spawn a new vehicle. (Gasoline cars will bug out if you do.)")

b:Slider("Max Reverse Speed",{
    min = -1; -- min value of the slider
    max = -1000; -- max value of the slider
    precise = false; -- max 2 decimals
},function(MaxReverseSpeed)
    CarTune.TransmissionSpeeds[1] = MaxReverseSpeed
    CarTune.TransmissionSpeeds[2] = 0
end)

b:Slider("Max Drive Speed",{
    min = 1; -- min value of the slider
    max = 1000; -- max value of the slider
    precise = false; -- max 2 decimals
},function(MaxDriveSpeed)
    CarTune.TransmissionSpeeds[3] = MaxDriveSpeed
    CarTune.TransmissionSpeeds[2] = 0
end)

b:Slider("Applied Drive Torque",{
    min = 1; -- min value of the slider
    max = 100000; -- max value of the slider
    precise = false; -- max 2 decimals
},function(AppliedDriveTorque)
    CarTune.TransmissionTorque[3] = AppliedDriveTorque
    CarTune.TransmissionTorque[2] = 0
end)

b:Slider("Applied Reverse Torque",{
    min = 1; -- min value of the slider
    max = 100000; -- max value of the slider
    precise = false; -- max 2 decimals
},function(AppliedReverseTorque)
    CarTune.TransmissionTorque[1] = AppliedReverseTorque
    CarTune.TransmissionTorque[2] = 0
end)

c:Slider("Tire Friction",{
    min = 1; -- min value of the slider
    max = 5; -- max value of the slider
    precise = false; -- max 2 decimals
},function(TireFriction)
    CarTune.FrontWheelsTraction = TireFriction
    CarTune.RearWheelsTraction = TireFriction
end)

c:Slider("Brake Torque",{
    min = 1; -- min value of the slider
    max = 50000; -- max value of the slider
    precise = false; -- max 2 decimals
},function(BrakeForce)
    CarTune.BrakeTorque = BrakeForce
end)

c:Slider("Turning Radius",{
    min = 1; -- min value of the slider
    max = 90; -- max value of the slider
    precise = false; -- max 2 decimals
},function(TurningRadius)
    CarTune.TurnRadius = TurningRadius
end)

c:Slider("Turning Speed",{
    min = 1; -- min value of the slider
    max = 10; -- max value of the slider
    precise = false; -- max 2 decimals
},function(TurningSpeed)
    CarTune.TurnSpeed = TurningSpeed
end)

d:Dropdown("Drivetrain",{"AWD","FWD","RWD"},true,function(DrivingTrain) --true/false, replaces the current title "Dropdown" with the option that t
    CarTune.DriveTrain = DrivingTrain
end)

d:DestroyGui()

--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
]]--

while true do 
    local PlayerCar = game:GetService("Workspace").Vehicles:FindFirstChild(PlayerName .. "'s Car")
    CarTune = require(PlayerCar.Tune)
    wait()
end
