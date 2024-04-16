# Add Scoreboard Objectives

# Triggers
scoreboard objectives add augments trigger
scoreboard objectives add menu trigger
scoreboard objectives add patron trigger
scoreboard objectives add team trigger
scoreboard objectives add testkit trigger
scoreboard objectives add top trigger
scoreboard objectives add upgrade trigger
scoreboard objectives add lobby trigger

# Settings Triggers
scoreboard objectives add settings trigger
scoreboard objectives add settings_augments trigger
scoreboard objectives add settings_border trigger
scoreboard objectives add settings_lava trigger
scoreboard objectives add settings_player trigger
scoreboard objectives add settings_team trigger
scoreboard objectives add settings_other trigger

# Scoreboard Objectives
scoreboard objectives add uhcp_arrowCount dummy
scoreboard objectives add uhcp_aug_count dummy
scoreboard objectives add uhcp_aug_durability dummy
scoreboard objectives add uhcp_aug_gloryOfRa dummy
scoreboard objectives add uhcp_aug_patron dummy
scoreboard objectives add uhcp_aug_stack dummy
scoreboard objectives add uhcp_aug_tier dummy
scoreboard objectives add uhcp_aug_choosingAugment dummy
scoreboard objectives add uhcp_aug_validSelection dummy
scoreboard objectives add uhcp_aug_hb_killedZombie dummy
scoreboard objectives add uhcp_aug_hb_killedCreeper dummy
scoreboard objectives add uhcp_aug_hb_killedSkeleton dummy
scoreboard objectives add uhcp_aug_hb_killedSpider dummy
scoreboard objectives add uhcp_aug_cd_firstOption dummy
scoreboard objectives add uhcp_aug_cd_secondOption dummy
scoreboard objectives add uhcp_aug_cd_thirdOption dummy
scoreboard objectives add uhcp_aug_cd_upgrade dummy
scoreboard objectives add uhcp_aug_cd_time dummy
scoreboard objectives add uhcp_aug_sh_item dummy
scoreboard objectives add uhcp_augment dummy
scoreboard objectives add uhcp_bee_stack dummy
scoreboard objectives add uhcp_count dummy
scoreboard objectives add uhcp_death deathCount
scoreboard objectives add uhcp_deathTime dummy
scoreboard objectives add uhcp_game_display dummy
scoreboard objectives add uhcp_game_ID dummy
scoreboard objectives add uhcp_game_time dummy
scoreboard objectives add uhcp_health health {"text":"Health","color":"red"}
scoreboard objectives add uhcp_id dummy
scoreboard objectives add uhcp_initStatus dummy
scoreboard objectives add uhcp_itemCount dummy
scoreboard objectives add uhcp_itemInv dummy
scoreboard objectives add uhcp_jump minecraft.custom:minecraft.jump "Jump"
scoreboard objectives add uhcp_lava_currentHeight dummy
scoreboard objectives add uhcp_lava_currentLayers dummy
scoreboard objectives add uhcp_lava_height dummy
scoreboard objectives add uhcp_lava_maxHeight dummy
scoreboard objectives add uhcp_lava_time dummy
scoreboard objectives add uhcp_lava_timeInterval dummy
scoreboard objectives add uhcp_lobby_setItem dummy
scoreboard objectives add uhcp_lobby_item dummy
scoreboard objectives add uhcp_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add uhcp_mine_dCopperOre minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add uhcp_mine_dGoldOre minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add uhcp_mine_dIronOre minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add uhcp_mine_copperOre minecraft.mined:minecraft.copper_ore
scoreboard objectives add uhcp_mine_goldOre minecraft.mined:minecraft.gold_ore
scoreboard objectives add uhcp_mine_ironOre minecraft.mined:minecraft.iron_ore
scoreboard objectives add uhcp_mine_rawCopperBlock minecraft.mined:minecraft.raw_copper_block
scoreboard objectives add uhcp_mine_rawGoldBlock minecraft.mined:minecraft.raw_gold_block
scoreboard objectives add uhcp_mine_rawIronBlock minecraft.mined:minecraft.raw_iron_block
scoreboard objectives add uhcp_motion_x1 dummy
scoreboard objectives add uhcp_motion_x2 dummy
scoreboard objectives add uhcp_motion_y1 dummy
scoreboard objectives add uhcp_motion_y2 dummy
scoreboard objectives add uhcp_motion_z1 dummy
scoreboard objectives add uhcp_motion_z2 dummy
scoreboard objectives add uhcp_ready dummy
scoreboard objectives add uhcp_relic_count dummy
scoreboard objectives add uhcp_settings dummy
scoreboard objectives add uhcp_titans_attack dummy
scoreboard objectives add uhcp_titans_count dummy
scoreboard objectives add uhcp_titans_timer dummy
scoreboard objectives add uhcp_titans_ID dummy
scoreboard objectives add uhcp_titans_height dummy
scoreboard objectives add uhcp_team dummy
scoreboard objectives add uhcp_testkit dummy
scoreboard objectives add uhcp_timer dummy
scoreboard objectives add uhcp_top_CD dummy
scoreboard objectives add uhcp_top_charge dummy
scoreboard objectives add uhcp_top_delay dummy
scoreboard objectives add uhcp_transformDuration dummy

