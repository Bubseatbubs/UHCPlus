kill @e[type=guardian,tag=SSIEGE_blue_turret]
kill @n[type=interaction,tag=BI_Hitbox]
kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}}]
execute positioned as @n[tag=BLUE_BASE] run fill ~-21 ~2 ~-1 ~-20 ~4 ~ air

scoreboard players set %blue_inhib_respawn uhcp_game_time 3600
scoreboard players set %blue_inhib_up uhcp_game_time 0

tellraw @a ["",{"text":"Blue Inhibitor","bold":true,"color":"blue"},{"text":" has been destroyed! "},{"text":"Base Turrets","bold":true,"color":"blue"},{"text":" have been disabled and the "},{"text":"Sniffer","bold":true,"color":"blue"},{"text":" is now vulnerable for the next "},{"text":"3 minutes","color":"yellow"},{"text":"."}]