# Turn friendly fire on
execute if score %friendly_fire uhcp_settings matches 1 run return run function uhcp:settings/reset/team/friendly_fire/on

# Turn friendly fire off
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
