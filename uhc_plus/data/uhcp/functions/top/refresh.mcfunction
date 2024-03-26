tellraw @s [{"text":"You didn't teleport far. The cooldown on ","color":"gray","italic":true,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"/trigger top","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":" was refreshed.","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":" [Why?]","color":"blue","bold":true,"italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"This can happen if you are already on the highest block in the world, or if the teleportation could not be completed.","italic":true}]}}]
scoreboard players set @s uhcp_top_CD 0
scoreboard players set @s uhcp_initStatus 1
playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 1 1
