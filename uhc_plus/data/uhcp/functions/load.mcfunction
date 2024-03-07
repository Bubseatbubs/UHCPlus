# Add Scoreboard Objectives
scoreboard objectives add augments trigger
scoreboard objectives add hunger trigger
scoreboard objectives add menu trigger
scoreboard objectives add patron trigger
scoreboard objectives add testkit trigger
scoreboard objectives add top trigger
scoreboard objectives add uhcp_a_choosingAugment dummy
scoreboard objectives add uhcp_a_count dummy
scoreboard objectives add uhcp_a_durability dummy
scoreboard objectives add uhcp_a_gloryOfRa dummy
scoreboard objectives add uhcp_a_leave minecraft.custom:minecraft.leave_game
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
scoreboard objectives add uhcp_hungerTimer dummy
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

# Default scores
# Arrow limit
scoreboard players set %arrow_limit_default uhcp_arrowCount 12
# Dimension countdown
scoreboard players set %uhcp_dimTimeDef uhcp_gameTime 48000
# Golden apples
scoreboard players set %apples_default uhcp_settings 3
# Lava
scoreboard players set %uhcp_lavaDef uhcp_gameTime 48000
scoreboard players set %uhcp_lavaDef uhcp_lavaMaxHeight 50
scoreboard players set %uhcp_lavaDef uhcp_lavaTime 8400

# Set default scores when unset
execute unless score stage status matches 2 unless score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:load/scores

# Set Gamerules
gamerule doLimitedCrafting true
execute in minecraft:overworld run gamerule doInsomnia true
execute in minecraft:the_nether run gamerule doInsomnia true
execute in minecraft:the_end run gamerule doInsomnia true
execute in minecraft:the_end run gamerule randomTickSpeed 3
execute in minecraft:the_nether run gamerule randomTickSpeed 3
execute in minecraft:overworld run gamerule randomTickSpeed 18


# Forceload main dimension
execute in uhcp:main run forceload add 0 0

# Schedule delayed load
scoreboard players add %uhcp_loadInit uhcp_initStatus 1
execute if score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. unless entity @e[tag=UHCP_Lock] unless score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %uhcp_loadInit uhcp_initStatus matches 2.. run function uhcp:load/message
