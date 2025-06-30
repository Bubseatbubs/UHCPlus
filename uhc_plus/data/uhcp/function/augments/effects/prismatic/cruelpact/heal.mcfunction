# Finish healing process
execute as @s[tag=UHCP_CPHeal] run return run function uhcp:augments/effects/prismatic/cruelpact/max_health/reset
scoreboard players set @s uhcp_initStatus 3000000

# Add time
scoreboard players operation @s uhcp_game_time /= #1200 uhcp_const
scoreboard players add @s uhcp_game_time 1
scoreboard players operation @s uhcp_game_time *= #1200 uhcp_const
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/silver/crazycatlady/multiplier

# Full health already (no healing needed)
execute store result score @s uhcp_aug_stack run data get entity @s Health 1000000
execute store result score @s uhcp_aug_time run attribute @s minecraft:max_health get 1000000
execute if score @s uhcp_aug_stack >= @s uhcp_aug_time run return fail

# Effects
particle minecraft:happy_villager ~ ~ ~ 1 1.5 1 0.1 10 normal @s
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

# Fully heal
scoreboard players operation @s uhcp_initStatus += @s uhcp_aug_stack
execute if score @s uhcp_initStatus >= @s uhcp_aug_time run return run effect give @s minecraft:instant_health 1 9 true

# Partially heal
scoreboard players operation @s uhcp_initStatus -= @s uhcp_aug_time
execute store result score @s uhcp_aug_time run attribute @s minecraft:max_health get 100
scoreboard players operation @s uhcp_initStatus /= @s uhcp_aug_time
execute store result storage uhcp:augments CatLady.multiplier double 0.0001 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/silver/crazycatlady/max_health/heal with storage uhcp:augments CatLady
effect give @s minecraft:instant_health 1 9 true

# Prepare to reset max health
scoreboard players operation @s uhcp_aug_time = @s uhcp_game_time
scoreboard players operation @s uhcp_game_time -= %time uhcp_game_time
execute if score @s uhcp_game_time matches ..2 run scoreboard players add @s uhcp_aug_time 3
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 2
tag @s add UHCP_CPHeal
