# Scoreboard objectives
# Triggers
scoreboard objectives add augments trigger
scoreboard objectives add lobby trigger
scoreboard objectives add menu trigger
scoreboard objectives add team trigger
scoreboard objectives add testkit trigger
scoreboard objectives add recall trigger
scoreboard objectives add upgrade trigger

# Settings triggers
scoreboard objectives add settings trigger
scoreboard objectives add settings_augments trigger
scoreboard objectives add settings_border trigger
scoreboard objectives add settings_lava trigger
scoreboard objectives add settings_other trigger
scoreboard objectives add settings_player trigger
scoreboard objectives add settings_team trigger

# Objectives
scoreboard objectives add uhcp_arrowCount dummy
scoreboard objectives add uhcp_aug_cd_firstOption dummy
scoreboard objectives add uhcp_aug_cd_secondOption dummy
scoreboard objectives add uhcp_aug_cd_thirdOption dummy
scoreboard objectives add uhcp_aug_cd_upgrade dummy
scoreboard objectives add uhcp_aug_choosingAugment dummy
scoreboard objectives add uhcp_aug_count dummy
scoreboard objectives add uhcp_aug_durability dummy
scoreboard objectives add uhcp_aug_gloryOfRa dummy
scoreboard objectives add uhcp_aug_hb_killedZombie dummy
scoreboard objectives add uhcp_aug_hb_killedCreeper dummy
scoreboard objectives add uhcp_aug_hb_killedSkeleton dummy
scoreboard objectives add uhcp_aug_hb_killedSpider dummy
scoreboard objectives add uhcp_aug_patron dummy
scoreboard objectives add uhcp_aug_sh_item1 dummy
scoreboard objectives add uhcp_aug_sh_item2 dummy
scoreboard objectives add uhcp_aug_sh_item3 dummy
scoreboard objectives add uhcp_aug_sh_item4 dummy
scoreboard objectives add uhcp_aug_sh_item5 dummy
scoreboard objectives add uhcp_aug_sh_item6 dummy
scoreboard objectives add uhcp_aug_sh_item7 dummy
scoreboard objectives add uhcp_aug_stack dummy
scoreboard objectives add uhcp_aug_tier dummy
scoreboard objectives add uhcp_aug_time dummy
scoreboard objectives add uhcp_aug_validSelection dummy
scoreboard objectives add uhcp_augment dummy
scoreboard objectives add uhcp_count dummy
scoreboard objectives add uhcp_death deathCount
scoreboard objectives add uhcp_deathTime dummy
scoreboard objectives add uhcp_game_display dummy {"text":"Game Stats","color":"aqua","bold":true}
scoreboard objectives add uhcp_game_id dummy
scoreboard objectives add uhcp_game_time dummy
scoreboard objectives add uhcp_groovy dummy
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
scoreboard objectives add uhcp_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add uhcp_lobby_item dummy
scoreboard objectives add uhcp_mine_ancientDebris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add uhcp_mine_copperOre minecraft.mined:minecraft.copper_ore
scoreboard objectives add uhcp_mine_dCopperOre minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add uhcp_mine_dGoldOre minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add uhcp_mine_dIronOre minecraft.mined:minecraft.deepslate_iron_ore
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
scoreboard objectives add uhcp_relic_sfe_time dummy
scoreboard objectives add uhcp_relic_sg dummy
scoreboard objectives add uhcp_relic_sg_radiant dummy
scoreboard objectives add uhcp_settings dummy
scoreboard objectives add uhcp_team dummy
scoreboard objectives add uhcp_timer dummy
scoreboard objectives add uhcp_titans_attack dummy
scoreboard objectives add uhcp_titans_count dummy
scoreboard objectives add uhcp_titans_height dummy
scoreboard objectives add uhcp_titans_id dummy
scoreboard objectives add uhcp_titans_timer dummy
scoreboard objectives add ssiege_recall_cd dummy
scoreboard objectives add ssiege_recall_charge dummy
scoreboard objectives add ssiege_recall_delay dummy
scoreboard objectives add uhcp_transformDuration dummy

# Display health objective
scoreboard objectives setdisplay below_name uhcp_health
scoreboard objectives setdisplay list uhcp_health

# Game display
scoreboard players set %time uhcp_game_display 2
scoreboard players display name %time uhcp_game_display {"text":"Time:","color":"gold"}

# Add bossbars
bossbar add uhcp:augment "Time Remaining:"
bossbar set uhcp:augment color white
bossbar set uhcp:augment style notched_6
bossbar set uhcp:augment max 900

# Add teams
team add blue {"text":"Blue","color":"dark_blue"}
team add red {"text":"Red","color":"dark_red"}

team modify blue collisionRule pushOwnTeam
team modify red collisionRule pushOwnTeam

team modify blue color dark_blue
team modify red color dark_red

team add no_collision {"text":"No Collision"}
team modify no_collision collisionRule pushOwnTeam
team modify no_collision friendlyFire true
team modify no_collision seeFriendlyInvisibles false

# Default scores
# Augment tier
scoreboard players set %random_def uhcp_aug_tier 1
scoreboard players set %tier_def uhcp_aug_tier 1

# Arrow limits (special arrow limits are additive)
scoreboard players set %arrow_limit_def uhcp_settings 12
scoreboard players set %arrow_limit149_def uhcp_settings 8
scoreboard players set %arrow_limit5_def uhcp_settings 20
scoreboard players set %arrow_limit201_def uhcp_settings 52

# Border size
scoreboard players set %border_size_def uhcp_settings 1500

# Friendly fire
scoreboard players set %friendly_fire_def uhcp_settings 0

# Players select teams
scoreboard players set %players_select_teams_def uhcp_settings 1

# Ra stacks
scoreboard players set %ra_stacks_def uhcp_settings 15

# Night vision
scoreboard players set %night_vision_def uhcp_settings 1

# Ender pearl immunity
scoreboard players set %ender_pearl_def uhcp_settings 1

# Difficulty
scoreboard players set %difficulty_def uhcp_settings 0

# Auto-cook
scoreboard players set %auto_cook_def uhcp_settings 1

# Auto-smelt
scoreboard players set %auto_smelt_def uhcp_settings 1

# Increased rates/drops of apples for leaves loot tables
scoreboard players set %apple_leaves_def uhcp_settings 1

# Remove enchanted golden apples from loot tables
scoreboard players set %apple_limit_def uhcp_settings 1

# UHC Plus loot
scoreboard players set %uhcp_loot_def uhcp_settings 1

# Set default scores when unset
execute unless score %game uhcp_initStatus matches 1 run function ssiege:load/scores

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/overworld
execute in uhcp:main run function uhcp:load/dimensions/uhcp/main

# Initial logic
execute unless score %init uhcp_initStatus matches 1 run function ssiege:load/init

# Schedule delayed load
scoreboard players add %load uhcp_initStatus 1
execute unless score %load uhcp_initStatus matches 2.. run return run schedule function ssiege:load 20t

# Finish loading attempts
scoreboard players reset %load
tellraw @a [{"text":"Loaded "},{"text":"<","color":"#2F05FF","hover_event":{"action":"show_text","value":[{"text":"Sniffer Siege","color":"#00EEFF"}]}}]
