# Enable PvP
team leave @a
function uhcp:teams/join_all

# Notification
tellraw @a [{"text":"The Grace Period","color":"dark_gray","bold":true},{"text":" has finished. You can now attack other enemy Players.","color":"gray","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
