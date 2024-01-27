scoreboard players set decay status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1

tellraw @a ["",{"text":"Fast Leaf Decay:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]
execute in minecraft:overworld run gamerule randomTickSpeed 3
execute in minecraft:the_nether run gamerule randomTickSpeed 3
execute in minecraft:the_end run gamerule randomTickSpeed 3
