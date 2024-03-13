function uhcp:settings/pages/player/1
execute if score @s uhcp_settings matches 400..407 run function uhcp:settings/player/arrow_limit
execute if score @s uhcp_settings matches 408..415 run function uhcp:settings/player/golden_apple
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 416..423 run function uhcp:settings/player/pvp