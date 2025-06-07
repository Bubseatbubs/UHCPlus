# Remove all arrows over limit from arrows
scoreboard players set @s uhcp_initStatus 64
scoreboard players operation %limit ssiege_cobwebCount = @s ssiege_cobwebCount
scoreboard players operation @s ssiege_cobwebCount /= @s uhcp_initStatus
execute if score @s ssiege_cobwebCount matches 1.. run function ssiege:cobweb_limit/cobweb/all/stack

scoreboard players operation %limit ssiege_cobwebCount %= @s uhcp_initStatus
execute if score %limit ssiege_cobwebCount matches 0 run return run function ssiege:cobweb_limit/end/early

tag @s add ssiege_cobwebLimit
summon minecraft:item ~ ~ ~ {Tags:["ssiege_New"],PickupDelay:40s,Item:{id:"minecraft:cobweb"}}
execute as @n[tag=ssiege_New] run function ssiege:cobweb_limit/cobweb/count

function ssiege:cobweb_limit/end/late
