# Second stage of shrink
execute in minecraft:overworld run worldborder set 60 300
execute in minecraft:the_end run worldborder set 60 300
execute in minecraft:the_nether run worldborder set 60 300

# Notification
tellraw @a [{"text":"The Border","color":"#00E6DE","bold":true},{"text":" has started to shrink to a size of","color":"#2E73B0","bold":false},{"text":" 60","color":"#9EE8FF","bold":true},{"text":" blocks.","color":"#2E73B0","bold":false}]
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1 1

# Set countdown
scoreboard players set %border_countdown uhcp_gameTime 6000
