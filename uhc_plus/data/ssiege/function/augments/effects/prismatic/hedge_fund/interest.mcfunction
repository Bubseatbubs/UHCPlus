execute store result score @s uhcp_initStatus run clear @s diamond
scoreboard players operation %interest uhcp_initStatus = @s uhcp_initStatus
scoreboard players operation %interest uhcp_initStatus /= #10 uhcp_const
scoreboard players operation @s uhcp_initStatus += %interest uhcp_initStatus
execute store result storage ssiege:temp hedge_fund int 1 run scoreboard players get @s uhcp_initStatus
function ssiege:augments/effects/prismatic/hedge_fund/give_macro with storage ssiege:temp
tellraw @s ["",{"text":"[Hedge Fund]","bold":true,"color":"aqua"},{"text":" You gained "},{"score":{"name":"%interest","objective":"uhcp_initStatus"}},{"text":" Diamonds","color":"aqua"},{"text":" of interest!"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

scoreboard players add @s uhcp_game_time 3600