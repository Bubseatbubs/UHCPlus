##
# Countdown for selecting an augment
##

scoreboard players remove %uhcp_augmentCountdown uhcp_gameTime 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches ..890 as @a[gamemode=adventure] at @s run ride @s mount @e[tag=UHCP_Lock,distance=..2,sort=nearest,limit=1]
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 880 as @a[gamemode=adventure] at @s run forceload remove ~ ~

# Spawn armor stand if there are none near the player
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 101..895 as @a[gamemode=adventure] at @s unless entity @e[tag=UHCP_Lock,distance=..2] run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}

# If all players selected an augment, skip to 5 seconds left
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 101.. unless entity @a[gamemode=adventure,tag=UHCP_ChoosingItem] run scoreboard players set %uhcp_augmentCountdown uhcp_gameTime 100
execute store result bossbar uhcp_augment value run scoreboard players get %uhcp_augmentCountdown uhcp_gameTime

# Clear leave scoreboard
scoreboard players reset @a[tag=UHCP_ChoosingItem] uhcp_a_leave

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 101.. run return 0

# Countdown noise
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 100 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 80 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 60 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 40 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 20 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 1 run function uhcp:augments/countdown/1

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 0.. run return 0

# Ran once countdown reaches 0. Initializes the game as UHC Pack would've done, and gives all players their selected augments
gamemode survival @a[gamemode=adventure]
bossbar set minecraft:uhcp_augment players
execute in uhcp:main run tp @e[tag=UHCP_Lock] 0 -63 0

execute as @a[gamemode=survival] at @s run function uhcp:augments/countdown/end

