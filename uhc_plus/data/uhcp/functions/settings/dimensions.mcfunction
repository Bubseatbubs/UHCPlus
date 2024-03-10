# Determine setting
execute unless score %dimension uhcp_settings matches -2147483648..2147483647 run scoreboard players operation %dimension uhcp_settings = %dimension_def uhcp_settings
execute if score @s uhcp_settings matches 600..603 run function uhcp:settings/dimensions/lower
execute if score @s uhcp_settings matches 604..607 run function uhcp:settings/dimensions/raise
