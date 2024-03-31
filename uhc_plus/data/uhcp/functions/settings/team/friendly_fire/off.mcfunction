# Turn friendly fire off
scoreboard players set %friendly_fire uhcp_settings 0

team modify aqua friendlyFire false
team modify blue friendlyFire false
team modify dark_aqua friendlyFire false
team modify dark_blue friendlyFire false
team modify dark_gray friendlyFire false
team modify dark_green friendlyFire false
team modify dark_purple friendlyFire false
team modify dark_red friendlyFire false
team modify gold friendlyFire false
team modify gray friendlyFire false
team modify green friendlyFire false
team modify light_purple friendlyFire false
team modify red friendlyFire false
team modify yellow friendlyFire false

function uhcp:settings/pages/team/1
tellraw @s [{"text":"Friendly Fire has been turned "},{"text":"OFF","color":"red"},{"text":"."}]
