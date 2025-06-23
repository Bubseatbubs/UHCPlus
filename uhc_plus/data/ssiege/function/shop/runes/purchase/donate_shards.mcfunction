execute store result score %temp uhcp_initStatus run clear @s nether_star[custom_data={ssiege_soulshard:true}]
execute if score %temp uhcp_initStatus matches 0 run return run tellraw @s ["",{"text":"You don't have any ","color":"dark_red"},{"text":"Soul Shards","color":"light_purple"},{"text":" to contribute to your team's bank!","color":"dark_red"}]
execute as @s[team=blue] run scoreboard players operation %blue_shards ssiege_bank += %temp uhcp_initStatus
execute as @s[team=red] run scoreboard players operation %red_shards ssiege_bank += %temp uhcp_initStatus
tellraw @s ["",{"text":"You donated ","color":"green"},{"score":{"name":"%temp","objective":"uhcp_initStatus"},"color":"light_purple"},{"text":" Soul Shards to your team's bank!","color":"green"}]
execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 1