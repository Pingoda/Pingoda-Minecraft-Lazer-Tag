clear @a[scores={picked_sonar=1..}] red_dye 1
item replace entity @s container.5 with red_dye{display:{Name:'{"text":"\\uE013","color":"white","bold":true,"italic":false}'},HideFlags:127,CustomModelData:594219,sonar:1b} 1
execute as @a[scores={picked_sonar=1..}] at @s run scoreboard players reset @s picked_sonar