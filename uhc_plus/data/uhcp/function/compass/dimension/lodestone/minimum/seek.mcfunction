# Search at upper and lower limits
scoreboard players operation %compass_height uhcp_itemInv += %compass_jump uhcp_itemInv

execute store result storage uhcp:compass Current.check int 1 run scoreboard players get %compass_height uhcp_itemInv
execute store success score %compass_bool uhcp_itemInv run function uhcp:compass/dimension/lodestone/clone with storage uhcp:compass Current
execute if score %compass_bool uhcp_itemInv matches 1 run return run function uhcp:compass/dimension/lodestone/minimum/hit

scoreboard players remove %compass_stage uhcp_itemInv 1
execute if score %compass_stage uhcp_itemInv matches 1.. run return run function uhcp:compass/dimension/lodestone/minimum/seek
