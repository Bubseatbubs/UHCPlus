# Notification
tellraw @a [{"text":"The Border","color":"#00E6DE","bold":true},{"text":" has reached its final size.","color":"#2E73B0","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.5 1
