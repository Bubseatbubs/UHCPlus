# Remove all arrows over limit from arrows
scoreboard players operation %limit uhcp_arrowCount = @s uhcp_arrowCount
scoreboard players operation @s uhcp_arrowCount /= #64 uhcp_const
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/arrow/all/stack

scoreboard players operation %limit uhcp_arrowCount %= #64 uhcp_const
execute if score %limit uhcp_arrowCount matches 0 run return run function uhcp:arrow_limit/end/early

tag @s add UHCP_ArrowLimit
summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:arrow"}}
execute as @n[tag=UHCP_New] run function uhcp:arrow_limit/arrow/count

function uhcp:arrow_limit/end/late
