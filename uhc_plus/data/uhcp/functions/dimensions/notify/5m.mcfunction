# Notification
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"The Nether","color":"#5F25A1","bold":true},{"text":" closes in","color":"#B962D9","bold":false},{"text":" 5 minutes","color":"#9EE8FF","bold":false},{"text":".","color":"#B962D9","bold":false}]