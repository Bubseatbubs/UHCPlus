# Grant experience orbs
scoreboard players remove @s uhcp_mine_copperOre 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/copper_ingot

execute if score @s uhcp_mine_copperOre matches 1.. run function uhcp:mine/copper_ore
