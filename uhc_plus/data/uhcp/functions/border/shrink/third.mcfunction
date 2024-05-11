# Third stage of shrink
execute in minecraft:overworld run worldborder set 30 300
execute in minecraft:the_end run worldborder set 30 300
execute in minecraft:the_nether run worldborder set 30 300

# Notification
tellraw @a [{"text":"The Border","color":"#00E6DE","bold":true},{"text":" has started to shrink to a size of","color":"#2E73B0","bold":false},{"text":" 30","color":"#9EE8FF","bold":true},{"text":" blocks.","color":"#2E73B0","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1

# Set countdown
scoreboard players set %border_countdown uhcp_game_time 6000
