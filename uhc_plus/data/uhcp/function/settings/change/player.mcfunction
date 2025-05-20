# Determine setting
execute if score @s uhcp_settings matches 400..407 run return run function uhcp:settings/player/arrow_limit
function uhcp:settings/pages/player
execute if score @s uhcp_settings matches 408..415 run return run function uhcp:settings/player/soul_apple
execute if score @s uhcp_settings matches 416..423 run return run execute unless score %game uhcp_initStatus matches 1 run function uhcp:settings/player/pvp
execute if score @s uhcp_settings matches 426..427 run return run execute unless score %game uhcp_initStatus matches 1 run function uhcp:settings/player/night_vision
execute if score @s uhcp_settings matches 428..429 run function uhcp:settings/player/ender_pearl
