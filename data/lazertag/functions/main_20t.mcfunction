# Clock
execute if score seconds clock matches 1.. run schedule function lazertag:main_20t 20t
execute if score minutes clock matches 1.. run schedule function lazertag:main_20t 20t
execute if score seconds clock matches 0 if score minutes clock matches 0 run function lazertag:end

execute if score seconds clock matches 0 if score minutes clock matches 1.. run function lazertag:clock/minutes
execute if score seconds clock matches 1.. run scoreboard players remove seconds clock 1

execute if score bossbar clock matches 0 run bossbar set clock visible false
execute if score bossbar clock matches 1 run function lazertag:clock/bossbar
execute if score actionbar clock matches 1 run function lazertag:clock/actionbar
execute if score title clock matches 1 run function lazertag:clock/title
execute if score subtitle clock matches 1 run function lazertag:clock/subtitle