execute store result score @s uhcp_arrowCount run clear @s minecraft:arrow 0

execute store result score %limit uhcp_arrowCount run function uhcp:arrow_limit/maximum
execute if score @s uhcp_arrowCount <= %limit uhcp_arrowCount run return run advancement revoke @s only uhcp:arrow_limit

scoreboard players set @s uhcp_initStatus 64
scoreboard players operation @s uhcp_arrowCount -= %limit uhcp_arrowCount
scoreboard players operation %extra_stacks uhcp_arrowCount = @s uhcp_arrowCount
scoreboard players operation %extra_stacks uhcp_arrowCount /= @s uhcp_initStatus
scoreboard players operation %limit uhcp_arrowCount = %extra_stacks uhcp_arrowCount
execute if score %limit uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/remove/stack

scoreboard players operation @s uhcp_arrowCount %= @s uhcp_initStatus
scoreboard players operation %limit uhcp_arrowCount = @s uhcp_arrowCount
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/remove/single

execute if score %extra_stacks uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/summon/arrow_stack
execute if score %limit uhcp_arrowCount matches 1.. at @s run function uhcp:arrow_limit/summon/arrow

advancement revoke @s only uhcp:arrow_limit
