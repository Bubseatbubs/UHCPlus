# Grant experience orbs
scoreboard players remove @s uhcp_mine_ironOre 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/iron_ingot

execute if score @s uhcp_mine_ironOre matches 1.. run function uhcp:mine/iron_ore
