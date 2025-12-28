blocks = {
    "dirt",
    "stone",
    "cobblestone",
    "wood",
    
}

if #blocks > 5 then 
print("You have a full inventory")
elseif #blocks <= 5 and #blocks > 0 then
print("You have space in your inventory, add more blocks!")
else 
print("Your inventory is empty")
end


