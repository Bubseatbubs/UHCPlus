scoreboard players set decay status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1

tellraw @a ["",{"text":"Fast Leaf Decay:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]
gamerule randomTickSpeed 50