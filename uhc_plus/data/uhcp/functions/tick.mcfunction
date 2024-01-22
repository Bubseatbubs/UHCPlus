# Initial logic
execute unless score %uhcp_init uhcp_initStatus matches 1.. if score stage status matches 2 run function uhcp:init

# Game start
execute if score countdown tick matches 0 run function uhcp:start

# Lava
execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. run function uhcp:lava/run

# Player compass
execute as @a[tag=UHCP_Compass] at @s run function uhcp:compass/item/adjust
execute unless score %uhcp_compassTime uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:compass/player_compass/hand,gamemode=survival] run function uhcp:compass
execute unless score %uhcp_compassTime uhcp_itemCount matches ..0 run scoreboard players remove %uhcp_compassTime uhcp_itemCount 1

# All-seeing eye
execute as @a[tag=UHCP_EnderEye] at @s run function uhcp:glow/item/adjust

# Hunger effect
execute unless score %h_max uhcp_settings matches -100 if score %uhcp_hungerInit uhcp_initStatus matches 1.. as @a at @s run function uhcp:hunger/update
scoreboard players enable @a hunger
execute as @a at @s if score @s hunger matches 1.. unless score %uhcp_hungerInit uhcp_initStatus matches 1.. run function uhcp:hunger/init
execute as @a at @s if score @s hunger matches 1.. if score %uhcp_hungerInit uhcp_initStatus matches 1.. run function uhcp:hunger/disable

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
scoreboard players enable @a menu
execute as @a at @s if score @s menu matches 1.. run function uhcp:settings/menu

# Timer
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run scoreboard players add %uhcp_time uhcp_gameTime 1
execute unless score %uhcp_hungerInit uhcp_initStatus matches 1.. if score %h_set uhcp_settings matches 0 if score %uhcp_init uhcp_initStatus matches 1.. run scoreboard players add %hunger_timer uhcp_gameTime 1
execute unless score %uhcp_hungerInit uhcp_initStatus matches 1.. if score %hunger_timer uhcp_gameTime matches 48000..50000 as @a run function uhcp:hunger/init

# Top Command
scoreboard players enable @a top
execute as @a at @s if score @s top matches 1.. run function uhcp:top/check
execute as @a at @s if score @s uhcp_topDelay matches 1.. run function uhcp:top/finish
execute as @a if score @s uhcp_topCD matches 1.. run scoreboard players remove @s uhcp_topCD 1
execute as @a[tag=uhcp_isTeleporting] at @s run execute unless entity @e[type=marker,tag=uhcp_topCheck,distance=..1] run function uhcp:top/cancel

# Top Chargeup
execute as @a[tag=uhcp_isTeleporting] at @s run function uhcp:top/updatecharge
