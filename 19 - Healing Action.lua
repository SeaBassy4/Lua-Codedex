Enemy = {}
Enemy.__index = Enemy

function Enemy:new(name, health)
    local obj = {
        name = name,
        health = health or 100,
        -- Pretend the last damage happened between 1 and 10 seconds ago
        lastDamageTime = os.time() - math.random(1, 10)
    }
    setmetatable(obj, Enemy)
    return obj
end

function Enemy:takeDamage(amount)
    self.health = self.health - amount
    self.lastDamageTime = os.time()
    print(self.name .. " took " .. amount .. " damage! Health is now " .. self.health)
end

function Enemy:heal()
    local currentTime = os.time()
    if (currentTime - self.lastDamageTime > 5) then
    self.health = self.health + 10
    print("The enemy has regained health!")
    print("the enemy's health is now " .. self.health)
    else
    print(self.name .. " has not had enought time to heal yet.")
    end
end


math.randomseed(os.time())  -- seed random numbers
local goblin = Enemy:new("Goblin", 30)
goblin:heal()
