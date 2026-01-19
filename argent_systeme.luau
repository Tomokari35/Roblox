-- Server Script

local DataStoreService = game:GetService("DataStoreService")
local MoneyStore = DataStoreService:GetDataStore("PlayerMoney")

game.Players.PlayerAdded:Connect(function(player)

	-- leaderstats
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local money = Instance.new("IntValue")
	money.Name = "Money"
	money.Value = 0
	money.Parent = leaderstats

	-- Charger l'argent
	local success, data = pcall(function()
		return MoneyStore:GetAsync(player.UserId)
	end)

	if success and data then
		money.Value = data
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	local money = player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Money")

	if money then
		pcall(function()
			MoneyStore:SetAsync(player.UserId, money.Value)
		end)
	end
end)
