# Manage new player
execute unless score %game uhcp_initStatus matches 1 run function uhcp:left/lobby
execute if score %game uhcp_initStatus matches 1 run function uhcp:left/spectator

# New player message
execute unless score %game uhcp_initStatus matches 1 run tellraw @s [{"text":"[","color":"white"},{"text":"U","color":"#1921FF"},{"text":"H","color":"#3D8BFF"},{"text":"C","color":"#59B7FF"},{"text":"+","color":"#85EFFF"},{"text":"]\n","color":"white"},{"text":"Welcome to UHC+!","color":"gray"},{"text":" Right click","color":"white"},{"text":" the items in your inventory to\nprepare for the upcoming game.","color":"gray"}]

# Give basic recipes
advancement grant @a from minecraft:recipes/root
advancement grant @a only uhcp:base_recipes

# Finish
scoreboard players reset @s uhcp_leave
tag @s add UHCP_Player
