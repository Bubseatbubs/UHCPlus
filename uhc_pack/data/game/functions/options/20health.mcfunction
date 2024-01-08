scoreboard players set hp status 20
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1

tellraw @a ["",{"text":"Health: ","color":"gold"},{"text":"[","color":"white"},{"text":"20","color":"light_purple"},{"text":"\u2764","color":"red"},{"text":"]","color":"white"}]