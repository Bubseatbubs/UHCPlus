execute if entity @s[team=blue] store result storage ssiege:temp shop.cost int 1 run scoreboard players get %blue_cost ssiege_perk_swimspeed
execute if entity @s[team=red] store result storage ssiege:temp shop.cost int 1 run scoreboard players get %red_cost ssiege_perk_swimspeed
function ssiege:shop/perks/purchase/swimspeed with storage ssiege:temp shop