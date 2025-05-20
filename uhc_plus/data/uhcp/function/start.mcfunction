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
scoreboard players operation %border_countdown uhcp_game_time = %border_countdown uhcp_settings
scoreboard players set %border_stage uhcp_itemCount 0
scoreboard players set %containers uhcp_settings 1
scoreboard players set %day uhcp_initStatus 0
scoreboard players set %end uhcp_initStatus 0
scoreboard players set %game uhcp_initStatus 1
scoreboard players set %time uhcp_initStatus 0
scoreboard players set %time_freeze uhcp_initStatus 0
scoreboard players set %titans uhcp_game_time 6000
scoreboard players set %update_display uhcp_game_time 10
execute if score %dimension uhcp_settings matches ..-1 run scoreboard players set %dimension uhcp_settings 0
execute as @a unless score @s uhcp_aug_patron = @s uhcp_aug_patron run scoreboard players set @s uhcp_aug_patron 8
scoreboard players set @a uhcp_aug_choosingAugment 0
execute store result score %global uhcp_game_id run random value 0..3
execute store result score %global uhcp_game_id run function uhcp:start/id/game
scoreboard players operation @a uhcp_game_id = %global uhcp_game_id
execute store result storage uhcp:id game.id int 1 run scoreboard players get %global uhcp_game_id
scoreboard players set @a uhcp_game_time -1

# Display statistics
scoreboard players display numberformat %time uhcp_game_display fixed {"text":"0:00"}
execute store result storage uhcp:display border.size int 1 run scoreboard players get %border_size uhcp_settings
function uhcp:display/border with storage uhcp:display border
execute store result score %players uhcp_id if entity @a[tag=!UHCP_Spectator]
scoreboard players operation %players uhcp_initStatus = %players uhcp_id
function uhcp:display/players
scoreboard objectives setdisplay sidebar uhcp_game_display

# Reset scoreboards
scoreboard players reset %start_countdown
scoreboard players reset @a lobby
scoreboard players reset @a patron
scoreboard players reset @a team
scoreboard players reset @a top
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
scoreboard players reset @a uhcp_top_cd
scoreboard players reset @a uhcp_top_charge
scoreboard players reset @a uhcp_top_delay

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
scoreboard players set @a[tag=!UHCP_Spectator,team=aqua] uhcp_team 1
scoreboard players set @a[tag=!UHCP_Spectator,team=blue] uhcp_team 2
scoreboard players set @a[tag=!UHCP_Spectator,team=dark_aqua] uhcp_team 3
scoreboard players set @a[tag=!UHCP_Spectator,team=dark_blue] uhcp_team 4
scoreboard players set @a[tag=!UHCP_Spectator,team=dark_gray] uhcp_team 5
scoreboard players set @a[tag=!UHCP_Spectator,team=dark_green] uhcp_team 6
scoreboard players set @a[tag=!UHCP_Spectator,team=dark_purple] uhcp_team 7
scoreboard players set @a[tag=!UHCP_Spectator,team=dark_red] uhcp_team 8
scoreboard players set @a[tag=!UHCP_Spectator,team=gold] uhcp_team 9
scoreboard players set @a[tag=!UHCP_Spectator,team=gray] uhcp_team 10
scoreboard players set @a[tag=!UHCP_Spectator,team=green] uhcp_team 11
scoreboard players set @a[tag=!UHCP_Spectator,team=light_purple] uhcp_team 12
scoreboard players set @a[tag=!UHCP_Spectator,team=red] uhcp_team 13
scoreboard players set @a[tag=!UHCP_Spectator,team=yellow] uhcp_team 14

scoreboard players set %global uhcp_team 15
execute as @a[tag=!UHCP_Spectator,scores={uhcp_team=0}] run function uhcp:start/teams

team leave @a[scores={uhcp_team=0}]
execute if score %pvp uhcp_settings matches ..0 run scoreboard players set %pvp uhcp_settings -1
execute unless score %pvp uhcp_settings matches -1 run team join grace_period @a[tag=!UHCP_Spectator]

# Allow one-team games to not end
execute if score %end uhcp_initStatus matches 0 run function uhcp:start/teams/check

# Move players away from lobby
execute as @a at @s in minecraft:overworld run tp @s ~ ~1000 ~

# Remove lobby
execute in minecraft:overworld run function uhcp:lobby/remove

