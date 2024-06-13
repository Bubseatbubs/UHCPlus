# Determine message
execute if score @s uhcp_settings matches 226 run return run execute if score %lava_start uhcp_initStatus matches 1 run tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" is rising to y-level ","color":"#E34400","bold":false},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"#9EE8FF","bold":false},{"text":"!","color":"#E34400","bold":false}]
execute unless score %lava_start uhcp_initStatus matches 1 run tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" stopped rising.","color":"#E34400","bold":false}]
