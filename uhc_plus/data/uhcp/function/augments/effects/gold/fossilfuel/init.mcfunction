# Count bones
scoreboard players set @s uhcp_game_time -1
scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_initStatus run clear @s minecraft:bone
scoreboard players reset @s uhcp_leave
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:augments/effects/gold/fossilfuel/failure

# Apply speed (30s/bone)
execute store result storage uhcp:augments FossilFuel.seconds int 30 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/fossilfuel/speed with storage uhcp:augments FossilFuel

# Effects
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
particle minecraft:small_gust ~ ~ ~ 0.5 1 0.5 0.1 100 normal
particle minecraft:effect ~ ~ ~ 0.5 1 0.5 0.01 50 normal
