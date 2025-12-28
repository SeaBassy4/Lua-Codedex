geo_location = {
    speed = 10,
    x = 101,
    y = 30,
    name = "Player"
}

function boostSpeed(player_stats)
    if player_stats.x > 100 and player_stats.y < 50 then
        player_stats.speed = player_stats.speed + 10
    end
    print("Player's new speed is: " .. player_stats.speed)
end

boostSpeed(geo_location)


