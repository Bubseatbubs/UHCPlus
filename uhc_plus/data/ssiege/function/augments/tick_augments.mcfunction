# Called from ssiege/function/time

# AFK augment
execute if score %time uhcp_game_time matches ..3599 as @a[scores={uhcp_augment=300},gamemode=survival] at @s run ride @s mount @n[tag=UHCP_AFKLock,distance=..15]

# Solo leveling
execute as @a[scores={uhcp_lava_timeInterval=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound
execute as @a[scores={uhcp_lava_maxHeight=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/return

# Exalted Adventure
execute as @a[scores={uhcp_augment=503,exalted=1}] at @s run function ssiege:augments/effects/prismatic/exalted_adventure/announce/init
scoreboard players enable @a[scores={uhcp_augment=503}] exalted

# Blood Diamonds
execute as @a[scores={uhcp_augment=304}] run function ssiege:augments/effects/gold/blood_diamonds/clear_diamonds

# Bottled Knowledge
execute as @a[scores={uhcp_augment=306}] run function ssiege:augments/effects/gold/bottledknowledge/levelcheck

# Copper Collector
execute as @a[scores={uhcp_augment=309}] run function ssiege:augments/effects/gold/copper_collector

# Diamonds in the Rough
execute as @a[scores={uhcp_augment=312}] run function ssiege:augments/effects/gold/diamondsintherough

# Cram Session
execute as @a[scores={uhcp_augment=311}] run function ssiege:augments/effects/gold/cramsession/levelcheck

# Earthbender
execute as @a[scores={uhcp_augment=314}] run function ssiege:augments/effects/gold/earthbender/replace_dirt

# Last Stand
execute as @a[scores={uhcp_augment=331}] run function ssiege:augments/effects/gold/laststand

# Late Game Specialist
execute as @a[scores={uhcp_augment=332}] run function ssiege:augments/effects/gold/lategamespecialist/levelcheck

# Hunting Call
scoreboard players remove @e[tag=UHCP_HuntingCall,scores={uhcp_itemCount=1..}] uhcp_itemCount 1

# Late Looter
execute as @a[scores={uhcp_augment=333}] run function ssiege:augments/effects/gold/latelooter/update

# Prop Hunt
execute if entity @a[predicate=uhcp:augments/prop_hunt/player] run function uhcp:augments/effects/silver/prophunt/tick

# Slime Time
execute as @a[scores={uhcp_augment=356},gamemode=survival] at @s run function ssiege:augments/effects/gold/slime_time/trail

# Res Tier Player
execute as @a[scores={uhcp_augment=502}] run function ssiege:augments/effects/prismatic/res_tier_remove_shield

# Open the Gates - kinda ehhhh about this implementation lol
execute as @a[scores={uhcp_augment=563}] if items entity @s weapon.mainhand minecraft:recovery_compass[minecraft:custom_data~{uhcp_gate:1b}] at @s run function ssiege:augments/effects/gold/gates/laser/init
execute as @a[scores={uhcp_augment=563}] if items entity @s weapon.offhand minecraft:recovery_compass[minecraft:custom_data~{uhcp_gate:1b}] at @s run function ssiege:augments/effects/gold/gates/laser/init

execute as @a[scores={uhcp_augment=341}] if items entity @s weapon.mainhand minecraft:recovery_compass[minecraft:custom_data~{uhcp_gate:1b}] at @s run function ssiege:augments/effects/gold/gates/laser/init
execute as @a[scores={uhcp_augment=341}] if items entity @s weapon.offhand minecraft:recovery_compass[minecraft:custom_data~{uhcp_gate:1b}] at @s run function ssiege:augments/effects/gold/gates/laser/init


# Goldenless Apples
execute as @a[scores={uhcp_augment=537}] at @s run function ssiege:augments/effects/prismatic/goldenless_apples/effect

# Expose Weakness
execute as @a[scores={ssiege_exposed=1..}] run function ssiege:augments/effects/exposed/update

# Cybernetic Download
execute as @a[scores={uhcp_augment=513},tag=CD_SelectingUpgrade] run function ssiege:augments/effects/prismatic/cybernetic_download/update
scoreboard players enable @a[scores={uhcp_augment=513}] upgrade

# Buried Treasure
execute as @a[scores={uhcp_augment=518}] run function ssiege:augments/effects/prismatic/buried_treasures/mined_ore

# Hungry for Blood
execute as @a[scores={uhcp_augment=529}] run function ssiege:augments/effects/prismatic/hungry_for_blood

# An Exalted Adventure
execute as @a[scores={uhcp_augment=503}] run function ssiege:augments/effects/prismatic/exalted_adventure/check_items/update

# Babysitting augment - Sniffer modifier
function ssiege:augments/effects/gold/babysitting/sniffcd