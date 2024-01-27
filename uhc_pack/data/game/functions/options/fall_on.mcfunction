scoreboard players set fall status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Fall Damage:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]
execute in minecraft:overworld run gamerule fallDamage true
execute in minecraft:the_end run gamerule fallDamage true
execute in minecraft:the_nether run gamerule fallDamage true
