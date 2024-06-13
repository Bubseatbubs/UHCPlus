# Grant experience orbs
scoreboard players remove @s uhcp_mine_rawIronBlock 1

execute at @s run function uhcp:mine/item/iron_block

execute if score @s uhcp_mine_rawIronBlock matches 1.. run function uhcp:mine/raw_iron_block
