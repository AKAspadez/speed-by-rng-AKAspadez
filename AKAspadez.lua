--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = loadstring(game:HttpGet("https://sirius.menu/rayfield"))();
local v1 = game:GetService("Players");
local v2 = game:GetService("TweenService");
local v3 = game:GetService("UserInputService");
local v4 = game:GetService("TeleportService");
local v5 = game:GetService("RunService");
local v6 = v1.LocalPlayer;
local v7 = v6.Character or v6.CharacterAdded:Wait();
local v8 = v7:WaitForChild("HumanoidRootPart");
local v9 = v7:WaitForChild("Humanoid");
v6.CharacterAdded:Connect(function(v34)
	v7 = v34;
	v8 = v34:WaitForChild("HumanoidRootPart");
	v9 = v34:WaitForChild("Humanoid");
end);
local v10 = nil;
local v11 = false;
local v12 = 1;
local v13 = false;
local v14 = 180.5 - (67 + 113);
local v15 = Vector3.new(-140.0140838623047, 3.189606475830078 + 0, 1949.1905517578125 - 1155);
local v16 = Vector3.new(367.53778076171875 + 131, 9.920595169067383, 962.8899536132812);
local v17 = false;
local v18 = 0.5 - 0;
local v19 = false;
local v20 = 1;
local v21 = false;
local v22 = 0.5;
local v23 = false;
local v24 = 1;
local v25 = 968 - (802 + 150);
local v26 = false;
v5.RenderStepped:Connect(function()
	if v9 then
		v9.WalkSpeed = v25;
	end
end);
v3.JumpRequest:Connect(function()
	if (v26 and v9) then
		v9:ChangeState(Enum.HumanoidStateType.Jumping);
	end
end);
local v27 = v0:CreateWindow({Name="AKAspadez premium",LoadingTitle="Loading...",LoadingSubtitle="by AKAspadez",ConfigurationSaving={Enabled=false}});
local v28 = v27:CreateTab("Universal", 5627923908 - 1144561450);
local v29 = v27:CreateTab("Speed by RNG game (:", 4483362458 - 0);
local v30 = v27:CreateTab("Misc", 4483362458);
v28:CreateButton({Name="Set Waypoint",Callback=function()
	v10 = v8.Position;
end});
local function v31()
	local v36 = 0 + 0;
	while true do
		if (0 == v36) then
			if not v10 then
				return;
			end
			if v13 then
				local v61 = 997 - (915 + 82);
				local v62;
				while true do
					if (v61 == 2) then
						v8.Anchored = false;
						break;
					end
					if (v61 == (2 - 1)) then
						v62:Play();
						v62.Completed:Wait();
						v61 = 2;
					end
					if (v61 == 0) then
						v8.Anchored = true;
						v62 = v2:Create(v8, TweenInfo.new(v14), {CFrame=CFrame.new(v10 + Vector3.new(0, 2 + 1, 0))});
						v61 = 1 - 0;
					end
				end
			else
				v8.CFrame = CFrame.new(v10 + Vector3.new(0, 1190 - (1069 + 118), 0 - 0));
			end
			break;
		end
	end
end
v28:CreateButton({Name="Go To Waypoint",Callback=v31});
v28:CreateToggle({Name="Auto Waypoint",CurrentValue=false,Callback=function(v37)
	local v38 = 0 - 0;
	while true do
		if (v38 == (0 + 0)) then
			v11 = v37;
			if v37 then
				task.spawn(function()
					while v11 do
						v31();
						task.wait(v12);
					end
				end);
			end
			break;
		end
	end
end});
v28:CreateSlider({Name="Delay",Range={(0.2 + 0),5},Increment=(791.1 - (368 + 423)),CurrentValue=(3 - 2),Callback=function(v39)
	v12 = v39;
end});
v28:CreateToggle({Name="Use Tween",CurrentValue=false,Callback=function(v40)
	v13 = v40;
end});
v28:CreateSlider({Name="Tween Speed",Range={(18.1 - (10 + 8)),(7 - 5)},Increment=0.1,CurrentValue=0.5,Callback=function(v41)
	v14 = v41;
end});
local function v32()
	if v21 then
		local v54 = 0;
		local v55;
		while true do
			if (v54 == 2) then
				v8.Anchored = false;
				break;
			end
			if (v54 == (443 - (416 + 26))) then
				v55:Play();
				v55.Completed:Wait();
				v54 = 6 - 4;
			end
			if (v54 == 0) then
				v8.Anchored = true;
				v55 = v2:Create(v8, TweenInfo.new(v22), {CFrame=CFrame.new(v16 + Vector3.new(0, 3, 0 + 0))});
				v54 = 1 - 0;
			end
		end
	else
		v8.CFrame = CFrame.new(v16 + Vector3.new(438 - (145 + 293), 3, 430 - (44 + 386)));
	end
