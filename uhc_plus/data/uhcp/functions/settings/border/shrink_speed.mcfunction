# Determine setting
execute if score @s uhcp_settings matches 118..121 run function uhcp:settings/border/shrink_speed/lower
execute if score @s uhcp_settings matches 122..125 run function uhcp:settings/border/shrink_speed/raise

# Set countdown to minimum if necessary
execute if score %border_shrink_speed uhcp_settings matches ..1119 run scoreboard players set %border_shrink_speed uhcp_settings 1200

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %border_shrink_speed uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_gameTime matches 0..9 run function uhcp:settings/border/shrink_speed/notify/single
execute if score %time_calcM uhcp_gameTime matches 10..59 run function uhcp:settings/border/shrink_speed/notify/double
