scoreboard players set @s uhcp_leave 1000
execute store success score @s uhcp_initStatus if items entity @s armor.head *
function uhcp:augments/effects/silver/delayedprotection/head

execute store success score @s uhcp_initStatus if items entity @s armor.chest *
function uhcp:augments/effects/silver/delayedprotection/chest

execute store success score @s uhcp_initStatus if items entity @s armor.legs *
function uhcp:augments/effects/silver/delayedprotection/legs

execute store success score @s uhcp_initStatus if items entity @s armor.feet *
function uhcp:augments/effects/silver/delayedprotection/feet

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players reset @s uhcp_leave
scoreboard players set @s uhcp_game_time -1
