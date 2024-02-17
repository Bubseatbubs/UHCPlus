#Reset 
title @a title {"text":"UHC: RESET!","color":"red"}
scoreboard objectives setdisplay sidebar
playsound minecraft:entity.husk.converted_to_zombie master @a ~ ~ ~ 1000000 0 1
execute in minecraft:overworld run fill -13 300 13 13 305 -13 minecraft:air
execute in minecraft:overworld run setworldspawn 0 68 0
execute in minecraft:overworld run worldborder set 59000000
execute in minecraft:the_end run worldborder set 59000000
execute in minecraft:the_nether run worldborder set 59000000
execute in minecraft:overworld run worldborder damage buffer 5
execute in minecraft:the_end run worldborder damage buffer 5
execute in minecraft:the_nether run worldborder damage buffer 5
execute in minecraft:overworld run gamerule sendCommandFeedback true
execute in minecraft:the_end run gamerule sendCommandFeedback true
execute in minecraft:the_nether run gamerule sendCommandFeedback true

scoreboard objectives remove tick 
scoreboard objectives remove status 
scoreboard objectives remove setting 
scoreboard objectives remove hearts 
scoreboard objectives remove teams 
scoreboard objectives remove death 
scoreboard objectives remove gore 
scoreboard objectives remove iore 
scoreboard objectives remove core
scoreboard objectives remove diore
scoreboard objectives remove dgore
scoreboard objectives remove dcore
scoreboard objectives remove debris 
scoreboard objectives remove phantom 
scoreboard objectives remove cow 
scoreboard objectives remove pig 
scoreboard objectives remove sheep 
scoreboard objectives remove chicken 
scoreboard objectives remove water 
scoreboard objectives remove team
scoreboard objectives remove stew 
scoreboard objectives remove options 
scoreboard objectives remove timedeath 
scoreboard objectives remove rawcopper
scoreboard objectives remove rawiron
scoreboard objectives remove rawgold
scoreboard players set @a ch_toggleConst 0

clear @a
effect give @a minecraft:regeneration 5 255 true
execute in minecraft:overworld run time set 0
execute in minecraft:overworld run tp 0 200 0
# datapack enable "file/pregen"
effect clear @a
kill @e[tag=lobbycenter]
kill @e[tag=lobby]
gamemode creative @s

execute in minecraft:overworld run gamerule doWeatherCycle true
execute in minecraft:overworld run gamerule doDaylightCycle true
execute in minecraft:overworld run weather rain 2
execute in minecraft:overworld run time set 0
execute as @a at @s run attribute @s minecraft:generic.max_health base set 20

team remove 1
team remove 2
team remove 3
team remove 4
team remove 5
team remove 6
team remove 7
team remove 8
team remove 9
team remove 10
team remove 11
team remove 12
team remove 13
team remove 14
team remove 15
team remove 16
team remove 17
team remove 18
team remove 19
team remove 20
team remove 21
team remove 22
team remove 23
team remove 24
team remove 25
team remove 26
team remove 27
team remove 28
team remove 29
team remove 30
team remove 31
team remove 32
team remove 33
team remove 34
team remove 35
team remove 36
team remove 37
team remove 38
team remove 39
team remove 40
team remove 41
team remove 42
team remove 43
team remove 44
team remove 45
team remove 46
team remove 47
team remove 48
team remove 49
team remove 50
team remove info
team remove info1

team remove crimson
team remove ice
team remove meaniegreeny
team remove fire
team remove barbie
team remove celeste
team remove riptide
team remove fire
team remove netherite
team remove royalnavy
team remove bastion
team remove dangerdanger
team remove boom
team remove bling

xp set @a 0 levels
xp set @a 0 points

datapack disable "file/cook"
datapack disable "file/disable_god_apple"
datapack disable "file/flower"
datapack disable "file/lvl2pots"
datapack disable "file/pregen"
datapack disable "file/regenpots"

# UHC Plus
data remove storage uhcp:compass Track
scoreboard players reset %uhcp_gameStart uhcp_initStatus
scoreboard players reset %hunger_timer uhcp_gameTime
scoreboard players reset @a uhcp_topCD
scoreboard players reset @a hunger
scoreboard players reset @a top
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1 run scoreboard players set %uhcp_lava uhcp_gameTime 48000
scoreboard players set %uhcp_dimTime uhcp_gameTime 48000
scoreboard objectives setdisplay sidebar
