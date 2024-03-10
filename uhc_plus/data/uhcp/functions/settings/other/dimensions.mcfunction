# Determine setting
execute if score @s uhcp_settings matches 300..303 run function uhcp:settings/other/dimensions/lower
execute if score @s uhcp_settings matches 304..307 run function uhcp:settings/other/dimensions/raise

function uhcp:settings/other/dimensions/calculate
execute if score %uhcp_dimM uhcp_gameTime matches 0..9 run function uhcp:settings/other/dimensions/notify/single
execute if score %uhcp_dimM uhcp_gameTime matches 10..59 run function uhcp:settings/other/dimensions/notify/double