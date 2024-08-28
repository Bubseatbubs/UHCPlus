# Assign team scoreboards
scoreboard players set @a[distance=..151] uhcp_initStatus 0
execute as @a[distance=..151,gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Apply effects
effect give @s minecraft:speed 20 0 false
execute as @a[distance=..150,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @a[tag=UHCP_HCallCurrent,limit=1] uhcp_initStatus run effect give @s minecraft:glowing 20 0 true
execute at @s run stopsound @a[tag=!UHCP_HCallCurrent,distance=64..] record minecraft:item.goat_horn.sound.0
execute as @a[tag=!UHCP_HCallCurrent,distance=64..] at @s run playsound minecraft:item.goat_horn.sound.0 record @s ~ ~ ~ 1 1 1
tellraw @a [{"selector":"@s","color":"blue"},{"text":" used","color":"white"},{"text":" Hunting Call","color":"gold"},{"text":"!","color":"white"}]

# Remove tag
tag @s remove UHCP_HCallCurrent
