# Dimension-specific commands
execute in minecraft:the_end run function uhcp:start/dimensions/minecraft/the_end
execute in minecraft:the_nether run function uhcp:start/dimensions/minecraft/the_nether
execute in minecraft:overworld run function uhcp:start/dimensions/minecraft/overworld
execute in uhcp:hell run forceload remove all
execute in uhcp:main run function uhcp:start/dimensions/uhcp/main

# Prepare Spectators
tag @a[scores={uhcp_ready=2}] add UHCP_Spectator
tag @a[tag=UHCP_Died] add UHCP_Spectator

# Set scores
scoreboard players operation %titans uhcp_initStatus = %titans uhcp_settings
scoreboard players reset %start_countdown
scoreboard players set %game uhcp_initStatus 1
scoreboard players set %time uhcp_initStatus 0
scoreboard players set %time_freeze uhcp_initStatus 0
scoreboard players set %end uhcp_initStatus 0
scoreboard players set %day uhcp_initStatus 0
scoreboard players operation %border_countdown uhcp_game_time = %border_countdown uhcp_settings
scoreboard players set %border_stage uhcp_itemCount 0
execute if score %dimension uhcp_settings matches ..-1 run scoreboard players set %dimension uhcp_settings 0
execute as @a unless score @s uhcp_aug_patron = @s uhcp_aug_patron run scoreboard players set @s uhcp_aug_patron 8
scoreboard players set %AUG_7 uhcp_game_time 2400
scoreboard players set %AUG_15 uhcp_game_time 2400
scoreboard players set %AUG_27 uhcp_game_time 12000
scoreboard players set %AUG_107 uhcp_game_time 6000
scoreboard players set %AUG_138 uhcp_game_time 1200
scoreboard players set %AUG_203 uhcp_game_time 1200
scoreboard players set %AUG_238 uhcp_game_time 12000
scoreboard players set %AUG_244 uhcp_game_time 1200
execute store result score %random uhcp_game_ID run random value 0..3
execute if score %random uhcp_game_ID matches 0 store result score %global uhcp_game_ID run random value -2147483648..-1073741825
execute if score %random uhcp_game_ID matches 1 store result score %global uhcp_game_ID run random value -1073741824..-1
execute if score %random uhcp_game_ID matches 2 store result score %global uhcp_game_ID run random value 0..1073741823
execute if score %random uhcp_game_ID matches 3 store result score %global uhcp_game_ID run random value 1073741824..2147483647
scoreboard players operation @a uhcp_game_ID = %global uhcp_game_ID

# Store border size
scoreboard players operation %border_size_retain uhcp_settings = %border_size uhcp_settings

# Store border countdown
scoreboard players operation %border_countdown_retain uhcp_settings = %border_countdown uhcp_settings

# Store border shrink speed
scoreboard players operation %border_shrink_speed_retain uhcp_settings = %border_shrink_speed uhcp_settings

# Store dimension countdown
scoreboard players operation %dimension_retain uhcp_settings = %dimension uhcp_settings

# Store PvP Grace Period countdown
scoreboard players operation %pvp_retain uhcp_settings = %pvp uhcp_settings

# Store lava countdown
scoreboard players operation %lava_countdown_retain uhcp_settings = %lava_countdown uhcp_settings

# Store team values
scoreboard players operation %team_size_retain uhcp_settings = %team_size uhcp_settings
scoreboard players operation %team_retain uhcp_settings = %team uhcp_settings
scoreboard players operation %players_select_teams_retain uhcp_settings = %players_select_teams uhcp_settings

# Display statistics
scoreboard players display numberformat %display uhcp_game_display fixed {"text":"0:00"}
scoreboard players operation %border uhcp_game_display = %border_size uhcp_settings
execute store result score %players uhcp_game_display if entity @a[tag=!UHCP_Spectator]
execute if score %players uhcp_game_display matches 6.. run scoreboard players display numberformat %players uhcp_game_display styled {"color":"white"}
execute if score %players uhcp_game_display matches ..5 run scoreboard players display numberformat %players uhcp_game_display styled {"color":"red"}
scoreboard objectives setdisplay sidebar uhcp_game_display

# Recipes and advancements
advancement revoke @a from minecraft:adventure/root
advancement revoke @a from minecraft:end/root
advancement revoke @a from minecraft:husbandry/root
advancement revoke @a from minecraft:nether/root
advancement revoke @a from minecraft:recipes/root
advancement revoke @a from minecraft:story/root
advancement revoke @a only uhcp:base_recipes
advancement grant @a from minecraft:recipes/root
advancement grant @a only uhcp:base_recipes
# Revoke all special augment recipes here.

# Reset scoreboards
scoreboard players reset @a lobby
scoreboard players reset @a patron
scoreboard players reset @a team
scoreboard players reset @a top
scoreboard players reset @a uhcp_aug_gloryOfRa
scoreboard players reset @a uhcp_augment
scoreboard players reset @a uhcp_aug_tier
scoreboard players reset @a uhcp_arrowCount
scoreboard players reset @a uhcp_bee_stacks
scoreboard players reset %time uhcp_game_time
scoreboard players reset @a uhcp_aug_hb_killedCreeper
scoreboard players reset @a uhcp_aug_hb_killedSkeleton
scoreboard players reset @a uhcp_aug_hb_killedSpider
scoreboard players reset @a uhcp_aug_hb_killedZombie
scoreboard players reset @a uhcp_id
scoreboard players reset @a uhcp_ready
scoreboard players reset @a uhcp_lobby_item
scoreboard players reset %global uhcp_id
scoreboard players reset @a uhcp_leave
scoreboard players reset @a uhcp_top_CD
scoreboard players reset @a uhcp_wolf_stacks

