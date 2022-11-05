## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast
# Detect Player
scoreboard players set @s hp_dmg 20
tellraw @a ["",{"selector":"@s"},{"text":" was shot by "},{"selector":"@a[tag=raycasting,limit=1]"}]

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000