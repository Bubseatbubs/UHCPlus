# Grant experience orbs
scoreboard players remove @s uhcp_mine_rawCopperBlock 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/copper_block

execute if score @s uhcp_mine_rawCopperBlock matches 1.. run function uhcp:mine/raw_copper_block
