#Team Join
team join red @r[team=!blue,limit=4]
team join blue @r[team=!red,limit=4]
team join spectator @a[team=!red,team=!blue]

# Give Equipment
item replace entity @a[team=red] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Red Lazer Gun","color":"red","bold":true,"italic":false}'},HideFlags:127,Unbreakable:1b,CustomModelData:736529,redgun:1b} 1
item replace entity @a[team=red] hotbar.1 with blaze_rod{display:{Name:'{"text":"Red Melee","color":"red","bold":true,"italic":false}'},HideFlags:127,CustomModelData:857398,redmelee:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1000,Operation:2,UUID:[I;633906487,1226000857,-1514144136,-981230500],Slot:"mainhand"}]} 1
item replace entity @a[team=blue] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Blue Lazer Gun","color":"blue","bold":true,"italic":false}'},HideFlags:127,Unbreakable:1b,CustomModelData:865259,bluegun:1b} 1
item replace entity @a[team=blue] hotbar.1 with stick{display:{Name:'{"text":"Blue Melee","color":"blue","bold":true,"italic":false}'},HideFlags:127,CustomModelData:750850,bluemelee:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1000,Operation:2,UUID:[I;684675447,-930266109,-1563119372,-1935824272],Slot:"mainhand"}]} 1

# Give Armor
item replace entity @a[team=red] armor.chest with leather_chestplate{display:{Name:'{"text":"Red Chest","color":"red","bold":true,"italic":false}',color:16711680},Unbreakable:1b} 1
item replace entity @a[team=blue] armor.chest with leather_chestplate{display:{Name:'{"text":"Blue Chest","color":"blue","bold":true,"italic":false}',color:5887},Unbreakable:1b} 1

# Spawn & Set Spawnpoints for Red
tp @a[team=red] @e[type=armor_stand,tag=redspawn,limit=1]
execute at @e[type=armor_stand,tag=redspawn,limit=1] run spawnpoint @a[team=red] ~ ~ ~

# Spawn & Set Spawnpoints for Blue
execute at @e[type=armor_stand,tag=bluespawn,limit=1] run spawnpoint @a[team=blue] ~ ~ ~
tp @a[team=blue] @e[type=armor_stand,tag=bluespawn,limit=1]

# Set Gamemode
gamemode spectator @a[team=spectator]
gamemode adventure @a[team=!spectator]

# Change GameRules
gamerule naturalRegeneration false

# Clear Effects
effect clear @a

# Give Effects
effect give @a saturation 1000000 1 true
effect give @a instant_health 1 100 true

# Starts Clock
scoreboard players set bossbar clock 1
scoreboard players set seconds clock 0
scoreboard players set minutes clock 5
function lazertag:main_20t

# Display Scoreboard
scoreboard objectives setdisplay sidebar team_scores
scoreboard objectives setdisplay belowName Deaths