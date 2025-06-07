# Check if player is over cobweb limit
execute store result score @s uhcp_initStatus run clear @s minecraft:cobweb 0
execute if score @s uhcp_initStatus <= %cobweb_limit uhcp_settings run return run advancement revoke @s only uhcp:cobweb_limit

scoreboard players operation @s uhcp_initStatus -= %cobweb_limit uhcp_settings
scoreboard players set @s uhcp_leave 1000

# Remove excess cobwebs
scoreboard players set %stack uhcp_arrowCount 64
scoreboard players operation %limit uhcp_arrowCount = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus /= %stack uhcp_arrowCount
execute if score @s uhcp_initStatus matches 1.. run function uhcp:cobweb_limit/stack

scoreboard players operation %limit uhcp_arrowCount %= %stack uhcp_arrowCount
execute if score %limit uhcp_arrowCount matches 0 run return run function uhcp:cobweb_limit/end

# Following stacks
tag @s add UHCP_CobwebLimit
summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:cobweb"}}
execute as @n[tag=UHCP_New] run function uhcp:cobweb_limit/count

# End
tag @s remove UHCP_CobwebLimit
function uhcp:cobweb_limit/end
