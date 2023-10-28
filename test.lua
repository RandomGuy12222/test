local part = script.Parent

game.Players.PlayerAdded:Connect(function(player: Player) 
	part.Touched:Connect(function(otherPart: BasePart)
		local humanoid = player:FindFirstChild("Humanoid")

		local leaderstats = player:FindFirstChild("leaderstats")
		if otherPart.Parent:FindFirstChild("Humanoid") then
			leaderstats.Money.Value += 1
		end
	end)
end)
