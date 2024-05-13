execute store result score @s uhcp_initStatus run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}]

execute if score @s uhcp_initStatus matches 1.. at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
execute if score @s uhcp_initStatus matches ..0 at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

execute if score @s uhcp_initStatus matches 1.. at @s run function uhcp:augments/effects/gold/watertowine/convert

scoreboard players set @s uhcp_game_time -1
