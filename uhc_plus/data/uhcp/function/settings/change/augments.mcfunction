# Determine setting
function uhcp:settings/pages/augments

execute if score @s uhcp_settings matches 1..5 run return run execute unless score %game uhcp_initStatus matches 1 run function uhcp:settings/augments/tier
execute if score @s uhcp_settings matches 6..13 run return run function uhcp:settings/augments/ra_stacks
execute if score @s uhcp_settings matches 14..15 unless score %game uhcp_initStatus matches 1 run function uhcp:settings/augments/patrons