end
v29:CreateButton({Name="50 Wins",Callback=v32});
v29:CreateToggle({Name="Tween 50 Wins",CurrentValue=false,Callback=function(v42)
	v21 = v42;
end});
v29:CreateSlider({Name="Tween Speed 50",Range={0.1,(2 + 0)},Increment=(772.1 - (201 + 571)),CurrentValue=(1138.5 - (116 + 1022)),Callback=function(v43)
	v22 = v43;
end});
v29:CreateToggle({Name="Auto 50 Wins",CurrentValue=false,Callback=function(v44)
	local v45 = 0 - 0;
	while true do
		if (v45 == (0 + 0)) then
			v23 = v44;
			if v44 then
				task.spawn(function()
					while v23 do
						local v68 = 0;
						while true do
							if (v68 == (0 - 0)) then
								v32();
								task.wait(v24);
								break;
							end
						end
					end
				end);
			end
			break;
		end
	end
end});
v29:CreateSlider({Name="Auto Delay 50",Range={0.2,5},Increment=(0.1 - 0),CurrentValue=(1 + 0),Callback=function(v46)
	v24 = v46;
end});
v29:CreateParagraph({Title="Tip 50",Content="Recommended: 0.2"});
local function v33()
	if v17 then
		local v57 = 0 + 0;
		local v58;
		while true do
			if (v57 == (886 - (261 + 624))) then
				v58:Play();
				v58.Completed:Wait();
				v57 = 3 - 1;
			end
			if (v57 == (1082 - (1020 + 60))) then
				v8.Anchored = false;
				break;
			end
			if (v57 == (1423 - (630 + 793))) then
				v8.Anchored = true;
				v58 = v2:Create(v8, TweenInfo.new(v18), {CFrame=CFrame.new(v15 + Vector3.new(0 - 0, 14 - 11, 0 + 0))});
				v57 = 1;
			end
		end
	else
		v8.CFrame = CFrame.new(v15 + Vector3.new(0 - 0, 1750 - (760 + 987), 1913 - (1789 + 124)));
	end
end
v29:CreateButton({Name="25 Wins",Callback=v33});
v29:CreateToggle({Name="Tween 25 Wins",CurrentValue=false,Callback=function(v47)
	v17 = v47;
end});
v29:CreateSlider({Name="Tween Speed 25",Range={0.1,2},Increment=0.1,CurrentValue=(0.5 - 0),Callback=function(v48)
	v18 = v48;
end});
v29:CreateToggle({Name="Auto 25 Wins",CurrentValue=false,Callback=function(v49)
	v19 = v49;
	if v49 then
		task.spawn(function()
			while v19 do
				local v60 = 0 - 0;
				while true do
					if (v60 == (0 + 0)) then
						v33();
						task.wait(v20);
						break;
					end
				end
			end
		end);
	end
end});
v29:CreateSlider({Name="Auto Delay 25",Range={(1055.2 - (87 + 968)),(5 + 0)},Increment=(0.1 - 0),CurrentValue=(1414 - (447 + 966)),Callback=function(v50)
	v20 = v50;
end});
v29:CreateParagraph({Title="Tip 25",Content="Recommended: 0.2"});
v30:CreateSlider({Name="WalkSpeed",Range={1,(2317 - (1703 + 114))},Increment=(702 - (376 + 325)),CurrentValue=16,Callback=function(v51)
	v25 = v51;
end});
v30:CreateToggle({Name="Infinite Jump",CurrentValue=false,Callback=function(v52)
	v26 = v52;
end});
v30:CreateButton({Name="Rejoin",Callback=function()
	v4:Teleport(game.PlaceId, v6);
end});
v30:CreateButton({Name="Server Hop",Callback=function()
	v4:Teleport(game.PlaceId);
end});
v0:LoadConfiguration();
