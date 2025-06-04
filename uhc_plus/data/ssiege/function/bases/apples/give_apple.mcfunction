scoreboard players remove %n uhcp_initStatus 1

execute at @e[tag=BLUE_BASE] run summon item ~83 ~2 ~-1 {Item:{id:"minecraft:apple"},Age:-32768s}
execute at @e[tag=RED_BASE] run summon item ~-85 ~2 ~ {Item:{id:"minecraft:apple"},Age:-32768s}

execute if score %n uhcp_initStatus matches ..1 run function ssiege:bases/apples/give_apple