summon minecraft:marker 176 63 176 {Tags:["BLUE_BASE"]}
spreadplayers 176 176 0 1 false @n[tag=BLUE_BASE]

execute at @n[tag=BLUE_BASE] positioned ~ ~ ~ run place template ssiege:blue_base/origin ~ ~ ~ none none 1 0 strict
execute at @n[tag=BLUE_BASE] positioned ~ ~ ~ run place template ssiege:blue_base/bottom ~ ~ ~ none none 1 0 strict
execute at @n[tag=BLUE_BASE] positioned ~47 ~-11 ~20 run place template ssiege:blue_base/walkway ~ ~ ~ none none 1 0 strict
execute at @n[tag=BLUE_BASE] positioned ~90 ~-11 ~13 run place template ssiege:blue_base/spawn ~ ~ ~ none none 1 0 strict