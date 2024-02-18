# Start game
scoreboard players reset %time uhcp_gameTime
scoreboard players reset @a uhcp_a_gloryOfRa
scoreboard players reset @a uhcp_a_selectedAugment
scoreboard players reset @a uhcp_a_tier
scoreboard players reset @a uhcp_topCD
scoreboard players set %uhcp_gameStart uhcp_initStatus 1
scoreboard players reset @a uhcp_arrowCount
scoreboard players set %AUG_7 uhcp_gameTime 2400
scoreboard players set %AUG_15 uhcp_gameTime 2400
scoreboard players set %AUG_27 uhcp_gameTime 12000
scoreboard players set %AUG_107 uhcp_gameTime 6000
scoreboard players set %AUG_203 uhcp_gameTime 1200
scoreboard players set %AUG_238 uhcp_gameTime 12000
execute if score %uhcp_dimTime uhcp_gameTime matches ..-1 run scoreboard players set %uhcp_dimTime uhcp_gameTime 0

# Default Patrons
execute as @a unless score @s uhcp_a_patron = @s uhcp_a_patron run scoreboard players set @s uhcp_a_patron 8

scoreboard players reset @a uhcp_hb_killedCreeper
scoreboard players reset @a uhcp_hb_killedZombie
scoreboard players reset @a uhcp_hb_killedSkeleton
scoreboard players reset @a uhcp_hb_killedSpider
tag @a remove UHCP_Creeper
tag @a remove UHCP_Skeleton
tag @a remove UHCP_Spider
tag @a remove UHCP_Zombie

scoreboard objectives setdisplay sidebar uhcp_gameDisplay
scoreboard objectives setdisplay below_name hearts

# Determine worldborder size
execute if score TotalWorldSize setting matches 1000 run function uhcp:start/worldborder/1000
execute if score TotalWorldSize setting matches 1500 run function uhcp:start/worldborder/1500
execute if score TotalWorldSize setting matches 2000 run function uhcp:start/worldborder/2000
execute if score TotalWorldSize setting matches 2500 run function uhcp:start/worldborder/2500
execute if score TotalWorldSize setting matches 3000 run function uhcp:start/worldborder/3000
execute if score TotalWorldSize setting matches 4000 run function uhcp:start/worldborder/4000
execute if score TotalWorldSize setting matches 5000 run function uhcp:start/worldborder/5000
execute if score TotalWorldSize setting matches 7000 run function uhcp:start/worldborder/7000
execute if score TotalWorldSize setting matches 10000 run function uhcp:start/worldborder/10000

# Random day/night start
execute if score daynite status matches 1 run function uhcp:start/randomtime/determine

# Reset UHC Pack Timer to sync up
scoreboard players set marker tick 0

# Add everyone not on team to solo team
execute if entity @a[predicate=uhcp:teams/neither] run function uhcp:start/teams

# Spreadplayers logic
execute if score teamgame status matches 0 in minecraft:overworld run function uhcp:start/spreadplayers/solo
execute unless score teamgame status matches 0 in minecraft:overworld run function uhcp:start/spreadplayers/teams

# Kill items
kill @e[type=minecraft:item]

# Augment Selection
execute unless score %tier uhcp_a_tier = %tier uhcp_a_tier store result score %tier uhcp_a_tier run random value 10..109
execute if score %random uhcp_a_tier matches 1 store result score %tier uhcp_a_tier run random value 10..109
execute if score %tier uhcp_a_tier matches 10..34 run scoreboard players set %tier uhcp_a_tier 0
execute if score %tier uhcp_a_tier matches 35..89 run scoreboard players set %tier uhcp_a_tier 1
execute if score %tier uhcp_a_tier matches 90..109 run scoreboard players set %tier uhcp_a_tier 2

# Reset attribute modifiers
execute as @a run function uhcp:attributes_reset

# Solo leveling
scoreboard players set @a uhcp_a_tier 0
tag @a remove UHCP_SLUpg
tag @a remove UHCP_SLAxe
tag @a remove UHCP_SLBoots
tag @a remove UHCP_SLBow
tag @a remove UHCP_SLChest
tag @a remove UHCP_SLHelm
tag @a remove UHCP_SLHoe
tag @a remove UHCP_SLLegs
tag @a remove UHCP_SLPick
tag @a remove UHCP_SLShovel
tag @a remove UHCP_SLSword

# Augments
scoreboard players reset @a uhcp_a_leave
scoreboard players set %uhcp_augmentCountdown uhcp_gameTime 900
bossbar set uhcp_augment players @a
scoreboard players set %uhcp_augments uhcp_initStatus 1
execute as @a run function uhcp:start/augments
