# First stage of shrink
execute if score %border_size uhcp_settings matches 100 run return 1
scoreboard players operation %border_shrink_speed uhcp_game_time = %border_shrink_speed uhcp_settings
scoreboard players set %const uhcp_initStatus 20
scoreboard players operation %border_shrink_speed uhcp_game_time /= %const uhcp_initStatus
execute store result storage uhcp:border time.shrink int 1 run scoreboard players get %border_shrink_speed uhcp_game_time
function uhcp:border/shrink/first/shrink with storage uhcp:border time

# Notification
tellraw @a [{"text":"The Border","color":"#00E6DE","bold":true},{"text":" has started to shrink to a size of","color":"#2E73B0","bold":false},{"text":" 100","color":"#9EE8FF","bold":true},{"text":" blocks.","color":"#2E73B0","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1

# Set countdown
scoreboard players operation %border_countdown uhcp_game_time = %border_shrink_speed uhcp_settings
