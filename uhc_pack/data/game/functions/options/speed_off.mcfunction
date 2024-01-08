scoreboard players set speed status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"Speed UHC:","color":"gold"},{"text":" ["},{"text":"Off, Night vision, fast leaf decay, fall damage, auto cook & speed 1 have been reverted back to game defaults","color":"red"},{"text":"]"}]

scoreboard players set night status 0
scoreboard players set decay status 0
scoreboard players set fall status 0
scoreboard players set autocook status 0

gamerule fallDamage true
gamerule randomTickSpeed 3
datapack disable "file/cook"
