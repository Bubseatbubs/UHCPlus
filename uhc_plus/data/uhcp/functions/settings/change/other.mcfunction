function uhcp:settings/pages/other/1
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 300..307 run function uhcp:settings/other/dimensions
execute if score @s uhcp_settings matches 308..310 run function uhcp:settings/other/difficulty
execute if score @s uhcp_settings matches 311..318 run function uhcp:settings/other/titans