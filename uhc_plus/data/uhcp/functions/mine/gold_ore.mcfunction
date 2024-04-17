# Grant experience orbs
scoreboard players remove @s uhcp_mine_goldOre 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/gold_ingot

execute if score @s uhcp_mine_goldOre matches ..0 run return fail
function uhcp:mine/gold_ore
