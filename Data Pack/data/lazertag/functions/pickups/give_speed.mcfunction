clear @a[scores={picked_speed=1..}] light_blue_dye 1
item replace entity @s container.8 with light_blue_dye{display:{Name:'{"text":"\\uE010","color":"white","bold":true,"italic":false}'},HideFlags:127,CustomModelData:561561,speedboost:1b} 1
execute as @a[scores={picked_speed=1..}] at @s run scoreboard players reset @s picked_speed