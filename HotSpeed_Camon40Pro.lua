-- LocalScript Roblox | PARA TECNO CAMON 40 PRO ✅ MÁS FLUIDEZ ✅ PERMANENTE
local player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")

local currentSpeed = 16
local speedConn = nil

-- Función con doble protección optimizada
local function setSpeed(speed)
    currentSpeed = speed
    local char = player.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if speedConn then speedConn:Disconnect() speedConn = nil end
    hum.WalkSpeed = currentSpeed
    hum.AutoRotate = true
    hum.UseJumpPower = true
    hum.JumpPower = 55
    -- Protección principal
    speedConn = hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if hum and hum.WalkSpeed ~= currentSpeed then
            hum.WalkSpeed = currentSpeed
        end
    end)
end

-- Al renacer con retardo rápido
player.CharacterAdded:Connect(function()
    task.wait(0.2)
    setSpeed(currentSpeed)
end)

-- Menú igual, mejorado visualmente
local gui = Instance.new("ScreenGui")
gui.Name = "HotSpeed_Camon40Pro"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 250)
frame.Position = UDim2.new(0.5, -130, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(200,0,0)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(1,1,1)
frame.Active = true
frame.Draggable = true -- Se puede arrastrar
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,40)
title.Text = "🔥 Hot Speed CAMON 40 PRO"
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0,30,0,30)
closeBtn.Position = UDim2.new(1,-35,0,5)
closeBtn.Text = "✖"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextScaled = true
closeBtn.BackgroundColor3 = Color3.fromRGB(255,50,50)
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.Parent = frame
-- Solo OCULTA, velocidad sigue activa
closeBtn.MouseButton1Click:Connect(function() gui.Enabled = false end)

local speedBox = Instance.new("TextBox")
speedBox.Size = UDim2.new(0,220,0,35)
speedBox.Position = UDim2.new(0,20,0,50)
speedBox.PlaceholderText = "Velocidad 1‑1000"
speedBox.BackgroundColor3 = Color3.new(1,1,1)
speedBox.TextColor3 = Color3.new(0,0,0)
speedBox.Font = Enum.Font.Gotham
speedBox.ClearTextOnFocus = false
speedBox.Parent = frame

local applyBtn = Instance.new("TextButton")
applyBtn.Size = UDim2.new(0,220,0,35)
applyBtn.Position = UDim2.new(0,20,0,95)
applyBtn.Text = "✅ Aplicar Velocidad"
applyBtn.BackgroundColor3 = Color3.fromRGB(30,200,30)
applyBtn.TextColor3 = Color3.new(1,1,1)
applyBtn.Font = Enum.Font.GothamBold
applyBtn.Parent = frame
applyBtn.MouseButton1Click:Connect(function()
    local v = tonumber(speedBox.Text)
    if v and v>=1 and v<=1000 then setSpeed(v) speedBox.Text="" end
end)

local resetBtn = Instance.new("TextButton")
resetBtn.Size = UDim2.new(0,220,0,30)
resetBtn.Position = UDim2.new(0,20,0,135)
resetBtn.Text = "🔄 Restablecer 16"
resetBtn.BackgroundColor3 = Color3.fromRGB(50,50,220)
resetBtn.TextColor3 = Color3.new(1,1,1)
resetBtn.Font = Enum.Font.GothamBold
resetBtn.Parent = frame
resetBtn.MouseButton1Click:Connect(function() setSpeed(16) end)

local b50 = Instance.new("TextButton")
b50.Size = UDim2.new(0,65,0,30)
b50.Position = UDim2.new(0,20,0,180)
b50.Text = "50"
b50.BackgroundColor3 = Color3.fromRGB(220,180,0)
b50.TextColor3 = Color3.new(1,1,1)
b50.Font = Enum.Font.GothamBold
b50.Parent = frame
b50.MouseButton1Click:Connect(function() setSpeed(50) end)

local b100 = Instance.new("TextButton")
b100.Size = UDim2.new(0,65,0,30)
b100.Position = UDim2.new(0,97,0,180)
b100.Text = "100"
b100.BackgroundColor3 = Color3.fromRGB(220,180,0)
b100.TextColor3 = Color3.new(1,1,1)
b100.Font = Enum.Font.GothamBold
b100.Parent = frame
b100.MouseButton1Click:Connect(function() setSpeed(100) end)

local b250 = Instance.new("TextButton")
b250.Size = UDim2.new(0,65,0,30)
b250.Position = UDim2.new(0,174,0,180)
b250.Text = "250"
b250.BackgroundColor3 = Color3.fromRGB(220,180,0)
b250.TextColor3 = Color3.new(1,1,1)
b250.Font = Enum.Font.GothamBold
b250.Parent = frame
b250.MouseButton1Click:Connect(function() setSpeed(250) end)

local info = Instance.new("TextLabel")
info.Size = UDim2.new(1,-10,0,25)
info.Position = UDim2.new(0,5,0,220)
info.BackgroundTransparency = 1
info.TextColor3 = Color3.new(1,1,1)
info.Font = Enum.Font.GothamSemibold
info.Text = "📱 Tecno Camon 40 Pro | Máxima Estabilidad"
info.Parent = frame

-- Botón para volver a abrir
local showBtn = Instance.new("TextButton")
showBtn.Size = UDim2.new(0,45,0,45)
showBtn.Position = UDim2.new(0,5,0.5,-22)
showBtn.BackgroundColor3 = Color3.new(0,0,0,0.7)
showBtn.Text = "📌"
showBtn.Font = Enum.Font.GothamBold
showBtn.TextScaled = true
showBtn.TextColor3 = Color3.new(1,1,1)
showBtn.Visible = false
showBtn.Parent = gui
showBtn.MouseButton1Click:Connect(function() gui.Enabled = true end)

-- Protección extra estable sin saturar
local backup = nil
backup = RunService.Heartbeat:Connect(function()
    local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if hum and hum.WalkSpeed ~= currentSpeed then
        hum.WalkSpeed = currentSpeed
    end
end)

-- Inicio
task.delay(0.15, function() setSpeed(currentSpeed) end)
