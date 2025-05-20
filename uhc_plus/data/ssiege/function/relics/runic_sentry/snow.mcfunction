# Determine movement
execute if block ~ ~ ~ minecraft:snow[layers=1] run return run tp @s ~ ~ ~

tag @s add UHCP_Snow
execute store result score @s uhcp_itemInv run data get entity @s Pos[1] 1000
scoreboard players operation @s uhcp_itemCount = @s uhcp_itemInv
scoreboard players remove @s uhcp_itemInv 100
scoreboard players set %const uhcp_initStatus 1000
scoreboard players operation @s uhcp_initStatus = @s uhcp_itemInv
scoreboard players operation @s uhcp_initStatus %= %const uhcp_initStatus
scoreboard players operation @s uhcp_itemInv -= @s uhcp_initStatus
execute store result score @s uhcp_initStatus run function uhcp:relics/runic_sentry/snow/layers
scoreboard players operation @s uhcp_itemInv += @s uhcp_initStatus
execute if score @s uhcp_itemCount < @s uhcp_itemInv run return run function uhcp:relics/runic_sentry/snow/direct_pos
execute if score @s uhcp_itemCount = @s uhcp_itemInv run return run scoreboard players reset @s uhcp_itemCount

# Lower sentry
scoreboard players operation @s uhcp_initStatus = @s uhcp_itemCount
scoreboard players operation @s uhcp_itemCount -= @s uhcp_itemInv
execute if score @s uhcp_itemCount matches ..100 run return run function uhcp:relics/runic_sentry/snow/direct_pos

# Directly set position
scoreboard players operation @s uhcp_itemInv = @s uhcp_initStatus
scoreboard players operation @s uhcp_initStatus = @s uhcp_itemCount
scoreboard players set %const uhcp_initStatus 100
scoreboard players operation @s uhcp_initStatus %= %const uhcp_initStatus
scoreboard players operation @s uhcp_itemCount -= @s uhcp_initStatus
scoreboard players operation @s uhcp_itemInv -= @s uhcp_initStatus
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s uhcp_itemInv
