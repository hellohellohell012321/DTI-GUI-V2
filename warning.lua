local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 0, 0, 0);  -- Start size at 0,0 for pop-out effect
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);  -- Center the frame
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);  -- Center on screen
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

game:GetService("TweenService"):Create(G2L["2"], TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 363, 0, 162)}):Play()

G2L["3"] = Instance.new("TextLabel", G2L["2"]);
G2L["3"]["TextWrapped"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextScaled"] = true;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["TextSize"] = 14;
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Size"] = UDim2.new(0, 363, 0, 61);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[make sure you're using a supported executor!]];

G2L["4"] = Instance.new("UICorner", G2L["3"]);

G2L["5"] = Instance.new("TextLabel", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["TextSize"] = 14;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Size"] = UDim2.new(0, 274, 0, 50);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[if you didnt receive the gamepass you tried to fake purchase,  try using a different executer. Need help? Join the discord!]];
G2L["5"]["Position"] = UDim2.new(0.12121, 0, 0.37654, 0);

G2L["9"] = Instance.new("TextButton", G2L["2"]);
G2L["9"]["Text"] = "X";
G2L["9"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["9"]["Position"] = UDim2.new(1, -35, 0, 5);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);

G2L["10"] = Instance.new("LocalScript", G2L["9"]);
local function C_10()
    local script = G2L["10"];
    script.Parent.MouseButton1Click:Connect(function()

        G2L["1"]:Destroy()
    end)
end;
task.spawn(C_10);

G2L["6"] = Instance.new("TextButton", G2L["2"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(116, 126, 249);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6"]["Size"] = UDim2.new(0, 188, 0, 27);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[copy link]];
G2L["6"]["Position"] = UDim2.new(0.23967, 0, 0.7284, 0);

G2L["7"] = Instance.new("LocalScript", G2L["6"]);
local function C_7()
local script = G2L["7"];
	script.Parent.MouseButton1Click:Connect(function()
		setclipboard("https://discord.gg/xDZBGhJX4D")
	end)
end;
task.spawn(C_7);

G2L["8"] = Instance.new("UICorner", G2L["2"]);

return G2L["1"], require;
