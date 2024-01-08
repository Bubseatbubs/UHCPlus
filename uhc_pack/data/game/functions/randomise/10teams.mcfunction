playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1

scoreboard players set teamcount status 10
tellraw @a ["",{"text":"Team Count:","color":"gold"},{"text":" ["},{"text":"10","color":"green"},{"text":"]"}]



