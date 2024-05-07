function uhcp:settings/pages/augments
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 1..5 run return run function uhcp:settings/augments/tier
execute if score @s uhcp_settings matches 6..13 run return run function uhcp:settings/augments/ra_stacks
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 14..15 run function uhcp:settings/augments/patrons
