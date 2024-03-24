# Add Scoreboard Objectives

# Triggers
scoreboard objectives add augments trigger
scoreboard objectives add menu trigger
scoreboard objectives add patron trigger
scoreboard objectives add team trigger
scoreboard objectives add testkit trigger
scoreboard objectives add top trigger

# Settings Triggers
scoreboard objectives add settings trigger
scoreboard objectives add settings_augments trigger
scoreboard objectives add settings_border trigger
scoreboard objectives add settings_lava trigger
scoreboard objectives add settings_player trigger
scoreboard objectives add settings_team trigger
scoreboard objectives add settings_other trigger

# Scoreboard Objectives
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
scoreboard objectives add uhcp_t_id dummy
scoreboard objectives add uhcp_t_heightDifference dummy
scoreboard objectives add uhcp_team dummy
scoreboard objectives add uhcp_topCD dummy
scoreboard objectives add uhcp_topCharge dummy
scoreboard objectives add uhcp_topDelay dummy
scoreboard objectives add uhcp_wolf_stack dummy
scoreboard objectives add uhcp_ready dummy

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

bossbar add uhcp_arachnehealth ""
bossbar set minecraft:uhcp_arachnehealth color red
bossbar set minecraft:uhcp_arachnehealth style notched_10

bossbar add uhcp_gigantushealth ""
bossbar set minecraft:uhcp_gigantushealth color red
bossbar set minecraft:uhcp_gigantushealth style notched_10

bossbar add uhcp_fenrirhealth ""
bossbar set minecraft:uhcp_fenrirhealth color red
bossbar set minecraft:uhcp_fenrirhealth style notched_10

bossbar add uhcp_bonecolossushealth ""
bossbar set minecraft:uhcp_bonecolossushealth color red
bossbar set minecraft:uhcp_bonecolossushealth style notched_10

bossbar add uhcp_gigacreeperhealth ""
bossbar set minecraft:uhcp_gigacreeperhealth color red
bossbar set minecraft:uhcp_gigacreeperhealth style notched_10

bossbar add uhcp_tritonhealth ""
bossbar set minecraft:uhcp_tritonhealth color red
bossbar set minecraft:uhcp_tritonhealth style notched_10

bossbar add uhcp_seraphimhealth ""
bossbar set minecraft:uhcp_seraphimhealth color red
bossbar set minecraft:uhcp_seraphimhealth style notched_10

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
team modify grace_period seeFriendlyInvisibles false
team modify grace_period friendlyFire false

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
execute unless score %game uhcp_initStatus matches 1.. run function uhcp:load/scores

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/overworld
execute in uhcp:main run function uhcp:load/dimensions/uhcp/main

# Schedule delayed load
scoreboard players add %uhcp_loadInit uhcp_initStatus 1
execute if score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. unless entity @e[tag=UHCP_Lock] unless score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %uhcp_loadInit uhcp_initStatus matches 2.. run function uhcp:load/message
