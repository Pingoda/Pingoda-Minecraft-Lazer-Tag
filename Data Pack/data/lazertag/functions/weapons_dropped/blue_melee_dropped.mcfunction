execute as @a[scores={blue_melee_dropped=1..}] at @s run scoreboard players reset @a[scores={blue_melee_dropped=1..}] blue_melee_dropped
item replace entity @a[team=blue] hotbar.1 with stick{display:{Name:'{"text":"Blue Melee","color":"blue","bold":true,"italic":false}'},HideFlags:127,CustomModelData:750850,bluemelee:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1000,Operation:2,UUID:[I;684675447,-930266109,-1563119372,-1935824272],Slot:"mainhand"}]} 1