# Determine movement
tag @s add UHCP_Carpet
execute store result score @s uhcp_itemInv run data get entity @s Pos[1] 10000
scoreboard players operation @s uhcp_itemCount = @s uhcp_itemInv
scoreboard players remove @s uhcp_itemInv 1000
scoreboard players set %const uhcp_initStatus 10000
scoreboard players operation @s uhcp_initStatus = @s uhcp_itemInv
scoreboard players operation @s uhcp_initStatus %= %const uhcp_initStatus
scoreboard players operation @s uhcp_itemInv -= @s uhcp_initStatus
scoreboard players add @s uhcp_itemInv 625
execute if score @s uhcp_itemCount < @s uhcp_itemInv run return run function uhcp:relics/runic_sentry/carpet/direct_pos
execute if score @s uhcp_itemCount = @s uhcp_itemInv run return run scoreboard players reset @s uhcp_itemCount

# Lower sentry
scoreboard players operation @s uhcp_initStatus = @s uhcp_itemCount
scoreboard players operation @s uhcp_itemCount -= @s uhcp_itemInv
execute if score @s uhcp_itemCount matches ..1000 run return run function uhcp:relics/runic_sentry/carpet/direct_pos

# Directly set position
scoreboard players operation @s uhcp_itemInv = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus = @s uhcp_itemCount
scoreboard players set %const uhcp_initStatus 1000
scoreboard players operation @s uhcp_initStatus %= %const uhcp_initStatus
scoreboard players operation @s uhcp_itemCount -= @s uhcp_initStatus
scoreboard players operation @s uhcp_itemInv -= @s uhcp_initStatus
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s uhcp_itemInv
