# Add Scoreboard Objectives
scoreboard objectives add augments trigger
scoreboard objectives add menu trigger
scoreboard objectives add patron trigger
scoreboard objectives add testkit trigger
scoreboard objectives add top trigger

# Add Settings Triggers
scoreboard objectives add settings trigger
scoreboard objectives add settings_augments trigger
scoreboard objectives add settings_border trigger
scoreboard objectives add settings_lava trigger
scoreboard objectives add settings_player trigger
scoreboard objectives add settings_team trigger
scoreboard objectives add settings_other trigger

scoreboard objectives add uhcp_a_choosingAugment dummy
scoreboard objectives add uhcp_a_count dummy
scoreboard objectives add uhcp_a_durability dummy
scoreboard objectives add uhcp_a_gloryOfRa dummy
scoreboard objectives add uhcp_a_patron dummy
scoreboard objectives add uhcp_a_selectedAugment dummy
scoreboard objectives add uhcp_a_stack dummy
scoreboard objectives add uhcp_a_tier dummy
scoreboard objectives add uhcp_a_timer dummy
scoreboard objectives add uhcp_a_validSelection dummy
scoreboard objectives add uhcp_arrowCount dummy
scoreboard objectives add uhcp_bee_stack dummy
scoreboard objectives add uhcp_death deathCount
scoreboard objectives add uhcp_gameDisplay dummy
scoreboard objectives add uhcp_gameId dummy
scoreboard objectives add uhcp_gameTime dummy
scoreboard objectives add uhcp_hb_killedZombie dummy
scoreboard objectives add uhcp_hb_killedCreeper dummy
scoreboard objectives add uhcp_hb_killedSkeleton dummy
scoreboard objectives add uhcp_hb_killedSpider dummy
scoreboard objectives add uhcp_id dummy
scoreboard objectives add uhcp_initStatus dummy
scoreboard objectives add uhcp_itemCount dummy
scoreboard objectives add uhcp_itemInv dummy
scoreboard objectives add uhcp_lavaCurrentHeight dummy
scoreboard objectives add uhcp_lavaCurrentLayers dummy
scoreboard objectives add uhcp_lavaHeight dummy
scoreboard objectives add uhcp_lavaMaxHeight dummy
scoreboard objectives add uhcp_lavaTime dummy
scoreboard objectives add uhcp_lavaTimeInterval dummy
scoreboard objectives add uhcp_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add uhcp_motion_x1 dummy
scoreboard objectives add uhcp_motion_x2 dummy
scoreboard objectives add uhcp_motion_y1 dummy
scoreboard objectives add uhcp_motion_y2 dummy
scoreboard objectives add uhcp_motion_z1 dummy
scoreboard objectives add uhcp_motion_z2 dummy
scoreboard objectives add uhcp_page dummy
scoreboard objectives add uhcp_settings dummy
scoreboard objectives add uhcp_t_attack dummy
scoreboard objectives add uhcp_t_count dummy
scoreboard objectives add uhcp_t_timer dummy
scoreboard objectives add uhcp_team dummy
scoreboard objectives add uhcp_topCD dummy
scoreboard objectives add uhcp_topCharge dummy
scoreboard objectives add uhcp_topDelay dummy
scoreboard objectives add uhcp_wolf_stack dummy

# Add Display Timer Names
scoreboard players set %display uhcp_gameDisplay 10000
scoreboard players display name %display uhcp_gameDisplay {"text":"Time:","color":"gold"}
scoreboard objectives modify uhcp_gameDisplay displayname {"text":"Game Stats","color":"gold"}

scoreboard players display name %border uhcp_gameDisplay {"text":"Border Size:","color":"gold"}

scoreboard players set %players uhcp_gameDisplay 0
scoreboard players display name %players uhcp_gameDisplay {"text":"Players Left:","color":"gold"}

# Add bossbars
bossbar add uhcp_topcharge "Time Until Teleport:"
bossbar set minecraft:uhcp_topcharge color purple
bossbar set minecraft:uhcp_topcharge style notched_6
bossbar set minecraft:uhcp_topcharge max 60

bossbar add uhcp_augment "Time Remaining:"
bossbar set minecraft:uhcp_augment color white
bossbar set minecraft:uhcp_augment style notched_6
bossbar set minecraft:uhcp_augment max 900

bossbar add uhcp_augment "Cooldown:"
bossbar set minecraft:uhcp_augment color white
bossbar set minecraft:uhcp_augment style notched_6
bossbar set minecraft:uhcp_augment max 900

