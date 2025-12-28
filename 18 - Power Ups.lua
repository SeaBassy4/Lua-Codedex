PowerUp = {bonus = 5,
           duration = 10
}
print("PowerUp: " .. PowerUp.bonus .. " , " .. PowerUp.duration)

SpeedBoost = {bonus = 15}
setmetatable(SpeedBoost, {__index = PowerUp})

Shield = {duration = 20}
setmetatable(Shield, {__index = PowerUp})

print("SpeedBoost: " .. SpeedBoost.bonus .. " , " .. SpeedBoost.duration)
print("Shield " .. Shield.bonus .. " , " .. Shield.duration)

