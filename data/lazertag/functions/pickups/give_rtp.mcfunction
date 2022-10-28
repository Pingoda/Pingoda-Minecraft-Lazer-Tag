clear @a[scores={picked_rtp=1..}] yellow_dye 1
item replace entity @s container.6 with yellow_dye{display:{Name:'{"text":"\\uE012","color":"white","bold":true,"italic":false}'},HideFlags:127,CustomModelData:456198,rtp:1b} 1
execute as @a[scores={picked_rtp=1..}] at @s run scoreboard players reset @s picked_rtp