-- skidded shit lmfao
-- omg
-- not worth using this thing
local ResponseTest1
local ResponseTest2
local Clip
local Noclipping
local FoundPlayer
local tempstr
local floatDied
local strtocompare
local arg
local HttpService = game:GetService'HttpService'
local plr = game:GetService'Players'.LocalPlayer
local plrs = game:GetService'Players'
local plrw = plr.Character
local plrh = plrw:FindFirstChild('Humanoid')
local plrhrp = plrw:FindFirstChild('HumanoidRootPart')
local RunService = game:GetService('RunService')
local workspace = game:GetService('Workspace')
local MPos = plr:GetMouse()
local gs = GetService
local notif = loadstring(game:HttpGet('https://raw.githubusercontent.com/fheahdythdr/ui-libs-ui-lib-backups/main/function%20things/notifs.lua'))() 
local SendNotif = notif:Init()
plr.CharacterAdded:Connect(function(nchar)
    plrh = nchar:WaitForChild('HumanoidRootPart')
    plrw = nchar
    plrh = plrw.Humanoid
end)
if game.PlaceId == 6456351776 then
    for i, connection in pairs(getconnections(game.Players.LocalPlayer.Character.Humanoid.Changed)) do
        connection:Disable()
    end
    
    
    plr.CharacterAdded:Connect(function()
    
        task.wait(.5)
    
        if plrhumanoid ~= nil then
            for _, conn in next, getconnections(plrhumanoid.Changed) do
                conn:Disable()
            end
        end
    
    end)
end

local function RefreshConsole(name, initialcolour, startingtext_or_nil)
    rconsoleclear()
    if name then
        rconsolename(name)
    else
        rconsolename(identifyexecutor().." Console")
    end
    if initialcolour then
        rconsoleprint(initialcolour)
    end
    if startingtext_or_nil then
        rconsoleprint(startingtext_or_nil)
    end
    rconsoleprint("@@WHITE@@")
end
-- ja this is useless
local function clearconsole()
    RefreshConsole("||          LMAO          ||", "@@CYAN@@")
end

local function AwaitConsoleInput()
    return rconsoleinput()
end
local function RefreshInput(input)
    input = AwaitConsoleInput()
end
local function NoclipLoop()
    if Clip == false    then
        for _, child in pairs(plrw:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end
local function FindName(name)
    for _, v in next, game.Players:GetPlayers() do
        local subbedname = string.sub(v.Name:lower(), 1, string.len(name))
        local subbeddisplayname = string.sub(v.DisplayName:lower(), 1, string.len(name))
        
        if (subbedname == name) then
            return tostring(v)
        elseif (subbeddisplayname == name) then
            return tostring(v)
        end
    end
end
local function SendError(ErrorText)
    rconsoleprint("@@RED@@")
    rconsoleprint("<ERROR> "..ErrorText)
    rconsoleprint("@@WHITE@@")
end
-- colors
local function SetCyan()
    rconsoleprint("@@CYAN@@")
end
local function SetWhite()
    rconsoleprint("@@WHITE@@")
end
local function SetRed()
    rconsoleprint("@@RED@@")
end
local function SetPurple()
    rconsoleprint("@@MAGENTA@@")
end
local function SetGreen()
    rconsoleprint("@@GREEN@@")
end



function ApplyModel(model)
    if not model:FindFirstChild("Highlight") then
        local highlight = Instance.new("Highlight")
        highlight.Parent = model.Character
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    end
    end
function ApplyPlayer(model)
    if not model:FindFirstChild("Highlight") then
        local highlight = Instance.new("Highlight")
        highlight.Parent = model
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    end
end
-- idk what are these
local cmdtable =
{   
    {
        names = {"setws", "ws"},
        callback = function(speed)
            if speed ~= nil then
                SetCyan()
                rconsoleprint("setting walkspeed to "..speed.."\n")
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speed)
                wait(.25)
                rconsoleprint("walkspeed has been set to "..speed.."\n")
                SetWhite()
            end
        end
    }
}

