execute if score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 226..227 run function uhcp:settings/lava/status
execute unless score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/pages/lava/stopped
execute if score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/pages/lava/started
execute unless score %lava_start uhcp_initStatus matches 1 if score @s uhcp_settings matches 200..207 run function uhcp:settings/lava/time
execute unless score %lava_start uhcp_initStatus matches 1 if score @s uhcp_settings matches 208..217 run function uhcp:settings/lava/height
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 218..225 run function uhcp:settings/lava/countdown

execute if score @s uhcp_settings matches 226 run tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" is rising to y-level ","color":"#E34400","bold":false},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"#9EE8FF","bold":false},{"text":"!","color":"#E34400","bold":false}]
execute if score @s uhcp_settings matches 227 run tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" stopped rising.","color":"#E34400","bold":false}]
