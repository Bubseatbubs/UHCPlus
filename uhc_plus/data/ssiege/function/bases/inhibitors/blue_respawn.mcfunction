tellraw @a ["",{"text":"Blue Inhibitor","bold":true,"color":"blue"},{"text":" has respawned!"}]
execute at @n[tag=BLUE_BASE] run function ssiege:bases/inhibitors/init_blue
execute at @n[tag=BLUE_BASE] run function ssiege:bases/turrets/init_blue
scoreboard players set %blue_inhib_up uhcp_game_time 1