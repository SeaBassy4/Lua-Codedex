isAlive = true
isStunned = false
health = 20
hasKey = true
completedQuest = false

if isAlive and (not isStunned) and (health > 10) and (hasKey or completedQuest) then
print ("Your boss battle has begun!")
else 
print("You cannot enter the boss battle.")
end
