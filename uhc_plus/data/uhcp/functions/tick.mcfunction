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

# Hunger system
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:hunger

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
scoreboard players enable @a menu
execute as @a at @s if score @s menu matches 1.. run function uhcp:settings/menu

# Announce Augments
scoreboard players enable @a augments
execute as @a if score @s augments matches 1.. run function uhcp:augments/announceaugments

# Timer
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run scoreboard players add %time uhcp_gameTime 1

# Top Command
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run scoreboard players enable @a top
execute if entity @a[scores={top=1..}] run function uhcp:top/validate
execute as @a if score @s uhcp_topDelay matches 1.. at @s run function uhcp:top/finish
scoreboard players remove @a[scores={uhcp_topCD=1..}] uhcp_topCD 1
execute as @a[tag=uhcp_isTeleporting] at @s run execute unless entity @e[type=minecraft:marker,tag=uhcp_topCheck,distance=..1] run function uhcp:top/cancel

# Top Chargeup
execute as @a[tag=uhcp_isTeleporting] at @s run function uhcp:top/updatecharge

# Death
execute as @a[scores={uhcp_death=1..}] at @s run function uhcp:augments/effects/death

# Augments
execute as @e[predicate=uhcp:augments/birdfeather] at @s run function uhcp:augments/effects/gold/birdsofafeather/teleport
execute as @e[type=minecraft:bee,tag=UHCP_Bee] at @s run function uhcp:augments/effects/gold/beekeeper/update
execute as @e[tag=UHCP_Saber] at @s run function uhcp:augments/effects/gold/radiantrelics/soulflamesaber/update
execute as @e[tag=UHCP_Voltrune] at @s run function uhcp:augments/effects/gold/radiantrelics/voltrune/update
execute as @e[tag=UHCP_Temp,type=armor_stand] run function uhcp:augments/effects/gold/radiantrelics/gravitysmasher/update
execute as @e[tag=UHCP_GoldBlock,type=armor_stand] run function uhcp:augments/effects/gold/radiantrelics/theharvester/update
execute as @e[tag=UHCP_SCloneStand,type=armor_stand] at @s run function uhcp:augments/effects/gold/radiantrelics/shadowclone/update
execute as @a[scores={uhcp_lavaTimeInterval=1..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound
execute as @a[scores={uhcp_lavaMaxHeight=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/return
execute if entity @e[tag=UHCP_SLBlock] run function uhcp:augments/effects/prismatic/sololeveling/interact/revert

# Augment Countdown/Functions
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. unless score %uhcp_augmentCountdown uhcp_gameTime matches 0.. as @a[tag=UHCP_ChoosingItem,scores={uhcp_a_leave=1..}] run function uhcp:augments/left
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 0.. run function uhcp:augments/countdown
function uhcp:augments/effects/timer

# Close dimensions
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:dimensions/run

# Disable Ender Pearl Damage
execute as @e[type=minecraft:ender_pearl] at @s run function uhcp:enderpearl

# Remove three below and temp predicate when in pack format with new advancements
scoreboard players reset @a[predicate=uhcp:temp] uhcp_anvil
scoreboard players reset @a[predicate=uhcp:temp] uhcp_grindstone
scoreboard players reset @a[predicate=uhcp:temp] uhcp_smithingTable
# -----------------------------------------------------------
