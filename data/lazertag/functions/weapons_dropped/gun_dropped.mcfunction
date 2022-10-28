execute as @a[scores={gun_dropped=1..}] at @s run scoreboard players reset @a[scores={gun_dropped=1..}] gun_dropped

item replace entity @a[team=blue] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Blue Lazer Gun","color":"blue","bold":true,"italic":false}'},HideFlags:127,Unbreakable:1b,CustomModelData:865259,bluegun:1b} 1
item replace entity @a[team=red] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Red Lazer Gun","color":"red","bold":true,"italic":false}'},HideFlags:127,Unbreakable:1b,CustomModelData:736529,redgun:1b} 1