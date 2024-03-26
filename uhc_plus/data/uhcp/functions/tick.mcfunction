# Initial logic
execute unless score %init uhcp_initStatus matches 1.. run function uhcp:init

# Manage players
execute as @a[tag=!UHCP_Player] run function uhcp:new
execute as @a[scores={uhcp_leave=1..}] run function uhcp:left

# After time starts moving
execute if score %time uhcp_initStatus matches 1 run function uhcp:time

# Display time
execute if score %game uhcp_initStatus matches 1 run function uhcp:timer/update_display

# Lava
execute if score %lava_start uhcp_initStatus matches 1 run function uhcp:lava/run

# Player compass
execute unless score %compass_time uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:compass/player_compass/hand,gamemode=survival] run function uhcp:compass/determine
execute unless score %compass_time uhcp_itemCount matches ..0 run scoreboard players remove %compass_time uhcp_itemCount 1

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
function uhcp:settings/tick

# Top Command
execute if entity @a[scores={top=1..}] run function uhcp:top/validate
execute as @a if score @s uhcp_topDelay matches 1.. at @s run function uhcp:top/finish
scoreboard players remove @a[scores={uhcp_topCD=1..}] uhcp_topCD 1
execute as @a[tag=uhcp_isTeleporting] at @s run execute unless entity @e[type=minecraft:marker,tag=uhcp_topCheck,distance=..1] run function uhcp:top/cancel

# Top Chargeup
execute as @a[tag=uhcp_isTeleporting] at @s run function uhcp:top/updatecharge
execute if entity @a[scores={top=1..}] run function uhcp:top/validate

# Testkit
execute as @a if score @s testkit matches 1.. run function uhcp:testkit

# Death
execute as @a[scores={uhcp_death=1..}] at @s run function uhcp:kill/death

# Ate Golden Apple Effect
execute as @a[tag=UHCP_AteApple,gamemode=survival] run function uhcp:augments/effects/golden_apple/update

# Augments
execute if entity @e[tag=UHCP_SLBlock] run function uhcp:augments/effects/prismatic/sololeveling/interact/revert
execute as @a[scores={uhcp_lavaTimeInterval=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound
execute as @a[scores={uhcp_lavaMaxHeight=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/return

# Augment Countdown
execute if score %augment_countdown uhcp_gameTime matches 0.. run function uhcp:augments/countdown

# Patron
execute unless score %game uhcp_initStatus matches 1 run scoreboard players enable @a patron
execute as @a if score @s patron matches 1..99 run function uhcp:lobby/patron/menu
execute as @a at @s if score @s patron matches 100..109 run function uhcp:lobby/patron/select

# Team
execute unless score %game uhcp_initStatus matches 1 run scoreboard players enable @a team
execute as @a if score @s team matches 1..99 run function uhcp:lobby/team/menu
execute as @a at @s if score @s team matches 100..115 run function uhcp:lobby/team/select

# Update Summoned Entities
execute as @e[tag=UHCP_Summon] at @s run function uhcp:entity/update

# Relics
execute as @e[type=minecraft:arrow,tag=!UHCP_BoomburstInit,predicate=uhcp:relics/boomburst/arrow] run function uhcp:relics/boomburst/initialize
execute as @e[type=minecraft:arrow,predicate=uhcp:relics/boomburst/arrow_in_ground] at @s run function uhcp:relics/boomburst/explode_inground
execute as @e[predicate=uhcp:relics/hit_by_boomburst] at @s if entity @e[tag=UHCP_BoomburstDisplay,distance=..4] run function uhcp:relics/boomburst/explode_onhit
execute as @e[predicate=uhcp:relics/smooth_getaway/hitbox_hurt] at @s run function uhcp:relics/smooth_getaway/hurt

# Disable Ender Pearl Damage
execute as @e[type=minecraft:ender_pearl] at @s run function uhcp:entity/ender_pearl

# Titans
execute as @e[tag=UHCP_Titan] at @s run function uhcp:titans/update

# Instant pickup items
execute as @e[tag=!UHCP_ItemPickup,predicate=uhcp:items/instant_pickup] run function uhcp:entity/items/instant_pickup

# Item use timer
scoreboard players remove @a[scores={uhcp_itemCount=1..}] uhcp_itemCount 1
