kill @e[type=guardian,tag=SSIEGE_red_turret]
kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}}]
execute positioned as @n[tag=RED_BASE] run fill ~21 ~2 ~-1 ~20 ~4 ~ air

scoreboard players set %red_inhib_respawn uhcp_game_time 3600
scoreboard players set %red_inhib_up uhcp_game_time 0
tellraw @a ["",{"text":"Red Inhibitor","bold":true,"color":"red"},{"text":" has been destroyed! "},{"text":"Base Turrets","bold":true,"color":"red"},{"text":" have been disabled and the "},{"text":"Sniffer","bold":true,"color":"red"},{"text":" is now vulnerable for the next "},{"text":"3 minutes","color":"yellow"},{"text":"."}]