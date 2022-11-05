execute unless entity @e[type=item] as @e[type=armor_stand,tag=item_generator] at @s run loot spawn ~ ~ ~ loot lazertag:item_generator
schedule function lazertag:tick_60s 30s replace

# The Game duration for Spawning is 60 seconds