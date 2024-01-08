playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1

scoreboard players add teamcount status 1
execute if score teamcount status matches 15.. run scoreboard players set teamcount status 9
tellraw @a ["",{"text":"Team Count:","color":"gold"},{"text":" ["},{"score":{"name":"teamcount","objective":"status"},"color":"green"},{"text":"]"}]


