#>  uhcp:augments/countdown
#   Counts down during augment selection
#   When the countdown ends, augment selection ends and the game begins
#
# @within  uhcp:tick

scoreboard players remove %augment_countdown uhcp_game_time 1
execute if score %augment_countdown uhcp_game_time matches ..890 as @a[gamemode=adventure] at @s run ride @s mount @n[tag=UHCP_Lock,distance=..2]
execute if score %augment_countdown uhcp_game_time matches 880 as @a[gamemode=adventure] at @s run forceload remove ~ ~

# Spawn armor stand if there are none near the player
execute if score %augment_countdown uhcp_game_time matches 101..895 as @a[gamemode=adventure] at @s unless entity @e[tag=UHCP_Lock,distance=..2] run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}

# If all players selected an augment, skip to 5 seconds left
execute if score %augment_countdown uhcp_game_time matches 101.. unless entity @a[gamemode=adventure,tag=UHCP_ChoosingItem] run scoreboard players set %augment_countdown uhcp_game_time 100
execute store result bossbar uhcp:augment value run scoreboard players get %augment_countdown uhcp_game_time

# If < 5 seconds, stop function
execute if score %augment_countdown uhcp_game_time matches 101.. run return 0

# Countdown noise
execute if score %augment_countdown uhcp_game_time matches 100 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 80 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 60 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 40 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 20 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %augment_countdown uhcp_game_time matches 1 as @a[gamemode=adventure] unless score @s uhcp_augment = @s uhcp_augment at @s run function uhcp:augments/auto_select

execute if score %augment_countdown uhcp_game_time matches 1.. run return 0

# Runs once countdown reaches 0; initializes the game
scoreboard players set %time uhcp_initStatus 1

gamemode survival @a[gamemode=adventure]
bossbar set uhcp:augment players
execute as @a[gamemode=survival] run ride @s dismount
execute in uhcp:main run tp @e[tag=UHCP_Lock] 0 -63 0

effect clear @a[gamemode=survival]
effect give @a[gamemode=survival] minecraft:speed 15 0 false
effect give @a[gamemode=survival] minecraft:resistance 120 4 false
execute as @a[gamemode=survival] run attribute @s minecraft:block_break_speed modifier add uhcp:block_break_speed 1.2 add_multiplied_total
execute if score %night_vision uhcp_settings matches 1 run effect give @a[gamemode=survival] minecraft:night_vision infinite 0 true
execute if entity @a[scores={uhcp_augment=25}] run function uhcp:augments/effects/gold/scavengerhunt/init

# Recipes and advancements
function uhcp:start/advancements/reset_all

# Announce augments
tag @a add UHCP_AugmentAnnounce

execute if entity @a[scores={uhcp_augment=0..99}] run function uhcp:augments/announce/gold
execute if entity @a[scores={uhcp_augment=100..199}] run function uhcp:augments/announce/silver
execute if entity @a[scores={uhcp_augment=200..299}] run function uhcp:augments/announce/prismatic

tag @a remove UHCP_AugmentAnnounce

# Finish player initialization 
execute as @a[gamemode=survival] at @s run function uhcp:augments/countdown/end