# Remove tags
tag @a remove UHCP_Creeper
tag @a remove UHCP_Skeleton
tag @a remove UHCP_Spider
tag @a remove UHCP_Zombie
tag @a remove UHCP_MilkBucket
tag @a remove UHCP_RelicTestingChamber
tag @a remove UHCP_SoulflameEmbrace

# Set difficulty
execute unless score %difficulty uhcp_settings matches 1.. run function uhcp:start/difficulty/easy
execute if score %difficulty uhcp_settings matches 1 run function uhcp:start/difficulty/normal
execute if score %difficulty uhcp_settings matches 2 run function uhcp:start/difficulty/hard

# Friendly fire
execute unless score %friendly_fire uhcp_settings matches 1 run function uhcp:start/friendly_fire/off
execute if score %friendly_fire uhcp_settings matches 1 run function uhcp:start/friendly_fire/on

# Set world border size
execute store result storage uhcp:border distance int 1 run scoreboard players get %border_size uhcp_settings
function uhcp:start/border with storage uhcp:border

# Allow one-player games to not end
execute store result score %players uhcp_initStatus if entity @a[tag=!UHCP_Spectator]
execute if score %players uhcp_initStatus matches ..1 run scoreboard players set %end uhcp_initStatus 1

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
execute as @a at @s run tp @s ~ ~300 ~

# Remove lobby
execute in minecraft:overworld run function uhcp:lobby/remove

# Spread players
scoreboard players operation %spread uhcp_initStatus = %border_size uhcp_settings
scoreboard players set %const uhcp_initStatus 7
scoreboard players operation %spread uhcp_initStatus /= %const uhcp_initStatus
scoreboard players set %const uhcp_initStatus 3
scoreboard players operation %spread uhcp_initStatus *= %const uhcp_initStatus
execute store result storage uhcp:border max_range int 1 run scoreboard players get %spread uhcp_initStatus

scoreboard players set %const uhcp_initStatus 10
scoreboard players operation %spread uhcp_initStatus /= %const uhcp_initStatus
execute store result storage uhcp:border spread_distance int 1 run scoreboard players get %spread uhcp_initStatus

execute in minecraft:overworld run function uhcp:start/spreadplayers/initial with storage uhcp:border
execute if score %spread uhcp_initStatus matches 0 in minecraft:overworld run function uhcp:start/spreadplayers/initial/failure_1 with storage uhcp:border
execute if score %spread uhcp_initStatus matches 0 in minecraft:overworld run function uhcp:start/spreadplayers/initial/failure_2

execute if score %spread uhcp_initStatus matches 1 run function uhcp:start/spreadplayers/secondary

# Augment Selection
execute unless score %tier uhcp_aug_tier = %tier uhcp_aug_tier store result score %tier uhcp_aug_tier run random value 10..109
execute if score %random uhcp_aug_tier matches 1 store result score %tier uhcp_aug_tier run random value 10..109
execute if score %tier uhcp_aug_tier matches 10..34 run scoreboard players set %tier uhcp_aug_tier 0
execute if score %tier uhcp_aug_tier matches 35..89 run scoreboard players set %tier uhcp_aug_tier 1
execute if score %tier uhcp_aug_tier matches 90..109 run scoreboard players set %tier uhcp_aug_tier 2

# Effects
effect clear @a
effect give @a[tag=!UHCP_Spectator] minecraft:regeneration 10 5 true
effect give @a[tag=!UHCP_Spectator] minecraft:resistance infinite 5 true
effect give @a[tag=!UHCP_Spectator] minecraft:saturation infinite 255 true
effect give @a[tag=!UHCP_Spectator] minecraft:weakness infinite 4 true
effect give @a minecraft:night_vision infinite 0 true

# Reset attribute modifiers
execute as @a run function uhcp:reset/attributes

# Grant players +20 health
execute as @a[tag=!UHCP_Spectator] run attribute @s minecraft:generic.max_health modifier add 5ae70886-031a-42b7-aa86-783c9536c746 "" 20 add_value

# Reset experience
experience set @a 0 levels
experience set @a 0 points

# Assign player IDs
execute as @a run function uhcp:start/id/assign
scoreboard players operation %players uhcp_id = %global uhcp_id

# Solo leveling
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

# Titan Bossbars
execute as @a run function uhcp:titans/bossbar/create

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
scoreboard players set %augment_countdown uhcp_game_time 900
bossbar set uhcp:augment players @a
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/augments

# Spectators
clear @a[tag=UHCP_Spectator]
tp @a[tag=UHCP_Spectator] 0 150 0
gamemode spectator @a[tag=UHCP_Spectator]
tellraw @a[tag=UHCP_Spectator] [{"text":"You are spectating the current match.","color":"gray"}]
tag @a remove UHCP_Spectator
