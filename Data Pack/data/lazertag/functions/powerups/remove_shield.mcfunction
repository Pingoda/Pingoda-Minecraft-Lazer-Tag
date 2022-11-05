execute as @a[scores={shield_used=1..}] at @s run attribute @s generic.max_health base set 20
execute as @a[scores={shield_used=1..}] at @s run scoreboard players reset @s shield_used