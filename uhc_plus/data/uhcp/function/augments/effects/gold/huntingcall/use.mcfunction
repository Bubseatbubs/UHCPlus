advancement revoke @s only uhcp:augments/used_goat_horn
execute unless score @s uhcp_augment matches 12 run return 0
scoreboard players set @s uhcp_itemCount 6

# When run before cooldown is up
execute if score @s uhcp_timer matches 1.. run function uhcp:augments/effects/gold/huntingcall/timer
execute if score @s uhcp_timer matches 0.. run return 0

# Hunting Call Effect
# Assign team scoreboards
scoreboard players set @a[distance=..151] uhcp_initStatus 0
execute as @a[distance=..151,gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

tag @s add UHCP_HuntingCall
effect give @s minecraft:speed 20 0 false
execute as @a[distance=..150,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_HuntingCall] uhcp_initStatus run effect give @s minecraft:glowing 20 0 true
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"selector":"@s","color":"blue"},{"text":" used","color":"white"},{"text":" Hunting Call","color":"gold"},{"text":"!","color":"white"}]

scoreboard players set @s uhcp_timer 3600
tag @s remove UHCP_HuntingCall
