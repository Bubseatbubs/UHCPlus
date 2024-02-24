# Determine setting
execute unless score %uhcp_dimTime uhcp_gameTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_dimTime uhcp_gameTime = %uhcp_dimTimeDef uhcp_gameTime
execute if score @s uhcp_settings matches 600..603 run function uhcp:settings/dimensions/lower
execute if score @s uhcp_settings matches 604..607 run function uhcp:settings/dimensions/raise
