kill @e[tag=BLUE_BASE]
kill @e[tag=RED_BASE]

summon minecraft:marker 176 63 176 {Tags:["BLUE_BASE"]}
spreadplayers 176 176 0 1 false @n[tag=BLUE_BASE]

execute at @n[tag=BLUE_BASE] positioned ~ ~ ~ run place template ssiege:blue_base/origin ~ ~ ~ none none 1 0 strict
execute at @n[tag=BLUE_BASE] positioned ~ ~ ~ run place template ssiege:blue_base/bottom ~ ~ ~ none none 1 0 strict
execute at @n[tag=BLUE_BASE] positioned ~47 ~-11 ~20 run place template ssiege:blue_base/walkway ~ ~ ~ none none 1 0 strict
execute at @n[tag=BLUE_BASE] positioned ~90 ~-11 ~13 run place template ssiege:blue_base/spawn ~ ~ ~ none none 1 0 strict

summon minecraft:marker -224 63 -224 {Tags:["RED_BASE"]}
spreadplayers -224 -224 0 1 false @n[tag=RED_BASE]

execute at @n[tag=RED_BASE] positioned ~ ~ ~ run place template ssiege:red_base/origin ~ ~ ~ none none 1 0 strict
execute at @n[tag=RED_BASE] positioned ~ ~ ~ run place template ssiege:red_base/bottom ~ ~ ~ none none 1 0 strict
execute at @n[tag=RED_BASE] positioned ~-1 ~-11 ~27 run place template ssiege:red_base/walkway ~ ~ ~ 180 none 1 0 strict
execute at @n[tag=RED_BASE] positioned ~-44 ~-11 ~34 run place template ssiege:red_base/spawn ~ ~ ~ 180 none 1 0 strict