tellraw @a ["",{"text":"Red Inhibitor","bold":true,"color":"red"},{"text":" has respawned!"}]
execute at @n[tag=RED_BASE] run function ssiege:bases/inhibitors/init_red
execute at @n[tag=RED_BASE] run function ssiege:bases/turrets/init_red
scoreboard players set %red_inhib_up uhcp_game_time 1