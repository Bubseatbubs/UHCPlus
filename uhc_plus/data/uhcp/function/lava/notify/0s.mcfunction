# Start raising lava
scoreboard players set %lava_start uhcp_initStatus 1

# Lava notification
tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" is rising to y-level ","color":"#E34400","bold":false},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"#9EE8FF","bold":false},{"text":"!","color":"#E34400","bold":false}]
execute as @a at @s run playsound minecraft:item.bucket.empty_lava master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
