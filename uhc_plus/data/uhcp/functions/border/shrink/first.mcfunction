# First stage of shrink
execute if score %border_size uhcp_settings matches 100 run return 1
scoreboard players operation %border_shrink_speed uhcp_gameTime = %border_shrink_speed uhcp_settings
scoreboard players set %const uhcp_initStatus 20
scoreboard players operation %border_shrink_speed uhcp_gameTime /= %const uhcp_initStatus
execute store result storage uhcp:border time int 1 run scoreboard players get %border_shrink_speed uhcp_gameTime
function uhcp:border/shrink/first/shrink with storage uhcp:border


# Notification - Help me, Bubson! :(
# Insert message for when border is shrinking to 100 blocks, maybe sound. (Mention that border has started shrinking.)

# Set countdown
scoreboard players operation %border_countdown uhcp_gameTime = %border_shrink_speed uhcp_settings
