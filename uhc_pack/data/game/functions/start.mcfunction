#Start Game
scoreboard objectives setdisplay sidebar.team.black hearts
scoreboard objectives setdisplay sidebar


#World setting
execute if score TotalWorldSize setting matches 1000 run worldborder set 1000
execute if score TotalWorldSize setting matches 1500 run worldborder set 1500
execute if score TotalWorldSize setting matches 2000 run worldborder set 2000
execute if score TotalWorldSize setting matches 2500 run worldborder set 2500
execute if score TotalWorldSize setting matches 3000 run worldborder set 3000
execute if score TotalWorldSize setting matches 4000 run worldborder set 4000
execute if score TotalWorldSize setting matches 5000 run worldborder set 5000
execute if score TotalWorldSize setting matches 7000 run worldborder set 7000
execute if score TotalWorldSize setting matches 10000 run worldborder set 10000


#Random day/night start
execute if score daynite status matches 1 run execute if score daydice tick matches 1 run time set 0
execute if score daynite status matches 1 run execute if score daydice tick matches 2 run time set 1000
execute if score daynite status matches 1 run execute if score daydice tick matches 3 run time set 2000
execute if score daynite status matches 1 run execute if score daydice tick matches 4 run time set 3000
execute if score daynite status matches 1 run execute if score daydice tick matches 5 run time set 4000
execute if score daynite status matches 1 run execute if score daydice tick matches 6 run time set 5000
execute if score daynite status matches 1 run execute if score daydice tick matches 7 run time set 6000
execute if score daynite status matches 1 run execute if score daydice tick matches 8 run time set 7000
execute if score daynite status matches 1 run execute if score daydice tick matches 9 run time set 8000
execute if score daynite status matches 1 run execute if score daydice tick matches 10 run time set 9000
execute if score daynite status matches 1 run execute if score daydice tick matches 11 run time set 10000
execute if score daynite status matches 1 run execute if score daydice tick matches 12 run time set 11000
execute if score daynite status matches 1 run execute if score daydice tick matches 13 run time set 12000
execute if score daynite status matches 1 run execute if score daydice tick matches 14 run time set 13000
execute if score daynite status matches 1 run execute if score daydice tick matches 15 run time set 14000
execute if score daynite status matches 1 run execute if score daydice tick matches 16 run time set 15000
execute if score daynite status matches 1 run execute if score daydice tick matches 17 run time set 16000
execute if score daynite status matches 1 run execute if score daydice tick matches 18 run time set 17000
execute if score daynite status matches 1 run execute if score daydice tick matches 19 run time set 18000
execute if score daynite status matches 1 run execute if score daydice tick matches 20 run time set 19000
execute if score daynite status matches 1 run execute if score daydice tick matches 21 run time set 20000
execute if score daynite status matches 1 run execute if score daydice tick matches 22 run time set 21000
execute if score daynite status matches 1 run execute if score daydice tick matches 23 run time set 22000
execute if score daynite status matches 1 run execute if score daydice tick matches 24 run time set 23000
execute if score daynite status matches 1 run execute if score daydice tick matches 25 run time set 0

#Game Settings
execute if score weather status matches 1 in minecraft:overworld run gamerule doWeatherCycle true
execute if score weather status matches 1 in minecraft:the_nether run gamerule doWeatherCycle true
execute if score weather status matches 1 in minecraft:overworld run weather rain 2s
execute if score weather status matches 0 in minecraft:overworld run gamerule doWeatherCycle false
execute if score weather status matches 0 in minecraft:the_nether run gamerule doWeatherCycle false
execute if score weather status matches 0 in minecraft:overworld run weather clear
execute if score weather status matches 0 in minecraft:the_nether run weather clear
# Why is there no check for daylight cycle?
# Seems strange that this is not an option when weather cycle is. -Aidan
execute in minecraft:overworld run gamerule doDaylightCycle true
scoreboard players set @a ch_toggleConst 1

gamemode survival @a
clear @a
execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:the_end run gamerule naturalRegeneration false
execute in minecraft:the_nether run gamerule naturalRegeneration false

