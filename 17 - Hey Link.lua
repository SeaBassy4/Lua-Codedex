Player = {
    name = "",
    x = 0,
    y = 0,
    color = "green",
    health = 100
}


function Player:nameChar(name)
    self.name = name
    print("Name is now set to: " .. self.name)
end

function Player:talk()
    print("Hello. My name is " .. self.name .. ". Let's begin!")
end

-- This code will run once your functions are written! 
Player:nameChar("Link")
Player:talk()
