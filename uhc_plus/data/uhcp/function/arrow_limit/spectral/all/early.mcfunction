# Remove remaining arrows over limit from spectral arrows
scoreboard players operation %limit uhcp_arrowCount = @s uhcp_arrowCount
scoreboard players operation @s uhcp_arrowCount /= #64 uhcp_const
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/spectral/all/stack

scoreboard players operation %limit uhcp_arrowCount %= #64 uhcp_const
execute if score %limit uhcp_arrowCount matches 0 run return run function uhcp:arrow_limit/end/early

tag @s add UHCP_ArrowLimit
summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:spectral_arrow"}}
execute as @n[tag=UHCP_New] run function uhcp:arrow_limit/spectral/count

function uhcp:arrow_limit/end/late