bossbar add uhcp_titanhealth "Titan Health"
bossbar set minecraft:uhcp_titanhealth color red
bossbar set minecraft:uhcp_titanhealth style notched_6
bossbar set minecraft:uhcp_titanhealth max 1

# Add teams
team add aqua {"text":"Aqua","color":"aqua"}
team add blue {"text":"Blue","color":"blue"}
team add dark_aqua {"text":"Dark Aqua","color":"dark_aqua"}
team add dark_blue {"text":"Dark Blue","color":"dark_blue"}
team add dark_gray {"text":"Dark Gray","color":"dark_gray"}
team add dark_green {"text":"Dark Green","color":"dark_green"}
team add dark_purple {"text":"Dark Purple","color":"dark_purple"}
team add dark_red {"text":"Dark Red","color":"dark_red"}
team add gold {"text":"Gold","color":"gold"}
team add gray {"text":"Gray","color":"gray"}
team add green {"text":"Green","color":"green"}
team add light_purple {"text":"Light Purple","color":"light_purple"}
team add red {"text":"Red","color":"red"}
team add yellow {"text":"Yellow","color":"yellow"}
team modify aqua color aqua
team modify blue color blue
team modify dark_aqua color dark_aqua
team modify dark_blue color dark_blue
team modify dark_gray color dark_gray
team modify dark_green color dark_green
team modify dark_purple color dark_purple
team modify dark_red color dark_red
team modify gold color gold
team modify gray color gray
team modify green color green
team modify light_purple color light_purple
team modify red color red
team modify yellow color yellow

team add grace_period

# Default scores
# Arrow limit
scoreboard players set %arrow_limit_def uhcp_settings 12

# Border Size
scoreboard players set %border_size_def uhcp_settings 1500

# Border Countdown
scoreboard players set %border_countdown_def uhcp_settings 24000

# Border Shrink Speed
scoreboard players set %border_shrink_speed_def uhcp_settings 24000

# Dimension countdown
scoreboard players set %dimension_def uhcp_settings 48000

# Golden apples
scoreboard players set %golden_apples_def uhcp_settings 3

# PvP
scoreboard players set %pvp_def uhcp_settings 24000

# Team Game
scoreboard players set %team_def uhcp_settings 0

# Team Game
scoreboard players set %team_size_def uhcp_settings 2

# Friendly Fire
scoreboard players set %friendly_fire_def uhcp_settings 0

# Player Select Teams
scoreboard players set %players_select_teams_def uhcp_settings 1

# Ra Stacks
scoreboard players set %ra_stacks_def uhcp_settings 9

# Difficulty
scoreboard players set %difficulty_def uhcp_settings 0

# Lava
scoreboard players set %lava_countdown_def uhcp_settings 48000
scoreboard players set %uhcp_lavaDef uhcp_lavaMaxHeight 50
scoreboard players set %uhcp_lavaDef uhcp_lavaTime 8400

# Set default scores when unset
execute unless score stage status matches 2 unless score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:load/scores

# Set gamerules
execute in minecraft:overworld run gamerule doFireTick false
execute in minecraft:the_end run gamerule doFireTick false
execute in minecraft:the_nether run gamerule doFireTick false
execute in minecraft:overworld run gamerule doInsomnia false
execute in minecraft:overworld run gamerule doLimitedCrafting true
execute in minecraft:the_end run gamerule doLimitedCrafting true
execute in minecraft:the_nether run gamerule doLimitedCrafting true
execute in minecraft:overworld run gamerule doWeatherCycle false
execute in minecraft:the_end run gamerule doWeatherCycle false
execute in minecraft:the_nether run gamerule doWeatherCycle false
execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:the_end run gamerule naturalRegeneration false
execute in minecraft:the_nether run gamerule naturalRegeneration false
execute in minecraft:the_end run gamerule randomTickSpeed 3
execute in minecraft:the_nether run gamerule randomTickSpeed 3
execute in minecraft:overworld run gamerule randomTickSpeed 18

# Main dimension
execute in uhcp:main run function uhcp:load/dimensions/main

# Schedule delayed load
scoreboard players add %uhcp_loadInit uhcp_initStatus 1
execute if score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. unless entity @e[tag=UHCP_Lock] unless score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %uhcp_loadInit uhcp_initStatus matches 2.. run function uhcp:load/message
