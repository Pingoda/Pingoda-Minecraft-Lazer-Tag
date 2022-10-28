# Check Winning Team
title @a times 10 40 10
execute if score $Red red_team_score > $Blue blue_team_score run title @a title {"text":"\uE006","color":"white"}
execute if score $Red red_team_score < $Blue blue_team_score run title @a title {"text":"\uE007","color":"white"}
execute if score $Red red_team_score = $Blue blue_team_score run title @a title {"text":"\uE008","color":"white"}

# Reset Scoreboards
scoreboard players reset $Red red_team_score
scoreboard players reset $Blue blue_team_score
scoreboard players reset @a team_scores

# Clear Equipment
clear @a

# Team Leave
team leave @a

# Clear Effects
effect clear @a

# Lobby Teleport
execute at @e[type=minecraft:armor_stand,tag=lobby,limit=1] run tp @a @e[type=minecraft:armor_stand,tag=lobby,limit=1]
execute at @e[type=minecraft:armor_stand,tag=lobby,limit=1] run spawnpoint @a ~ ~ ~

# Set Gamemode
gamemode adventure @a

# Stops Clock
scoreboard players set bossbar clock 0
scoreboard players reset seconds clock
scoreboard players reset minutes clock

# Remove Scoreboard
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay belowName

# Scoreboards Reset
scoreboard players reset @a Deaths

# Team Join Lobby
team join lobby @a