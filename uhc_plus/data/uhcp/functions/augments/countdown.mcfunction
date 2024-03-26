#>  uhcp:augments/countdown
#   Counts down during augment selection
#   When the countdown ends, augment selection ends and the game begins
#
# @within  uhcp:augments/autoselect
# @within  uhcp:augments/optionselected

scoreboard players remove %augment_countdown uhcp_game_time 1
execute if score %augment_countdown uhcp_game_time matches ..890 as @a[gamemode=adventure] at @s run ride @s mount @e[tag=UHCP_Lock,distance=..2,sort=nearest,limit=1]
execute if score %augment_countdown uhcp_game_time matches 880 as @a[gamemode=adventure] at @s run forceload remove ~ ~

# Spawn armor stand if there are none near the player
execute if score %augment_countdown uhcp_game_time matches 101..895 as @a[gamemode=adventure] at @s unless entity @e[tag=UHCP_Lock,distance=..2] run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}

# If all players selected an augment, skip to 5 seconds left
execute if score %augment_countdown uhcp_game_time matches 101.. unless entity @a[gamemode=adventure,tag=UHCP_ChoosingItem] run scoreboard players set %augment_countdown uhcp_game_time 100
execute store result bossbar uhcp_augment value run scoreboard players get %augment_countdown uhcp_game_time

# If < 5 seconds, stop function
execute if score %augment_countdown uhcp_game_time matches 101.. run return 0

# Countdown noise
execute if score %augment_countdown uhcp_game_time matches 100 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 80 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 60 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 40 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 20 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 1 run function uhcp:augments/countdown/1

execute if score %augment_countdown uhcp_game_time matches 0.. run return 0

# Ran once countdown reaches 0. Initializes the game as UHC Pack would've done, and gives all players their selected augments
scoreboard players set %time uhcp_initStatus 1

gamemode survival @a[gamemode=adventure]
bossbar set minecraft:uhcp_augment players
execute in uhcp:main run tp @e[tag=UHCP_Lock] 0 -63 0

effect clear @a[gamemode=survival]
effect give @a[gamemode=survival] minecraft:speed 15 0 false
effect give @a[gamemode=survival] minecraft:resistance 120 4 false
execute as @a[gamemode=survival] run attribute @s minecraft:player.block_break_speed modifier add 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce "" 1.2 add_multiplied_total
effect give @a[gamemode=survival] minecraft:night_vision infinite 0 true

execute as @a[gamemode=survival] at @s run function uhcp:augments/countdown/end
