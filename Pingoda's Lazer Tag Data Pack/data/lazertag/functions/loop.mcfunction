schedule function lazertag:cooldown 1s append
execute as @a[scores={lazer=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{redgun:1b}}}] at @s run function lazertag:start_raycast
execute as @a[scores={lazer=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{bluegun:1b}}}] at @s run function lazertag:start_raycast

execute as @a[scores={cw_hp_old=1..}] run function lazertag:return_health
execute as @a[gamemode=!creative,gamemode=!spectator] unless score @s hp_dmg matches 0 run function lazertag:deal_damage
scoreboard players set @a hp_dmg 0

# Start Trigger
scoreboard players enable @a start
execute if entity @a[scores={start=1..}] run function lazertag:start
scoreboard players reset @a[scores={start=1..}] start

# End Trigger
scoreboard players enable @a end
execute if entity @a[scores={end=1..}] run function lazertag:end
scoreboard players reset @a[scores={end=1..}] end

# Setup Trigger
scoreboard players enable @a setup
execute if entity @a[scores={setup=1..}] run function lazertag:setup
scoreboard players reset @a[scores={setup=1..}] setup

# Check Bonks
execute if entity @a[scores={Bonks=1..}] run tellraw @a ["",{"selector":"@a[scores={Bonks=1..},limit=1]"},{"text":" was bonked"}]

# Reset Scoreboard
scoreboard players reset @a[scores={Bonks=1..}] Bonks

# Give Points at Flag
execute at @e[type=armor_stand,tag=flag] run scoreboard players add @a[team=red,dx=-1,dy=4,dz=1.5] red_score 1
execute at @e[type=armor_stand,tag=flag] run scoreboard players add @a[team=blue,dx=-1,dy=4,dz=1.5] blue_score 1

# Check Weapons Drops
execute as @a[scores={gun_dropped=1..}] at @s run function lazertag:weapons_dropped/gun_dropped
execute as @a[scores={red_melee_dropped=1..}] at @s run function lazertag:weapons_dropped/red_melee_dropped
execute as @a[scores={blue_melee_dropped=1..}] at @s run function lazertag:weapons_dropped/blue_melee_dropped
execute as @a[scores={armor_dropped=1..}] at @s run function lazertag:weapons_dropped/armor_dropped

# Check Powerups Use
execute as @a[scores={speed_used=1..}] at @s run function lazertag:powerups/speed_boost
execute as @a[scores={jump_used=1..}] at @s run function lazertag:powerups/jump_boost
execute as @a[scores={rtp_used=1..},team=red] at @s run function lazertag:powerups/rtp_red
execute as @a[scores={rtp_used=1..},team=blue] at @s run function lazertag:powerups/rtp_blue
execute as @a[scores={sonar_used=1..},team=red] at @s run function lazertag:powerups/sonar_red
execute as @a[scores={sonar_used=1..},team=blue] at @s run function lazertag:powerups/sonar_blue

# Check Powerups Pickups
execute as @a[scores={picked_speed=1..}] at @s run function lazertag:pickups/give_speed
execute as @a[scores={picked_jump=1..}] at @s run function lazertag:pickups/give_jump
execute as @a[scores={picked_rtp=1..}] at @s run function lazertag:pickups/give_rtp
execute as @a[scores={picked_sonar=1..}] at @s run function lazertag:pickups/give_sonar

# Spawn Protection
execute if entity @a[scores={Deaths=1..}] run effect give @s resistance 1 100 true
execute if entity @a[scores={Deaths=1..}] run scoreboard players reset @s Deaths

# Kill Powerups
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye",Count:1b,tag:{display:{Name:'{"text":"\\uE010","color":"white","bold":true,"italic":false}'},CustomModelData:561561,speedboost:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:green_dye",Count:1b,tag:{display:{Name:'{"text":"\\uE011","color":"white","bold":true,"italic":false}'},CustomModelData:987321,jumpboost:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye",Count:1b,tag:{display:{Name:'{"text":"\\uE012","color":"white","bold":true,"italic":false}'},CustomModelData:456198,rtp:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"\\uE013","color":"white","bold":true,"italic":false}'},CustomModelData:594219,sonar:1b}}}]

# Kill Equipment
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Red Lazer Gun","color":"red","bold":true,"italic":false}'},HideFlags:127,Unbreakable:1b,CustomModelData:736529,redgun:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blue Lazer Gun","color":"blue","bold":true,"italic":false}'},HideFlags:127,Unbreakable:1b,CustomModelData:865259,bluegun:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{Name:'{"text":"Red Melee","color":"red","bold":true,"italic":false}'},HideFlags:127,CustomModelData:857398,redmelee:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Blue Melee","color":"blue","bold":true,"italic":false}'},HideFlags:127,CustomModelData:750850,bluemelee:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}]

# Adds the Scoreboards
scoreboard players operation $Blue blue_team_score += @a[team=blue] blue_score
scoreboard players operation $Red red_team_score += @a[team=red] red_score
scoreboard players reset @a blue_score
scoreboard players reset @a red_score

scoreboard players operation Blue team_scores = $Blue blue_team_score
scoreboard players operation Red team_scores = $Red red_team_score

# Decrese Scoreboard
execute unless score cooldown cooldown matches ..0 run scoreboard players remove @a cooldown 1

# End Match
execute if score $Blue blue_team_score matches 1500 run function lazertag:end
execute if score $Red red_team_score matches 1500 run function lazertag:end