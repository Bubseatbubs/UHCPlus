# Determine setting
function uhcp:settings/pages/other

execute if score @s uhcp_settings matches 300..307 run return run execute unless score %game uhcp_initStatus matches 1 run function uhcp:settings/other/dimensions
execute if score @s uhcp_settings matches 308..311 run return run function uhcp:settings/other/difficulty
execute if score @s uhcp_settings matches 312..319 run function uhcp:settings/other/titans
