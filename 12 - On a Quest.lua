quest = {
  name = "Retrieve the Golden Fleece",
  location = "Athens",
  reward = 500,
  completed = false
}

quest.completed = true

quest.difficulty = "hard"

quest.reward = nil

print("You've completed the quest: " .. quest.name)
print("In the location of " .. quest.location)
print("What was the difficulty? " .. quest.difficulty)

