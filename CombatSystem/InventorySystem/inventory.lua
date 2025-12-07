local Inventory = {}
Inventory.__index = Inventory

function Inventory.new(player)
    local self = setmetatable({}, Inventory)
    self.Player = player
    self.Items = {}
    return self
end

function Inventory:AddItem(itemId, amount)
    amount = amount or 1
    self.Items[itemId] = (self.Items[itemId] or 0) + amount
end

return Inventory