# Display health objective
scoreboard objectives setdisplay below_name uhcp_health
scoreboard objectives setdisplay list uhcp_health

# Add Display Timer Names
scoreboard players set %display uhcp_game_display 59999969
scoreboard players display name %display uhcp_game_display {"text":"Time:","color":"gold"}
scoreboard objectives modify uhcp_game_display displayname {"text":"Game Stats","color":"aqua","bold":true}

scoreboard players display name %border uhcp_game_display {"text":"Border Size:","color":"gold"}

scoreboard players set %players uhcp_game_display 0
scoreboard players display name %players uhcp_game_display {"text":"Players Left:","color":"gold"}

# Add bossbars
bossbar add uhcp:top_charge "Time Until Teleport:"
bossbar set uhcp:top_charge color purple
bossbar set uhcp:top_charge style notched_6
bossbar set uhcp:top_charge max 60

bossbar add uhcp:augment "Time Remaining:"
bossbar set uhcp:augment color white
bossbar set uhcp:augment style notched_6
bossbar set uhcp:augment max 900

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

team modify aqua collisionRule pushOwnTeam
team modify blue collisionRule pushOwnTeam
team modify dark_aqua collisionRule pushOwnTeam
team modify dark_blue collisionRule pushOwnTeam
team modify dark_gray collisionRule pushOwnTeam
team modify dark_green collisionRule pushOwnTeam
team modify dark_purple collisionRule pushOwnTeam
team modify dark_red collisionRule pushOwnTeam
team modify gold collisionRule pushOwnTeam
team modify gray collisionRule pushOwnTeam
team modify green collisionRule pushOwnTeam
team modify light_purple collisionRule pushOwnTeam
team modify red collisionRule pushOwnTeam
team modify yellow collisionRule pushOwnTeam

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

team add grace_period {"text":"Grace Period"}
team modify grace_period collisionRule pushOwnTeam
team modify grace_period friendlyFire false
team modify grace_period seeFriendlyInvisibles false

team add no_collision {"text":"No Collision"}
team modify no_collision collisionRule pushOwnTeam
team modify no_collision friendlyFire true
team modify no_collision seeFriendlyInvisibles false

# Default scores
# Augment tier
scoreboard players set %random_def uhcp_aug_tier 1

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

# Number of Titans
scoreboard players set %titans_def uhcp_settings 3

# PvP countdown
scoreboard players set %pvp_def uhcp_settings 24000

# Team game
scoreboard players set %team_def uhcp_settings 1

# Team size
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
scoreboard players set %lava_def uhcp_lava_maxHeight 50
scoreboard players set %lava_def uhcp_lava_time 8400

# Set default scores when unset
execute unless score %game uhcp_initStatus matches 1 run function uhcp:load/scores

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/overworld
execute in uhcp:main run function uhcp:load/dimensions/uhcp/main

# Initial logic
execute unless score %init uhcp_initStatus matches 1 run function uhcp:init

# Schedule delayed load
scoreboard players add %load uhcp_initStatus 1
execute if score %lock uhcp_itemCount matches 1.. run function uhcp:load/summon/summon
execute unless score %load uhcp_initStatus matches 2.. unless entity @e[tag=UHCP_Lock] unless score %lock uhcp_itemCount matches 1.. run function uhcp:load/summon
execute unless score %load uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %load uhcp_initStatus matches 2.. run function uhcp:load/message
