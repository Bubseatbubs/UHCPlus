# World border
execute if score %border_countdown uhcp_gameTime matches 0 run function uhcp:border/shrink

scoreboard players remove %border_countdown uhcp_gameTime 1
