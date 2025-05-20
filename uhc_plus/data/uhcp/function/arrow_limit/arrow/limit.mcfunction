# Remove excess arrows over limit
execute if score @s uhcp_arrowCount <= @s uhcp_initStatus run return run function uhcp:arrow_limit/arrow/all
scoreboard players operation @s uhcp_arrowCount -= @s uhcp_initStatus

scoreboard players set %stack uhcp_arrowCount 64
scoreboard players operation %limit uhcp_arrowCount = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus /= %stack uhcp_arrowCount
execute if score @s uhcp_initStatus matches 1.. run function uhcp:arrow_limit/arrow/stack

scoreboard players operation %limit uhcp_arrowCount %= %stack uhcp_arrowCount
execute if score %limit uhcp_arrowCount matches 0 run return run function uhcp:arrow_limit/spectral/limit

tag @s add UHCP_ArrowLimit
summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:arrow"}}
execute as @n[tag=UHCP_New] run function uhcp:arrow_limit/arrow/count

# Check player for spectral arrows
execute store result score @s uhcp_initStatus run clear @s minecraft:spectral_arrow 0
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:arrow_limit/end/late

# Remove excess spectral arrows over limit
execute if score @s uhcp_arrowCount <= @s uhcp_initStatus run return run function uhcp:arrow_limit/spectral/all/late

scoreboard players set %stack uhcp_arrowCount 64
scoreboard players operation %limit uhcp_arrowCount = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus /= %stack uhcp_arrowCount
execute if score @s uhcp_initStatus matches 1.. run function uhcp:arrow_limit/spectral/stack

scoreboard players operation %limit uhcp_arrowCount %= %stack uhcp_arrowCount
execute if score %limit uhcp_arrowCount matches 0 run return run function uhcp:arrow_limit/end/late

summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:spectral_arrow"}}
execute as @n[tag=UHCP_New] run function uhcp:arrow_limit/spectral/count

function uhcp:arrow_limit/end/late
