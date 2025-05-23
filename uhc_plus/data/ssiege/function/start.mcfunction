# Dimension-specific commands
execute in minecraft:the_end run function uhcp:start/dimensions/minecraft/the_end
execute in minecraft:the_nether run function uhcp:start/dimensions/minecraft/the_nether
execute in minecraft:overworld run function uhcp:start/dimensions/minecraft/overworld
execute in uhcp:hell run forceload remove all
execute in uhcp:main run function uhcp:start/dimensions/uhcp/main

# Prepare spectators
tag @a[scores={uhcp_ready=2}] add UHCP_Spectator
tag @a[tag=UHCP_Died] add UHCP_Spectator

# Set scores
scoreboard players operation %titans uhcp_initStatus = %titans uhcp_settings
scoreboard players set %containers uhcp_settings 1
scoreboard players set %day uhcp_initStatus 0
scoreboard players set %end uhcp_initStatus 0
scoreboard players set %game uhcp_initStatus 1
scoreboard players set %time uhcp_initStatus 0
scoreboard players set %time_freeze uhcp_initStatus 0
scoreboard players set %titans uhcp_game_time 6000
scoreboard players set %update_display uhcp_game_time 10
execute if score %dimension uhcp_settings matches ..-1 run scoreboard players set %dimension uhcp_settings 0
scoreboard players set @a uhcp_aug_choosingAugment 0
execute store result score %global uhcp_game_id run random value 0..3
execute store result score %global uhcp_game_id run function uhcp:start/id/game
scoreboard players operation @a uhcp_game_id = %global uhcp_game_id
execute store result storage uhcp:id game.id int 1 run scoreboard players get %global uhcp_game_id
scoreboard players set @a uhcp_game_time -1

# Display statistics
scoreboard players display numberformat %time uhcp_game_display fixed {"text":"0:00"}
scoreboard objectives setdisplay sidebar uhcp_game_display

# Reset scoreboards
scoreboard players reset %start_countdown
scoreboard players reset @a lobby
scoreboard players reset @a team
scoreboard players reset @a recall
scoreboard players reset @a uhcp_arrowCount
scoreboard players reset @a uhcp_aug_count
scoreboard players reset @a uhcp_aug_gloryOfRa
scoreboard players reset @a uhcp_aug_hb_killedCreeper
scoreboard players reset @a uhcp_aug_hb_killedSkeleton
scoreboard players reset @a uhcp_aug_hb_killedSpider
scoreboard players reset @a uhcp_aug_hb_killedZombie
scoreboard players reset @a uhcp_aug_tier
scoreboard players reset @a uhcp_augment
scoreboard players reset %entities uhcp_game_id
scoreboard players reset %time uhcp_game_time
scoreboard players reset @a uhcp_id
scoreboard players reset %global uhcp_id
scoreboard players reset %hunting_call uhcp_id
scoreboard players reset @a uhcp_leave
scoreboard players reset @a uhcp_lobby_item
scoreboard players reset @a uhcp_mine_ancientDebris
scoreboard players reset @a uhcp_mine_copperOre
scoreboard players reset @a uhcp_mine_dCopperOre
scoreboard players reset @a uhcp_mine_dGoldOre
scoreboard players reset @a uhcp_mine_dIronOre
scoreboard players reset @a uhcp_mine_goldOre
scoreboard players reset @a uhcp_mine_ironOre
scoreboard players reset @a uhcp_mine_rawCopperBlock
scoreboard players reset @a uhcp_mine_rawGoldBlock
scoreboard players reset @a uhcp_mine_rawIronBlock
scoreboard players reset @a uhcp_ready
scoreboard players reset @a ssiege_recall_cd
scoreboard players reset @a ssiege_recall_charge
scoreboard players reset @a ssiege_recall_delay

# Remove tags
tag @a remove UHCP_Creeper
tag @a remove UHCP_Skeleton
tag @a remove UHCP_Spider
tag @a remove UHCP_Zombie
tag @a remove UHCP_MilkBucket
tag @a remove UHCP_RelicTestingChamber
tag @a remove UHCP_SoulflameEmbrace
tag @a remove UHCP_Explode

# Set world border size
execute store result storage uhcp:border size.width int 1 run scoreboard players get %border_size uhcp_settings
function uhcp:start/border with storage uhcp:border size

# Allow one-player games to not end
execute if score %players uhcp_id matches ..1 run scoreboard players set %end uhcp_initStatus 1

# Team logic
scoreboard players set @a uhcp_team 0
scoreboard players set @a[tag=!UHCP_Spectator,team=blue] uhcp_team 1
scoreboard players set @a[tag=!UHCP_Spectator,team=red] uhcp_team 2

scoreboard players set %global uhcp_team 15
execute as @a[tag=!UHCP_Spectator,scores={uhcp_team=0}] run function uhcp:start/teams

team leave @a[scores={uhcp_team=0}]
execute if score %pvp uhcp_settings matches ..0 run scoreboard players set %pvp uhcp_settings -1
execute unless score %pvp uhcp_settings matches -1 run team join grace_period @a[tag=!UHCP_Spectator]

# Allow one-team games to not end
execute if score %end uhcp_initStatus matches 0 run function uhcp:start/teams/check

# Initialize Opening Encounter
function ssiege:start/encounters/init

# After a 10 second delay, start augment selection
schedule function ssiege:start_augment_selection 200