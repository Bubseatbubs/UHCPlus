# Check if player is over arrow limit
execute store result score @s uhcp_arrowCount run clear @s #minecraft:arrows 0
execute store result score @s uhcp_initStatus run function uhcp:arrow_limit/maximum
execute if score @s uhcp_arrowCount <= @s uhcp_initStatus run return run advancement revoke @s only uhcp:arrow_limit

scoreboard players operation @s uhcp_arrowCount -= @s uhcp_initStatus
scoreboard players set @s uhcp_leave 1000

# Check for arrows
execute store result score @s uhcp_initStatus run clear @s minecraft:arrow 0
execute unless score @s uhcp_initStatus matches 0 run return run function uhcp:arrow_limit/arrow/limit

# Remove excess spectral arrows over limit
execute store result score @s uhcp_initStatus run clear @s minecraft:spectral_arrow 0
execute if score @s uhcp_arrowCount <= @s uhcp_initStatus run return run function uhcp:arrow_limit/spectral/all/early

scoreboard players operation %limit uhcp_arrowCount = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus /= #64 uhcp_const
execute if score @s uhcp_initStatus matches 1.. run function uhcp:arrow_limit/spectral/stack

scoreboard players operation %limit uhcp_arrowCount %= #64 uhcp_const
execute if score %limit uhcp_arrowCount matches 0 run return run function uhcp:arrow_limit/end/early

tag @s add UHCP_ArrowLimit
summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:spectral_arrow"}}
execute as @n[tag=UHCP_New] run function uhcp:arrow_limit/spectral/count

function uhcp:arrow_limit/end/late
