# Grant experience orbs
scoreboard players remove @s uhcp_mine_dCopperOre 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/copper_ingot

execute if score @s uhcp_mine_dCopperOre matches 1.. run function uhcp:mine/deepslate_copper_ore
