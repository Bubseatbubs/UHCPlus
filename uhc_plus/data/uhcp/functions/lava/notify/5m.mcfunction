# Notification
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" will rise in","color":"#E34400","bold":false},{"text":" 5 minutes","color":"#9EE8FF","bold":false},{"text":".","color":"#E34400","bold":false}]
