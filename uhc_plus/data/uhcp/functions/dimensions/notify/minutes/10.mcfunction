# Notification
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"10 minutes","color":"blue"},{"text":" until the Nether closes.","color":"white"}]
