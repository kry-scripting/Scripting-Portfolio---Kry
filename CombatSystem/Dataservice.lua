local Players = game:GetService("Players")

local DataService = {}
DataService.__index = DataService

function DataService.new()
    local self = setmetatable({}, DataService)
    self._profiles = {}
    return self
end

function DataService:LoadPlayer(player)
    -- Load player data
end

function DataService:SavePlayer(player)
    -- Save player data
end

Players.PlayerAdded:Connect(function(player)
    DataService:LoadPlayer(player)
end)

Players.PlayerRemoving:Connect(function(player)
    DataService:SavePlayer(player)
end)

return DataService
