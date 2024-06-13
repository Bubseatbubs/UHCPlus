# Notification
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"The Nether","color":"#5F25A1","bold":true},{"text":" will close soon.","color":"#B962D9","bold":false}]