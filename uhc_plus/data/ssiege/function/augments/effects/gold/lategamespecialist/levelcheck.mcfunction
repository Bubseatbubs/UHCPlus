# Store current XP level in temporary score
execute as @s store result score @s uhcp_initStatus run data get entity @s XpLevel

# If lvl >= 20, give the stuff
execute as @s[tag=!SSIEGE_AugmentTriggered] run execute if score @s uhcp_initStatus matches 20.. run function ssiege:augments/effects/gold/lategamespecialist/give

