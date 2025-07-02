local key = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local KeyInputBox = Instance.new("TextLabel")
local SubmitButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Getkeybutton = Instance.new("TextButton")

key.Name = "key"
key.Parent = game:GetService("CoreGui")
key.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = key
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 350, 0, 198)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(201, 196, 188)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 350, 0, 51)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Important Notice"
Title.TextColor3 = Color3.fromRGB(37, 37, 37)
Title.TextSize = 25.000
Title.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Title

KeyInputBox.Name = "KeyInputBox"
KeyInputBox.Parent = Frame
KeyInputBox.BackgroundColor3 = Color3.fromRGB(108, 105, 101)
KeyInputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyInputBox.BorderSizePixel = 0
KeyInputBox.Position = UDim2.new(0.168570027, 0, 0.303492397, 0)
KeyInputBox.Size = UDim2.new(0, 300, 0, 80)
KeyInputBox.Font = Enum.Font.SourceSansBold
KeyInputBox.Text = "We know there are missing features in the script. Do not ask for us to fix them, we are already on it. Don't be a nuisance."
KeyInputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInputBox.TextScaled = true
KeyInputBox.TextSize = 14.000
KeyInputBox.TextWrapped = true

SubmitButton.Name = "SubmitButton"
SubmitButton.Parent = Frame
SubmitButton.BackgroundColor3 = Color3.fromRGB(201, 196, 188)
SubmitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubmitButton.BorderSizePixel = 0
SubmitButton.Position = UDim2.new(0.328570038, 0, 0.512164176, 0)
SubmitButton.Size = UDim2.new(0, 120, 0, 25)
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.Text = "understood."
SubmitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SubmitButton.TextScaled = true
SubmitButton.TextSize = 14.000
SubmitButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Frame

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

Title.LayoutOrder = 1
KeyInputBox.LayoutOrder = 2
SubmitButton.LayoutOrder = 3

SubmitButton.MouseButton1Click:Connect(function()
    key:Destroy()
end)
