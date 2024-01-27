# Notification
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"The Nether will close soon.","color":"white"}]