task.spawn(function()
    while wait(1) do
        plrtable = {}
        for i,v in pairs(plrs:GetChildren()) do
            table.insert(plrtable, v)
        end
    end
end)
-- random title lol
task.spawn(function()
    while wait(5) do
     local function randomNames()
     local lol = {"LOL", "Anhtlauncher on top", "eeeeeeeeeeeee", "LMAO", "BRUH", "SHIT", "OMG", "REAL", "HOW", "Did you know you can run badapple command to watch badapple", "SHITTY ADMIN"}
     return "||    "..lol[math.random(#lol)].."    ||"
     end 
     rconsolename(randomNames())
    end
end)

local function AddCmd(name, alias, func)
    local cmd = {}
    if alias then
        cmd.names = {name, alias}
    else
        cmd.names = {name}
    end
    cmd.callback = func
    table.insert(cmdtable, cmd)
end

local function ListCommands()
    SetGreen()
    for i,v in pairs(cmdtable) do
        if v.names[1] and v.names[2] then
            rconsoleprint(""..v.names[1].."/"..v.names[2].."\n")
        else
            rconsoleprint(""..v.names[1].."\n")
        end
    end
    SetWhite()
end
-- inf iy settings
FLYING = false
iyflyspeed = 1
vehicleflyspeed = 1
-- flying suff skidded from iy
local function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

local function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
-- commands
AddCmd("fly", "fl", function(args)
	NOFLY()
	wait()
	sFLY()
	if args[1] and isNumber(args[1]) then
		iyflyspeed = args[1]
	end
    SetCyan() rconsoleprint('Fly enabled \n') SetWhite()
end)
AddCmd("flyspeed" ,"flysp" ,function(args)
	local speed = args[1] or 1
	if isNumber(speed) then
		iyflyspeed = speed
	end
    SetCyan() rconsoleprint('Speed set to:'..args[1]..' \n') SetWhite()
end)
AddCmd("unfly",nil,function(args)
	NOFLY()
end)
AddCmd("vfly","vehiclefly",function(args)
	NOFLY()
	wait()
	sFLY(true)
	if args[1] and isNumber(args[1]) then
		vehicleflyspeed = args[1]
	end
    SetCyan() rconsoleprint('Vehicle fly enabled \n') SetWhite()
end)
AddCmd("vflyspeed",'vflysp',function(args)
	local speed = args[1] or 1
	if isNumber(speed) then
		vehicleflyspeed = speed
	end
    SetCyan() rconsoleprint('Speed set to:'..args[1]..' \n') SetWhite()
end)
AddCmd("float", "platform", function()
    if not plrw:FindFirstChild("oogeABAOGAGOBAOGOAG") then
        task.spawn(function()
            local Float = Instance.new('Part')
            Float.Name = "oogeABAOGAGOBAOGOAG"
            Float.Parent = plrw
            Float.Transparency = 1
            Float.Size = Vector3.new(2,0.2,1.5)
            Float.Anchored = true
            local FloatValue = -3.1
            Float.CFrame = plrhrp.CFrame * CFrame.new(0,FloatValue,0)
            qUp = MPos.KeyUp:Connect(function(KEY)
                if KEY == 'q' then
                    FloatValue = FloatValue + 0.5
                end
            end)
            eUp = MPos.KeyUp:Connect(function(KEY)
                if KEY == 'e' then
                    FloatValue = FloatValue - 0.5
                end
            end)
            qDown = MPos.KeyDown:Connect(function(KEY)
                if KEY == 'q' then
                    FloatValue = FloatValue - 0.5
                end
            end)
            eDown = MPos.KeyDown:Connect(function(KEY)
                if KEY == 'e' then
                    FloatValue = FloatValue + 0.5
                end
            end)
            floatDied = plrw:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                FloatingFunc:Disconnect()
                Float:Destroy()
                qUp:Disconnect()
                eUp:Disconnect()
                qDown:Disconnect()
                eDown:Disconnect()
                floatDied:Disconnect()
            end)
            local function FloatPadLoop()
                if plrw:FindFirstChild("oogeABAOGAGOBAOGOAG") and plrhrp then
                    Float.CFrame = plrhrp.CFrame * CFrame.new(0,FloatValue,0)
                else
                    FloatingFunc:Disconnect()
                    Float:Destroy()
                    qUp:Disconnect()
                    eUp:Disconnect()
                    qDown:Disconnect()
                    eDown:Disconnect()
                    floatDied:Disconnect()
                end
            end			
            FloatingFunc = game:GetService('RunService').Heartbeat:Connect(FloatPadLoop)
        end)
    end
    SetCyan()
    rconsoleprint("Float has been enabled, Q and E to go up and down.\n")
    SetWhite()
end)
AddCmd("unfloat", "noplatform", function()
    if plrw:FindFirstChild("oogeABAOGAGOBAOGOAG") then
        plrw:FindFirstChild("oogeABAOGAGOBAOGOAG"):Destroy()
    end
    if floatDied then
        FloatingFunc:Disconnect()
        qUp:Disconnect()
        eUp:Disconnect()
        qDown:Disconnect()
        eDown:Disconnect()
        floatDied:Disconnect()
    end 
    SetCyan()
    rconsoleprint("Float has been disabled.\n")
    SetWhite()
end)
AddCmd("goto", "to", function(str)
    FoundPlayer = FindName(str)
    if FoundPlayer then
        SetCyan()
        rconsoleprint("teleporting to "..FoundPlayer.."\n")
        plrhrp.CFrame = workspace:FindFirstChild(FoundPlayer):FindFirstChild("HumanoidRootPart").CFrame
        rconsoleprint("teleported to "..FoundPlayer.."\n")
        SetWhite()
    else
        SetRed()
        rconsoleprint("<ERROR> Couldnt find a player whose name started with "..str..".\n")
        SetWhite()
    end
end)
AddCmd("noclip", "nc", function()
    Clip = false
    Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
    SetCyan()
    rconsoleprint("<INFO> Noclip enabled.\n")
    SetWhite()
end)
AddCmd("clip", nil, function()
    Clip = true
    Noclipping:Disconnect()
    SetCyan()
    rconsoleprint("<INFO> Noclip disabled.\n")
    SetWhite()
end)
AddCmd("setjp", "jp", function(args)
    if arg ~= nil then
        SetCyan()
        rconsoleprint("setting jump power to "..arg.."\n")
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = tonumber(str)
        wait(.25)
        rconsoleprint("jump power has been set to "..arg.."\n")
        SetWhite()
    end
end)
AddCmd("setws", "ws", function(args)
    if arg ~= nil then
        SetCyan()
        rconsoleprint("setting walkspeed to "..arg.."\n")
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(str)
        wait(.25)
        rconsoleprint("walkspeed has been set to "..arg.."\n")
        SetWhite()
    end
end)
AddCmd("esp", nil, function()
    local ESPToggle = false
    local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/ESP-Lib/main/ESP.lua"))()
    ESPToggle = not ESPToggle
    ESP:Toggle(ESPToggle)
    SetCyan()
    rconsoleprint("ESP has been set to "..tostring(ESPToggle).."\n")
    rconsoleprint("docs bc im lazy to add feature: https://github.com/wally-rblx/ESP-Lib/ \n")
    SetWhite()
end)
AddCmd("chams", nil, function()
    chams = not chams
    if chams then
        for _, Player in next, game:GetService("Players"):GetChildren() do
            ApplyModel(Player) wait()
        end
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            CharacterAddedConnection = v.CharacterAdded:Connect(function(character)
                ApplyPlayer(character)
            end)
        end
        SetCyan()
        rconsoleprint("Chams has been enabled.\n")
        rconsoleprint("Chams is fairly buggy.\n")
        SetWhite()
    else
        for _, Player in next, plrs:GetChildren() do
            if Player.Character:FindFirstChild("Highlight") then
                Player.Character:FindFirstChild("Highlight"):Destroy()
            end
        end
        for i,v in pairs(workspace:GetDescendants()) do
            if table.find(plrtable, v.Name) then
                if v:FindFirstChild("Highlight") then v:FindFirstChild("Highlight"):Destroy() end
            end
        end
        CharacterAddedConnection:Disconnect()
        SetCyan()
        rconsoleprint("Chams has been disabled.\n")
        rconsoleprint("Chams is fairly buggy, expect highlights to stay sometimes.\n")
        SetWhite()
    end
end)
AddCmd("playerlist", "pl", function()
    if args[1]:lower() == 'playerlist' then
		StarterGui:SetCoreGuiEnabled('PlayerList', true)
    SetCyan()
    rconsoleprint("you should see the Playerlist now \n")
    SetWhite()
    end
end)
AddCmd("antifling","atf",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Monster-Scripts/Anti-Fling/main/FE",true))()
    SetCyan() rconsoleprint('antifling enabled \n') SetWhite()
end)
AddCmd("cartridedestroyer", "crd", function()
    _G.cart = true
    local descendants = game.Workspace:GetDescendants()
    for index, descendant in pairs(descendants) do
    if descendant.ClassName == "ClickDetector"
    and descendant.Parent.Name == "Down"
    then
        task.spawn(function()
            while task.wait() and _G.cart == true do
                fireclickdetector(descendant)
                task.wait()
            end
        end)
    end
    end
    getgenv().AutoBreakCarts = true
    spawn(function()
    while AutoBreakCarts do wait(0.3)
    pcall(function()
    for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end end) end end)
    SetCyan()
    rconsoleprint("destroying cart ride lol and idk how to stop except rejoin \n")
    SetWhite()
end)
AddCmd("badapple",nil,function(args)
    local BadApple = game:HttpGet("https://raw.githubusercontent.com/Sowd0404/BadApple/main/BadApple.txt")
    BadApple = BadApple:gsub("%.", " ")
    local Splitting = BadApple:split("SPLIT")
    -- print stuffs
    for i,v in pairs(Splitting) do 
    rconsoleprint(v)
    wait(.05)
    end
    ListCommands()
end)
AddCmd("clr", "clrlogs", function()
    clearconsole()
    ListCommands()
end)
AddCmd("antiafk","afk",function(args)
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
	if not (args[1] and tostring(args[1]) == 'nonotify') then SetCyan() rconsoleprint('Anti afk enabled \n') SetWhite() end
end)
AddCmd("rejoin","rj",function(args)
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

ListCommands()

while true do
    SetRed()
    rconsoleprint(">")
    SetWhite()
    local str = AwaitConsoleInput()
    local FoundCommand = false
    for i,v in pairs(cmdtable) do
        strtocompare = string.split(str, " ")
        str = strtocompare[1]
        if #strtocompare >= 2 then
            arg = strtocompare[2]
        end
        if table.find(v.names, str) then
            FoundCommand = true
            v.callback(arg)
        end
    end
    if not FoundCommand then
        SendError("Failed to find command " .. str .. "!\n")
    end
end
