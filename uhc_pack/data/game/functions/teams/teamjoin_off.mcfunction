scoreboard players set teamjoin status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
scoreboard objectives remove team
tellraw @a ["",{"text":"TeamJoining:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]
