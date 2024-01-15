# Initial logic
execute unless score %uhcp_init uhcp_initStatus matches 1.. if score stage status matches 2 run function uhcp:init

# Send message after game starts
execute if score countdown tick matches -20 run function uhcp:start

# Lava
execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. run function uhcp:lava/run

# Hunger effect
execute unless score %h_max uhcp_settings matches -100 if score %uhcp_hungerInit uhcp_initStatus matches 1.. as @a at @s run function uhcp:hunger/update
execute as @a at @s if score @s uhcp_hunger matches 0.. run function uhcp:hunger/init

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
scoreboard players enable @a uhcp_menu
execute as @a at @s if score @s uhcp_menu matches 0.. run function uhcp:settings/menu

# Timer
execute unless score %uhcp_hungerInit uhcp_initStatus matches 1.. if score %h_set uhcp_settings matches 0 if score %uhcp_init uhcp_initStatus matches 1.. run scoreboard players add %timer uhcp_gameTime 1
execute if score %timer uhcp_gameTime matches 48000.. run function uhcp:hunger/init