# Third stage of shrink
execute in minecraft:overworld run worldborder set 30 300
execute in minecraft:the_end run worldborder set 30 300
execute in minecraft:the_nether run worldborder set 30 300

# Notification
tellraw @a [{"text":"The border has started shrinking to a size of","color":"white"},{"text":" 30","color":"gold"},{"text":" blocks.","color":"white"}]
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1 1

# Set countdown
scoreboard players set %border_countdown uhcp_gameTime 6000
