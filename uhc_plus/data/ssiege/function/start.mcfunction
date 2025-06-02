# Game mode settings
execute unless score %mode uhcp_settings matches 1 run function uhcp:settings/mode/ssiege

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
execute store result score %global uhcp_game_id run random value 0..3
execute store result score %global uhcp_game_id run function uhcp:start/id/game
scoreboard players operation @a uhcp_game_id = %global uhcp_game_id
execute store result storage uhcp:id game.id int 1 run scoreboard players get %global uhcp_game_id
scoreboard players set @a uhcp_game_time -1

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

# Set up scoreboard display
scoreboard objectives setdisplay list ssiege_shards

# Allow one-player games to not end
execute if score %players uhcp_id matches ..1 run scoreboard players set %end uhcp_initStatus 1

# Set gamerules
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doDaylightCycle false

# Set initial death related variables
scoreboard players set @a ssiege_reverse_bounty 0
scoreboard players set @a ssiege_killstreak 0
scoreboard players set @a ssiege_death_timer -1
scoreboard players set %respawn_time ssiege_death_timer 5

# Disable both Runesmiths
scoreboard players set %blue ssiege_unlocked_runesmith 0
scoreboard players set %red ssiege_unlocked_runesmith 0

# Set Rune costs
scoreboard players set @a ssiege_rune_strength_cost 1
scoreboard players set @a ssiege_rune_toughness_cost 1
scoreboard players set @a ssiege_rune_swiftness_cost 1

# Set Perk Levels
scoreboard players set %blue ssiege_perk_regen 1
scoreboard players set %blue ssiege_perk_aura 1
scoreboard players set %blue ssiege_perk_turret 1
scoreboard players set %blue ssiege_perk_recall 1
scoreboard players set %blue ssiege_perk_swimspeed 1
scoreboard players set %blue ssiege_perk_featherfalling 1
scoreboard players set %blue ssiege_perk_sonar 1
scoreboard players set %blue ssiege_perk_titanslayer 1

scoreboard players set %red ssiege_perk_regen 1
scoreboard players set %red ssiege_perk_aura 1
scoreboard players set %red ssiege_perk_turret 1
scoreboard players set %red ssiege_perk_recall 1
scoreboard players set %red ssiege_perk_swimspeed 1
scoreboard players set %red ssiege_perk_featherfalling 1
scoreboard players set %red ssiege_perk_sonar 1
scoreboard players set %red ssiege_perk_titanslayer 1

scoreboard players set @a ssiege_currently_shopping 0

# Set Perk Costs
function ssiege:shop/perks/update_blue_perk_costs
function ssiege:shop/perks/update_red_perk_costs

# Set Perk Timers
scoreboard players set %sonar uhcp_game_time 0
scoreboard players set %red_regen uhcp_game_time 0
scoreboard players set %blue_regen uhcp_game_time 0
scoreboard players set %aura uhcp_game_time 0

# Keep 0 0 forceloaded for Titans and Bases
forceload add 0 0
forceload add 176 176 286 224
forceload add -178 -225 -289 -178


# Initialize Opening Encounter
function ssiege:start/encounters/init

# Giants don't start spawning until 15 minutes
scoreboard players set %giant_timer ssiege_giants -1

# After a 10 second delay, start augment selection
schedule function ssiege:start_augment_selection 200