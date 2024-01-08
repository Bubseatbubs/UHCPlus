scoreboard players set fall status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Fall Damage:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]
gamerule fallDamage true