#Nametags Toggle
execute if score nametags status matches 1 run function game:options/nametags_on

#Clear Lobby
fill -13 299 13 13 305 -13 air
kill @e[tag=lobbycenter]
kill @e[tag=lobby]
recipe give @a *

team join 1 @r[team=]
team join 2 @r[team=]
team join 3 @r[team=]
team join 4 @r[team=]
team join 5 @r[team=]
team join 6 @r[team=]
team join 7 @r[team=]
team join 8 @r[team=]
team join 9 @r[team=]
team join 10 @r[team=]
team join 11 @r[team=]
team join 12 @r[team=]
team join 13 @r[team=]
team join 14 @r[team=]
team join 15 @r[team=]
team join 16 @r[team=]
team join 17 @r[team=]
team join 18 @r[team=]
team join 19 @r[team=]
team join 20 @r[team=]
team join 21 @r[team=]
team join 22 @r[team=]
team join 23 @r[team=]
team join 24 @r[team=]
team join 25 @r[team=]
team join 26 @r[team=]
team join 27 @r[team=]
team join 28 @r[team=]
team join 29 @r[team=]
team join 30 @r[team=]
team join 31 @r[team=]
team join 32 @r[team=]
team join 33 @r[team=]
team join 34 @r[team=]
team join 35 @r[team=]
team join 36 @r[team=]
team join 37 @r[team=]
team join 38 @r[team=]
team join 39 @r[team=]
team join 40 @r[team=]
team join 41 @r[team=]
team join 42 @r[team=]
team join 43 @r[team=]
team join 44 @r[team=]
team join 45 @r[team=]
team join 46 @r[team=]
team join 47 @r[team=]
team join 48 @r[team=]
team join 49 @r[team=]
team join 50 @r[team=]

scoreboard objectives remove team

#Starter tools
#execute if score tools status matches 1 run give @a minecraft:stone_sword
#execute if score tools status matches 1 run give @a minecraft:stone_axe
#execute if score tools status matches 1 run give @a minecraft:stone_pickaxe
#execute if score tools status matches 1 run give @a minecraft:stone_hoe
#execute if score tools status matches 1 run give @a minecraft:stone_shovel
#execute if score tools status matches 1 run give @a minecraft:torch 8

# Moved to uhcp:start
#Spreadplayers
#execute if score TotalWorldSize setting matches 1000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 400 true @a
#execute if score TotalWorldSize setting matches 1500 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 700 true @a
#execute if score TotalWorldSize setting matches 2000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 900 true @a
#execute if score TotalWorldSize setting matches 2500 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 1200 true @a
#execute if score TotalWorldSize setting matches 3000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 1400 true @a
#execute if score TotalWorldSize setting matches 4000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 1900 true @a
#execute if score TotalWorldSize setting matches 5000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 2400 true @a
#execute if score TotalWorldSize setting matches 7000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 3400 true @a
#execute if score TotalWorldSize setting matches 10000 run execute if score teamgame status matches 1 run spreadplayers 0 0 100 4900 true @a

#execute if score TotalWorldSize setting matches 1000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 400 false @a
#execute if score TotalWorldSize setting matches 1500 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 700 false @a
#execute if score TotalWorldSize setting matches 2000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 900 false @a
#execute if score TotalWorldSize setting matches 2500 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 1200 false @a
#execute if score TotalWorldSize setting matches 3000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 1400 false @a
#execute if score TotalWorldSize setting matches 4000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 1900 false @a
#execute if score TotalWorldSize setting matches 5000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 2400 false @a
#execute if score TotalWorldSize setting matches 7000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 3400 false @a
#execute if score TotalWorldSize setting matches 10000 run execute if score teamgame status matches 0 run spreadplayers 0 0 100 4900 false @a

scoreboard players reset @a phantom 
xp set @a 0 levels
xp set @a 0 points
effect give @a minecraft:health_boost 2 0 true
#schedule function game:boots 6s





