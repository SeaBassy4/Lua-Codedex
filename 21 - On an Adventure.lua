Player = {}
Player.__index = Player

function Player:new(name, hp, spells)
    local obj = {
        name = name,
        hp = hp, 
        spells = spells or {}
    }
    setmetatable(obj, Player)
    return obj
end

function Player:takeDamage(amount)
    self.hp = self.hp - amount
    print("You took damage! Health is now: " .. self.hp)
end

function Player:castSpell(spell, enemy)
    if not spell then
        print("No such spell!")
        return
    end
    print(enemy.name .. " has been hit by " .. self.name .. "'s " .. spell.name .. "!")
    enemy:takeDamage(spell.damage)
end

function Player:learnSpell(spell)
    table.insert(self.spells, spell)
    print(self.name .. " learned " .. spell.name .. "!")
end

Enemy = {}
Enemy.__index = Enemy

function Enemy:new(name, hp)
    local obj = {
        name = name,
        hp = hp, 
    }
    setmetatable(obj, Enemy)
    return obj
end

function Enemy:takeDamage(amount)
    self.hp = self.hp - amount
    print(self.name .. " has taken damage! Health is now: " .. self.hp)
end

Spell = {}
Spell.__index = Spell

function Spell:new(name, damage)
    local obj = {
        name = name,
        damage = damage
    }
    setmetatable(obj, Spell)
    return obj
end


local hero = Player:new("Hero", 100)
local goblin = Enemy:new("Goblin", 50)


local fireball = Spell:new("Fireball", 30, 20)


hero:learnSpell(fireball)


hero:castSpell(fireball, goblin)


