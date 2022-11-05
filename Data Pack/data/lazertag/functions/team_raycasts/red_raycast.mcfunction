## Run from tf_raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#lazertag:not_mob,dx=0,team=!red] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function lazertag:collide
scoreboard players set @s cooldown 15

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 0

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #lazertag:raycast_pass run function lazertag:team_raycasts/red_raycast
