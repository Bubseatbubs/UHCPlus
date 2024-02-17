# Notification
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"1 minute","color":"blue"},{"text":" until lava rises.","color":"white"}]
