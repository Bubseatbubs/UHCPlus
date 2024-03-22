# Second stage of shrink
execute in minecraft:overworld run worldborder set 60 300
execute in minecraft:the_end run worldborder set 60 300
execute in minecraft:the_nether run worldborder set 60 300

# Notification - Help me, Bubson! :(
# Insert message for border continuing to shrink to 60 blocks.

# Set countdown
scoreboard players set %border_countdown uhcp_gameTime 6000
