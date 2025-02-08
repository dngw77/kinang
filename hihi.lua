    local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/VNT-UNIVERSAL/MyCode/main/UILib"))()
    local w1 = library:Window("CDVN")
    w1:Toggle(
        "Auto Lay Heal",
        "BangGac",
        false,
        function(toggled)
            AutoLayBangGac = toggled
        end
    )
    function GetBackpack(Weapon) 
        game:GetService("ReplicatedStorage").KnitPackages._Index:FindFirstChild("sleitnick_knit@1.7.0").knit.Services.InventoryService.RE.updateInventory:FireServer("refresh")
        game:GetService("ReplicatedStorage"):WaitForChild("KnitPackages")
            :WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0")
            :WaitForChild("knit"):WaitForChild("Services")
            :WaitForChild("InventoryService"):WaitForChild("RE")
            :WaitForChild("updateInventory"):FireServer("eue", Weapon)
    end
    spawn(function()
     while wait(.3) do
       if AutoLayBangGac then
           if not game.Players.LocalPlayer.Backpack:FindFirstChild('băng gạc') then
           GetBackpack('băng gạc')
           end
       end
     end
    end)
w1:Button('Đóng Menu', function()
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v:FindFirstChild('Top') then
            v:Destroy()    
        end
    end
end) -- Text, Callback

    w1:Label("Made by BBB")
