# Initial logic
execute unless score %uhcp_init uhcp_initStatus matches 1.. if score stage status matches 2 run function uhcp:init

# Display Time
execute if score %time uhcp_gameTime matches 1.. run function uhcp:timer/update_displaytimer

# Game start
execute if score countdown tick matches 0 run function uhcp:start

# Lava
execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. run function uhcp:lava/run

# Crafting
execute if entity @a[tag=UHCP_Craft] run function uhcp:crafting/item/determine

# Player compass
execute unless score %uhcp_compassTime uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:compass/player_compass/hand,gamemode=survival] run function uhcp:player_compass
execute unless score %uhcp_compassTime uhcp_itemCount matches ..0 run scoreboard players remove %uhcp_compassTime uhcp_itemCount 1

# Hunger effect
execute unless score %h_max uhcp_settings matches -100 if score %uhcp_hungerInit uhcp_initStatus matches 1.. as @a at @s run function uhcp:hunger/update
scoreboard players enable @a hunger
execute as @a at @s if score @s hunger matches 1.. unless score %uhcp_hungerInit uhcp_initStatus matches 1.. run function uhcp:hunger/init
execute as @a at @s if score @s hunger matches 1.. if score %uhcp_hungerInit uhcp_initStatus matches 1.. run function uhcp:hunger/disable

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
scoreboard players enable @a menu
execute as @a at @s if score @s menu matches 1.. run function uhcp:settings/menu

# Timers
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run scoreboard players add %time uhcp_gameTime 1
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

# Augments
execute as @e[predicate=uhcp:augments/birdfeather] at @s run function uhcp:augments/effects/gold/birdsofafeather/teleport
execute as @e[type=bee,tag=UHCP_Bee] at @s run function uhcp:augments/effects/gold/beekeeper/update

# Augment Countdown
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 0.. run function uhcp:augments/countdown
function uhcp:augments/effects/timer

# Close dimensions
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:dimensions/run

# Disable Ender Pearl Damage
execute as @e[type=minecraft:ender_pearl] at @s run function uhcp:enderpearl
