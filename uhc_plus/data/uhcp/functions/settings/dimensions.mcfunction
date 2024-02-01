# Determine setting
execute unless score %uhcp_dimTime uhcp_gameTime matches -2147483648..2147483647 run scoreboard players set %uhcp_dimTime uhcp_gameTime 72000
execute if score @s uhcp_settings matches 400..403 run function uhcp:settings/dimensions/lower
execute if score @s uhcp_settings matches 404..407 run function uhcp:settings/dimensions/raise
