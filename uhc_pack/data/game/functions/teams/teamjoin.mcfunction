playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
scoreboard players set teamjoin status 1
scoreboard objectives add team trigger
tellraw @a ["",{"text":"Team Joining:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]



