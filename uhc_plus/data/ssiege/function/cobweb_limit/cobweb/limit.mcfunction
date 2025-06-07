# Remove excess cobwebs over limit
execute if score @s ssiege_cobwebCount <= @s uhcp_initStatus run return run function ssiege:cobweb_limit/cobweb/all
scoreboard players operation @s ssiege_cobwebCount -= @s uhcp_initStatus

scoreboard players set %stack ssiege_cobwebCount 64
scoreboard players operation %limit ssiege_cobwebCount = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus /= %stack ssiege_cobwebCount
execute if score @s uhcp_initStatus matches 1.. run function ssiege:cobweb_limit/cobweb/stack

scoreboard players operation %limit ssiege_cobwebCount %= %stack ssiege_cobwebCount

tag @s add ssiege_cobwebLimit
summon minecraft:item ~ ~ ~ {Tags:["ssiege_New"],PickupDelay:40s,Item:{id:"minecraft:cobweb"}}
execute as @n[tag=ssiege_New] run function ssiege:cobweb_limit/cobweb/count

function ssiege:cobweb_limit/end/late
