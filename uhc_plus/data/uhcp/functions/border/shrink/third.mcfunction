# Third stage of shrink
execute in minecraft:overworld run worldborder set 30 300
execute in minecraft:the_end run worldborder set 30 300
execute in minecraft:the_nether run worldborder set 30 300

# Notification
# Insert message for border continuing to shrink to 30 blocks.

# Set countdown
scoreboard players set %border_countdown uhcp_gameTime 6000
