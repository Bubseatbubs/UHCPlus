# Initial soul apple item
tag @s add UHCP_Summon
tag @s add UHCP_SoulApple
data modify entity @s Glowing set value 1b
loot replace entity @s contents loot uhcp:consumables/soul_apple
tag @s remove UHCP_New
