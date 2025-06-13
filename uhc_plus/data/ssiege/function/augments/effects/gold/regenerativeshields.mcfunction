scoreboard players add @s uhcp_game_time 600
execute store result score @s uhcp_initStatus run data get entity @s AbsorptionAmount 0.5
execute if score @s uhcp_initStatus matches 4.. run return fail
tellraw @s ["",{"text":"[Regenerative Shields]","bold":true,"color":"gold"},{"text":" Your shield regenerated.","color":"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
effect clear @s absorption
effect give @s absorption infinite 1 true