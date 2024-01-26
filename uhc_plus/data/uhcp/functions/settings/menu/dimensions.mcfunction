# Display menu with countdown
function uhcp:settings/menu
execute if score %uhcp_dimM uhcp_gameTime matches 0..9 run function uhcp:settings/dimensions/notify/single
execute if score %uhcp_dimM uhcp_gameTime matches 10..59 run function uhcp:settings/dimensions/notify/double