# Spread players
execute store result storage uhcp:border spread.max_range int 0.428571 run scoreboard players get %border_size uhcp_settings
execute store result storage uhcp:border spread.distance int 0.042857 run scoreboard players get %border_size uhcp_settings

execute in minecraft:overworld run function uhcp:start/spreadplayers/initial with storage uhcp:border spread
execute if score %spread uhcp_initStatus matches 0 in minecraft:overworld run function uhcp:start/spreadplayers/initial/failure_1 with storage uhcp:border spread
execute if score %spread uhcp_initStatus matches 0 in minecraft:overworld run function uhcp:start/spreadplayers/initial/failure_2

execute if score %spread uhcp_initStatus matches 1 run function uhcp:start/spreadplayers/secondary

# Teleport spectators
tp @a[tag=UHCP_Spectator] 0 150 0
execute as @a[tag=UHCP_Spectator] run tp @s @r[tag=!UHCP_Spectator]

# Augment selection setup
kill @e[tag=UHCP_StoreAugment]
kill @e[type=minecraft:item,predicate=uhcp:dimensions/uhcp/main]
tag @a remove UHCP_ChoosingItem
tag @a remove UHCP_AugmentRerollSlot1
tag @a remove UHCP_AugmentRerollSlot2
tag @a remove UHCP_AugmentRerollSlot3

# Augment tier
execute if score %random uhcp_aug_tier matches 1 store result score %tier uhcp_aug_tier run function uhcp:start/augments/tier/randomize

# Effects
effect clear @a
effect give @a[tag=!UHCP_Spectator] minecraft:regeneration 10 5 true
function uhcp:start/night_vision

# Reset attribute modifiers
execute as @a run function uhcp:reset/attributes

# Grant players +20 health
execute as @a[tag=!UHCP_Spectator] run attribute @s minecraft:max_health modifier add uhcp:game_max_health 20 add_value

# Reset experience
experience set @a 0 levels
experience set @a 0 points

# Assign player IDs
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/id/player
execute as @a[tag=UHCP_Spectator] run function uhcp:start/id/spectator

# Solo leveling upgrades
tag @a remove UHCP_SLUpg
tag @a remove UHCP_SLAxe
tag @a remove UHCP_SLBoots
tag @a remove UHCP_SLBow
tag @a remove UHCP_SLChest
tag @a remove UHCP_SLHelm
tag @a remove UHCP_SLHoe
tag @a remove UHCP_SLLegs
tag @a remove UHCP_SLPick
tag @a remove UHCP_SLShovel
tag @a remove UHCP_SLSword
function uhcp:augments/effects/prismatic/sololeveling/prepare

# Clear ender chests
item replace entity @a enderchest.0 with minecraft:air
item replace entity @a enderchest.1 with minecraft:air
item replace entity @a enderchest.2 with minecraft:air
item replace entity @a enderchest.3 with minecraft:air
item replace entity @a enderchest.4 with minecraft:air
item replace entity @a enderchest.5 with minecraft:air
item replace entity @a enderchest.6 with minecraft:air
item replace entity @a enderchest.7 with minecraft:air
item replace entity @a enderchest.8 with minecraft:air
item replace entity @a enderchest.9 with minecraft:air
item replace entity @a enderchest.10 with minecraft:air
item replace entity @a enderchest.11 with minecraft:air
item replace entity @a enderchest.12 with minecraft:air
item replace entity @a enderchest.13 with minecraft:air
item replace entity @a enderchest.14 with minecraft:air
item replace entity @a enderchest.15 with minecraft:air
item replace entity @a enderchest.16 with minecraft:air
item replace entity @a enderchest.17 with minecraft:air
item replace entity @a enderchest.18 with minecraft:air
item replace entity @a enderchest.19 with minecraft:air
item replace entity @a enderchest.20 with minecraft:air
item replace entity @a enderchest.21 with minecraft:air
item replace entity @a enderchest.22 with minecraft:air
item replace entity @a enderchest.23 with minecraft:air
item replace entity @a enderchest.24 with minecraft:air
item replace entity @a enderchest.25 with minecraft:air
item replace entity @a enderchest.26 with minecraft:air

# Augments
function uhcp:start/augments

# Spectators
gamemode spectator @a[tag=UHCP_Spectator]
tellraw @a[tag=UHCP_Spectator] [{"text":"You are spectating the current match.","color":"gray"}]
tag @a remove UHCP_Spectator
