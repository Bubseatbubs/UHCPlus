function uhcp:settings/pages/augments/1
execute unless score %game uhcp_initStatus matches 1.. if score @s uhcp_settings matches 1..4 run function uhcp:settings/augments/tier
execute if score @s uhcp_settings matches 5..12 run function uhcp:settings/augments/ra_stacks