# Grant experience orbs
scoreboard players remove @s uhcp_mine_dGoldOre 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/gold_ingot

execute if score @s uhcp_mine_dGoldOre matches ..0 run return fail
function uhcp:mine/deepslate_gold_ore
