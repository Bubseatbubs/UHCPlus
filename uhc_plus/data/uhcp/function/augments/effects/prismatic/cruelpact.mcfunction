# Lower health by 34 if possible, otherwise lower to 1
execute store result score @s uhcp_aug_count run attribute @s minecraft:max_health get 1000000
scoreboard players operation @s uhcp_initStatus = @s uhcp_aug_count
scoreboard players remove @s uhcp_initStatus 34000000
execute if score @s uhcp_initStatus matches ..999999 run scoreboard players set @s uhcp_initStatus 1000000
scoreboard players operation @s uhcp_initStatus -= @s uhcp_aug_count
execute store result storage uhcp:augments CatLady.value double 0.000001 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/prismatic/cruelpact/max_health/damage with storage uhcp:augments CatLady

# Effects
particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 1 0.5 1

# Prepare to revert max health
tag @s add UHCP_CPHeal
scoreboard players set @s uhcp_aug_time 1200
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 2
