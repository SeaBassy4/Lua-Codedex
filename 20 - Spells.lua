Spell = {}
Spell.__index = Spell

function Spell:new(name, damage, manaCost)
    local self = setmetatable({}, Spell)
    self.name = name
    self.damage = damage
    self.manaCost = manaCost
    return self
end

function Spell:cast(caster, target)
    print(caster .. " casts " .. self.name .. " on " .. target)
    print("It deals " .. self.damage .. " damage!")
end

local fireball = Spell:new("Fireball", 30, 20)
local iceSpike = Spell:new("Ice Spike", 20, 15)
fireball:cast("Wizard", "Goblin")
iceSpike:cast("Wizard", "Orc")

