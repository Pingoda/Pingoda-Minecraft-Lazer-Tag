# Create Game Scoreboards
scoreboard objectives add tf_rc dummy
scoreboard objectives add lazer minecraft.used:carrot_on_a_stick
scoreboard objectives add start trigger
scoreboard objectives add red_score dummy
scoreboard objectives add blue_score dummy
scoreboard objectives add blue_team_score dummy
scoreboard objectives add red_team_score dummy
scoreboard objectives add team_scores dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add end trigger
scoreboard objectives add setup trigger
scoreboard objectives add hp_dmg dummy
scoreboard objectives add cw_hp_current health
scoreboard objectives add cw_hp_old dummy
scoreboard objectives add Deaths deathCount
scoreboard objectives add Bonks killed_by:player

# Create Equipment Related Scoreboards
scoreboard objectives add gun_dropped minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add red_melee_dropped minecraft.dropped:minecraft.blaze_rod
scoreboard objectives add blue_melee_dropped minecraft.dropped:minecraft.stick
scoreboard objectives add armor_dropped minecraft.dropped:minecraft.leather_chestplate

# Create Picked Pickups Scoreboards
scoreboard objectives add picked_speed minecraft.picked_up:minecraft.light_blue_dye
scoreboard objectives add picked_jump minecraft.picked_up:minecraft.green_dye
scoreboard objectives add picked_rtp minecraft.picked_up:minecraft.yellow_dye
scoreboard objectives add picked_sonar minecraft.picked_up:minecraft.red_dye

# Create Used Pickups Scoreboards
scoreboard objectives add speed_used minecraft.dropped:minecraft.light_blue_dye
scoreboard objectives add jump_used minecraft.dropped:minecraft.green_dye
scoreboard objectives add rtp_used minecraft.dropped:minecraft.yellow_dye
scoreboard objectives add sonar_used minecraft.dropped:minecraft.red_dye

# Modify Scoreboard
scoreboard objectives modify team_scores displayname "Team Scores"

# Disable Gamerule
gamerule showDeathMessages false

# Create Teams
team add red
team add blue
team add spectator
team add lobby


# Modify Teams
team modify red collisionRule pushOtherTeams
team modify red prefix {"text":"\uE001 ","color":"white"}
team modify red color red
team modify red nametagVisibility hideForOtherTeams

team modify blue collisionRule pushOtherTeams
team modify blue prefix {"text":"\uE000 ","color":"white"}
team modify blue color blue
team modify blue nametagVisibility hideForOtherTeams

team modify spectator collisionRule pushOtherTeams
team modify spectator prefix {"text":"\uE014 ","color":"white"}
team modify spectator color gray
team modify spectator nametagVisibility hideForOtherTeams

team modify lobby collisionRule never
team modify lobby prefix {"text":"\uE009 ","color":"white"}
team modify lobby color gray
team modify lobby friendlyFire false

# Clock
data modify storage clocks pretext set value '{"text":"> ","color":"dark_purple"}'
data modify storage clocks minutes set value '{"score":{"name":"minutes","objective":"clock"},"color":"light_purple"}'
data modify storage clocks colon set value '{"text":":","color":"dark_purple"}'
data modify storage clocks seconds set value '{"score":{"name":"seconds","objective":"clock"},"color":"light_purple"}'
data modify storage clocks zero set value '{"text":"0","color":"light_purple"}'
data modify storage clocks posttext set value '{"text":" <","color":"dark_purple"}'

scoreboard objectives add clock dummy
scoreboard players add seconds clock 0
scoreboard players add minutes clock 0
scoreboard players add bossbar clock 0
scoreboard players add actionbar clock 0
scoreboard players add subtitle clock 0
scoreboard players add title clock 0

bossbar add clock [{"score":{"name":"minutes","objective":"clock"},"color":"light_purple"},{"text":":","color":"dark_purple"},{"score":{"name":"minutes","objective":"clock"},"color":"light_purple"}]
bossbar set clock value 0
bossbar set clock max 1
bossbar set clock color purple

# Installation Notification
tellraw @a ["",{"text":"Pinogda","color":"#9100FF"},{"text":": The ","color":"#DDDDDD"},{"text":"Lazer","color":"#ED1214"},{"text":" Tag","color":"#0600E0"},{"text":" Data Pack was installed ","color":"#DDDDDD"},{"text":"successfully","color":"green"},{"text":"!","color":"#DDDDDD"}]