# Grant experience orbs
scoreboard players remove @s uhcp_mine_rawGoldBlock 1

execute at @s run function uhcp:mine/item/gold_block

execute if score @s uhcp_mine_rawGoldBlock matches ..0 run return fail
function uhcp:mine/raw_gold_block
