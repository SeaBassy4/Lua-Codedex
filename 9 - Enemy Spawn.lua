enemy_number = 3
enemy_hp = 90


for i = 1, enemy_number do
    print("Enemy #" .. enemy_number .. " spawned with " .. enemy_hp .. " HP")
    enemy_number = enemy_number - 1
    enemy_hp = enemy_hp - 30
end

