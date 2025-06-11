local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Uttd script hacks 2092",
   Icon = 77392032855648,
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Ocean",
   ToggleUIKeybind = "K",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Uttd free script 9000"
   },
   Discord = {
      Enabled = true,
      Invite = "sA2zedUyqn",
      RememberJoins = true
   },
   KeySystem = false
})

local Tab = Window:CreateTab("OP", 4483362458)

local function loopAction(action)
   while true do
      pcall(action)
      wait()
   end
end

Tab:CreateButton({
   Name = "Inf Souls",
   Callback = function()
      task.spawn(function()
         loopAction(function()
            local player = game:GetService("Players").LocalPlayer
            player.stats.Souls.Value = math.huge
            player.PlayerGui.Souls.Frame.TextLabel.Text = player.PlayerGui.Souls.Frame.TextLabel.Text:gsub("%d+", tostring(math.huge))
         end)
      end)
   end,
})

Tab:CreateButton({
   Name = "Inf Lvl",
   Callback = function()
      task.spawn(function()
         loopAction(function()
            local player = game:GetService("Players").LocalPlayer
            local lvlObjects = {
               player.leaderstats:FindFirstChild("LV"),
               player:FindFirstChild("stats") and player.stats:FindFirstChild("Level"),
               player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("Level") and player.PlayerGui.Level.Frame:FindFirstChild("TextLabel"),
               game:GetService("StarterGui"):FindFirstChild("button") and game:GetService("StarterGui").button.Frame.Menu.Menu:FindFirstChild("LVL"),
               game:GetService("StarterGui"):FindFirstChild("Character") and game:GetService("StarterGui").Character.stats.ScrollingFrame:FindFirstChild("lvl"),
               player.PlayerGui:FindFirstChild("button") and player.PlayerGui.button.Frame.Menu.Menu:FindFirstChild("LVL"),
               player.PlayerGui:FindFirstChild("Character") and player.PlayerGui.Character.stats.ScrollingFrame:FindFirstChild("lvl"),
            }
            for _, obj in pairs(lvlObjects) do
               if obj then
                  pcall(function()
                     if obj:IsA("TextLabel") or obj:IsA("TextBox") then
                        obj.Text = obj.Text:gsub("%d+", tostring(math.huge))
                     elseif obj:IsA("IntValue") then
                        if obj.Value < 999 then
                           obj.Value = 999
                        end
                     elseif obj:IsA("NumberValue") then
                        obj.Value = math.huge
                     end
                  end)
               end
            end
         end)
      end)
   end,
})

Tab:CreateButton({
   Name = "Inf Reset",
   Callback = function()
      task.spawn(function()
         loopAction(function()
            local player = game:GetService("Players").LocalPlayer
            local resetObjects = {
               player.leaderstats.Reset,
               player.stats.Reset,
               player.PlayerGui.Character.stats.ScrollingFrame.reset,
               player.PlayerGui.FloweyMenu.Buttons.Reset,
            }
            for _, obj in pairs(resetObjects) do
               if obj then
                  pcall(function()
                     if obj:IsA("TextLabel") or obj:IsA("TextBox") then
                        obj.Text = obj.Text:gsub("%d+", tostring(math.huge))
                     elseif obj:IsA("IntValue") then
                        if obj.Value < 999 then
                           obj.Value = 999
                        end
                     elseif obj:IsA("NumberValue") then
                        obj.Value = math.huge
                     end
                  end)
               end
            end
         end)
      end)
   end,
})
