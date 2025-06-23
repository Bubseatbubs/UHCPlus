execute if entity @s[team=blue] store result storage ssiege:temp shop.cost int 1 run scoreboard players get %blue_cost ssiege_perk_sonar
execute if entity @s[team=red] store result storage ssiege:temp shop.cost int 1 run scoreboard players get %red_cost ssiege_perk_sonar
function ssiege:shop/perks/purchase/sonar with storage ssiege:temp shop