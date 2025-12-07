local CombatService = {}
CombatService.__index = CombatService

function CombatService.ValidateHit(player, hitData)
    if (tick() - hitData.timestamp) > 1 then return false end
    if (hitData.distance or 0) > 25 then return false end
    return true
end

return CombatService
