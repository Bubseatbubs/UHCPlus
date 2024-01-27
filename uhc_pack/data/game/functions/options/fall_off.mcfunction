scoreboard players set fall status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"Fall Damage:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]
execute in minecraft:overworld run gamerule fallDamage false
execute in minecraft:the_end run gamerule fallDamage false
execute in minecraft:the_nether run gamerule fallDamage false
