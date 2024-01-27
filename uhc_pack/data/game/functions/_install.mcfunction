#Install
tag @p add preloader
datapack enable "file/compass"
scoreboard objectives add tick dummy
scoreboard objectives add status dummy
scoreboard objectives add setting dummy {"text":"UHC: SETUP","color":"green"}
scoreboard objectives add hearts health {"text":"Health","color":"light_purple"}
scoreboard objectives add teams dummy
scoreboard objectives add death deathCount
scoreboard objectives add gore minecraft.mined:minecraft.gold_ore
scoreboard objectives add iore minecraft.mined:minecraft.iron_ore
scoreboard objectives add core minecraft.mined:minecraft.copper_ore
scoreboard objectives add dcore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add diore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add dgore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add rawgold minecraft.mined:minecraft.raw_gold_block
scoreboard objectives add rawiron minecraft.mined:minecraft.raw_iron_block
scoreboard objectives add rawcopper minecraft.mined:minecraft.raw_copper_block
scoreboard objectives add debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add phantom minecraft.custom:minecraft.time_since_rest
scoreboard objectives add cow minecraft.killed:minecraft.cow
scoreboard objectives add pig minecraft.killed:minecraft.pig
scoreboard objectives add sheep minecraft.killed:minecraft.sheep
scoreboard objectives add chicken minecraft.killed:minecraft.chicken
scoreboard objectives add water minecraft.used:minecraft.water_bucket
scoreboard objectives add stew minecraft.used:minecraft.suspicious_stew
scoreboard objectives add timedeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add team trigger
scoreboard objectives add options trigger
execute in minecraft:overworld run gamerule announceAdvancements false
execute in minecraft:the_end run gamerule announceAdvancements false
execute in minecraft:the_nether run gamerule announceAdvancements false
scoreboard objectives remove ch_help
execute in minecraft:overworld run gamerule sendCommandFeedback false
execute in minecraft:the_end run gamerule sendCommandFeedback false
execute in minecraft:the_nether run gamerule sendCommandFeedback false

scoreboard objectives setdisplay list hearts
scoreboard objectives setdisplay sidebar setting

team add spectator
team modify spectator color white

team add crimson
team modify crimson color red


team add ice
team modify ice color blue


team add meaniegreeny
team modify meaniegreeny color green


team add fire
team modify fire color gold


team add barbie
team modify barbie color light_purple


team add celeste
team modify celeste color dark_purple


team add riptide
team modify riptide color dark_aqua


team add blitz
team modify blitz color yellow


team add dangerdanger
team modify dangerdanger color dark_red


team add boom
team modify boom color dark_green


team add bling
team modify bling color aqua


team add royalnavy
team modify royalnavy color dark_blue


team add netherite
team modify netherite color gray


team add bastion
team modify bastion color dark_gray

team add info
team modify info color yellow

team add info1
team modify info1 color aqua

team add playercount
team modify playercount color green

team add off
team modify off color red

team add on
team modify on color green

team join info TotalWorldSize
team join info FinalArenaSize
team join info BorderShrinkStart
team join info BorderShrinkTime
team join info1 EternalDay
team join info1 ShowNametagsAfter
team join info1 Gamemode
team join playercount Players

team add 1
team add 2
team add 3
team add 4
team add 5
team add 6
team add 7
team add 8
team add 9
team add 10
team add 11
team add 12
team add 13
team add 14
team add 15
team add 16
team add 17
team add 18
team add 19
team add 20
team add 21
team add 22
team add 23
team add 24
team add 25
team add 26
team add 27
team add 28
team add 29
team add 30
team add 31
team add 32
team add 33
team add 34
team add 35
team add 36
team add 37
team add 38
team add 39
team add 40
team add 41
team add 42
team add 43
team add 44
team add 45
team add 46
team add 47
team add 48
team add 49
team add 50




#Prepare World
scoreboard players set stage status 1
execute in minecraft:overworld run gamerule doWeatherCycle false
execute in minecraft:the_nether run gamerule doWeatherCycle false
execute in minecraft:overworld run gamerule doDaylightCycle false
execute in minecraft:overworld run weather clear
execute in minecraft:the_nether run weather clear
execute in minecraft:overworld run time set 0
execute in minecraft:overworld run gamerule commandBlockOutput false
execute in minecraft:the_end run gamerule commandBlockOutput false
execute in minecraft:the_nether run gamerule commandBlockOutput false
scoreboard players set countdown tick 120
worldborder damage buffer 1000000

tag @s add admin
fill -13 299 13 13 299 -13 minecraft:barrier
fill -13 300 13 13 305 -13 minecraft:barrier hollow
fill -12 305 12 12 305 -12 minecraft:barrier
fill -12 305 -12 12 305 12 minecraft:air

tp @a 0 301 0

summon minecraft:text_display 0 303 0 {Tags:["lobby","lobbycenter"],billboard:"center",text:'[{"text":"Cosmian","color":"red"},{"text":" | ","color":"white"},{"text":"UHC","color":"yellow"},{"text":" | ","color":"white"},{"text":"v3.37","color":"green"}]'}

#Defaults
scoreboard players set Radius WorldPregen 2000


#Respawns
scoreboard players set respawn status 0

#Autocook
scoreboard players set autocook status 1
datapack enable "file/cook"

#Speed UHC
scoreboard players set speed status 0

#Warden
scoreboard players set warden status 0

#Night Vision
scoreboard players set night status 1

#OP Items
scoreboard players set opitems status 1
datapack disable "file/disable_god_apple"

#Weather
scoreboard players set weather status 0

#Nametags
function game:options/nametags_on

#Team joining
scoreboard players set teamjoin status 0
scoreboard objectives remove team

#Teams on
function game:teams/teams

#Random day/night start
scoreboard players set daynite status 0

#Fall Damage
scoreboard players set fall status 1

#Health
scoreboard players set hp status 20

#Fast leaf decay_off
scoreboard players set decay status 1
execute in minecraft:the_end run gamerule randomTickSpeed 3
execute in minecraft:the_nether run gamerule randomTickSpeed 3
execute in minecraft:overworld run gamerule randomTickSpeed 18

#Phantoms
scoreboard players set phantoms status 0
execute in minecraft:overworld run gamerule doInsomnia false

#Bonus tools
scoreboard players set tools status 0

#Stews
scoreboard players set stew status 1

#Friendly fire
scoreboard players set ffire status 0

#Firetick
scoreboard players set ftick status 1

#Number of teams
scoreboard players set teamcount status 2

#Show nameplates after..
scoreboard players set ShowNametagsAfter setting 0

#Worldsize
scoreboard players set TotalWorldSize setting 1500
datapack enable "file/pregen"

#Start shrink over
scoreboard players set BorderShrinkTime setting 20

#Border shrinks after
scoreboard players set shrinkstart tick 24000
scoreboard players set BorderShrinkStart setting 20

#Eternal day
scoreboard players set day tick 24000
scoreboard players set EternalDay setting 20

#Arena size
scoreboard players set FinalArenaSize setting 200

#Minecraft Difficulty
execute in minecraft:overworld run difficulty normal
execute in minecraft:the_end run difficulty normal
execute in minecraft:the_nether run difficulty normal
scoreboard players set minecraft status 2

#Nether Travel
scoreboard players set nether status 1



worldborder center 0.5 0.5
setworldspawn ~ ~ ~


playsound minecraft:entity.player.levelup hostile @a ~ ~ ~ 1000000 1 1
title @a title {"text":"Cosmian UHC","color":"green"}
title @a subtitle {"text":"Installed Successfully","color":"blue"}

datapack enable "file/pregen"
function game:setting




























