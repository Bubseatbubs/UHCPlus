# Determine setting
function uhcp:settings/pages/border
execute if score %game uhcp_initStatus matches 1 run return fail

execute if score @s uhcp_settings matches 100..109 run return run function uhcp:settings/border/size
execute if score @s uhcp_settings matches 110..117 run return run function uhcp:settings/border/countdown
execute if score @s uhcp_settings matches 118..125 run function uhcp:settings/border/shrink_speed
