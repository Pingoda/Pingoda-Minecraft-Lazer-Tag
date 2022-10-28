## Call this on entities which launch the raycast



# Tag prevents current caster from being detected
tag @s add raycasting



# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute if entity @a[tag=raycasting,team=red,limit=1,scores={cooldown=..0}] anchored eyes positioned ^ ^-0.35 ^0.4 run function lazertag:team_raycasts/red_raycast
execute if entity @a[tag=raycasting,team=blue,limit=1,scores={cooldown=..0}] anchored eyes positioned ^ ^-0.35 ^0.4 run function lazertag:team_raycasts/blue_raycast



# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
