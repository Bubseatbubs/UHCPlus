# Stop raising lava
scoreboard players set %lava_start uhcp_initStatus 0
execute as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.75 1
execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 0.75 1

# Notification
tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" stopped rising.","color":"#E34400","bold":false}]
