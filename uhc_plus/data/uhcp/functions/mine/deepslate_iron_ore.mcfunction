# Grant experience orbs
scoreboard players remove @s uhcp_mine_dIronOre 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/iron_ingot

execute if score @s uhcp_mine_dIronOre matches ..0 run return fail
function uhcp:mine/deepslate_iron_ore
