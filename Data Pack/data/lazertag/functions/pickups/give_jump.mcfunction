clear @a[scores={picked_jump=1..}] green_dye 1
item replace entity @s container.7 with green_dye{display:{Name:'{"text":"\\uE011","color":"white","bold":true,"italic":false}'},HideFlags:127,CustomModelData:987321,jumpboost:1b} 1
execute as @a[scores={picked_jump=1..}] at @s run scoreboard players reset @s picked_jump