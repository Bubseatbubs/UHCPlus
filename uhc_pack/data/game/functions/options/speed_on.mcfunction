scoreboard players set speed status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Speed UHC:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]

scoreboard players set night status 1
scoreboard players set decay status 1
scoreboard players set fall status 1
scoreboard players set autocook status 1

execute in minecraft:overworld run gamerule fallDamage false
execute in minecraft:the_nether run gamerule fallDamage false
execute in minecraft:overworld run gamerule randomTickSpeed 50
execute in minecraft:the_nether run gamerule randomTickSpeed 50
datapack enable "file/cook"


