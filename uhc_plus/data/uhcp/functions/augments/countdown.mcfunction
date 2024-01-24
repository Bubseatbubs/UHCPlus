scoreboard players remove %uhcp_augmentCountdown uhcp_gameTime 1
execute as @a[gamemode=adventure] at @s run ride @s mount @e[tag=UHCP_Lock,limit=1,sort=nearest]
execute store result bossbar uhcp_augment value run scoreboard players get %uhcp_augmentCountdown uhcp_gameTime

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 101.. run return 0

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 100 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 80 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 60 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 40 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 20 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 0.. run return 0

execute as @a[gamemode=adventure] at @s run ride @s dismount
gamemode survival @a[gamemode=adventure]
execute as @a[gamemode=survival] unless score @s uhcp_a_validSelection = @s uhcp_a_validSelection run function uhcp:augments/autoselect
bossbar set minecraft:uhcp_augment players
kill @e[tag=UHCP_Lock]

execute as @a[gamemode=survival] at @s run function uhcp:augments/initializeaugments