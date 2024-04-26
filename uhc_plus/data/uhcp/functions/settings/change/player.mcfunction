function uhcp:settings/pages/player/1
execute if score @s uhcp_settings matches 400..407 run function uhcp:settings/player/arrow_limit
execute if score @s uhcp_settings matches 408..415 run function uhcp:settings/player/soul_apple
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 416..423 run function uhcp:settings/player/pvp
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 426..427 run function uhcp:settings/player/night_vision
