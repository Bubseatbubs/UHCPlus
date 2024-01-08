scoreboard players set shrinkstart tick 96000
scoreboard players set BorderShrinkStart setting 80
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Border Shrink Starts:","color":"blue"},{"text":" ["},{"text":"80 Minutes","color":"aqua"},{"text":"]"}]