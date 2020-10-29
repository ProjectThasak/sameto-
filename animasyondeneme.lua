-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local altframe = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local animasyon = Instance.new("TextLabel")
local home = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local page1 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.254920334, 0, 0.183266968, 0)
Frame.Size = UDim2.new(0, 523, 0, 318)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 523, 0, 45)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Asteny Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

altframe.Name = "altframe"
altframe.Parent = Frame
altframe.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
altframe.BorderColor3 = Color3.fromRGB(255, 255, 255)
altframe.BorderSizePixel = 0
altframe.Position = UDim2.new(0, 0, 0.141509384, 0)
altframe.Size = UDim2.new(0, 117, 0, 273)

TextButton.Parent = altframe
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0341880359, 0, 0.0769230798, 0)
TextButton.Size = UDim2.new(0, 109, 0, 30)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Page 1"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 15.000

animasyon.Name = "animasyon"
animasyon.Parent = Frame
animasyon.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
animasyon.BorderSizePixel = 0
animasyon.Position = UDim2.new(0, 0, 0.141509384, 0)
animasyon.Size = UDim2.new(0, 117, 0, 273)
animasyon.Font = Enum.Font.SourceSans
animasyon.Text = ""
animasyon.TextColor3 = Color3.fromRGB(255, 255, 255)
animasyon.TextSize = 24.000

home.Name = "home"
home.Parent = Frame
home.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
home.BorderSizePixel = 0
home.Position = UDim2.new(0.223709375, 0, 0.141509429, 0)
home.Size = UDim2.new(0, 406, 0, 273)

TextLabel_2.Parent = home
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.110837437, 0, 0.0402930416, 0)
TextLabel_2.Size = UDim2.new(0, 295, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "thx for using gui"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000

page1.Name = "page1"
page1.Parent = Frame
page1.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
page1.BorderSizePixel = 0
page1.Position = UDim2.new(0.223709375, 0, 0.141509429, 0)
page1.Size = UDim2.new(0, 406, 0, 273)

TextButton_2.Parent = page1
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.253694594, 0, 0.406593412, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "walkspeed"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

-- Scripts:

local function LMOVNRG_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local Frame = script.Parent.Frame
	local alt = script.Parent.Frame.altframe
	local page1button = script.Parent.Frame.altframe.TextButton
	local animasyon = script.Parent.Frame.animasyon
	local page1 = script.Parent.Frame.page1
	local home = script.Parent.Frame.home
	
	local UIS = game:GetService("UserInputService")
	
	animasyon.Visible = false
	page1.Visible = false
	
	UIS.InputBegan:connect(function(key)
	    if key.KeyCode == Enum.KeyCode.Insert then
	        if Frame.Visible == true then
	            Frame.Visible = false
	            else
	                Frame.Visible = true
	        end
	    end
	end)
	
	page1button.MouseButton1Down:Connect(function()
		if page1.Visible == false then
			page1button.Visible = false
			alt.Visible = false
			animasyon.Visible = true
			home.Visible = false
			animasyon:TweenSize(UDim2.new(0, 523,0, 273))
			wait(1)
			animasyon.Text = "Please wait... Page 1 Loading!"
			wait(1)
			animasyon.Text = ""
			wait(1)
			animasyon.Text = "Page 1 Loaded!"
			wait(1)
			animasyon.Text = ""
			animasyon:TweenSize(UDim2.new(0, 117,0, 273))
			wait(1)
			alt.Visible = true
			page1button.Visible = true
			page1.Visible = true
			animasyon.Visible = false
		else
			page1button.Visible = false
			alt.Visible = false
			animasyon.Visible = true
			page1.Visible = false
			animasyon:TweenSize(UDim2.new(0, 523,0, 273))
			wait(1)
			animasyon.Text = "Please wait... Home Page Loading!"
			wait(1)
			animasyon.Text = ""
			wait(1)
			animasyon.Text = "Home Page Loaded!"
			wait(1)
			animasyon.Text = ""
			animasyon:TweenSize(UDim2.new(0, 117,0, 273))
			wait(1)
			alt.Visible = true
			page1button.Visible = true
			animasyon.Visible = false
			home.Visible = true
		end
	end)
end
coroutine.wrap(LMOVNRG_fake_script)()
