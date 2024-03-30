
# Determine setting
execute if score @s uhcp_settings matches 501 run scoreboard players set %team uhcp_settings 0
execute if score @s uhcp_settings matches 500 run scoreboard players set %team uhcp_settings 1

execute if score %team uhcp_settings matches 0 run tellraw @s [{"text":"Teams have been turned "},{"text":"ON","color":"green"},{"text":"."}]
execute if score %team uhcp_settings matches 1 run tellraw @s [{"text":"Teams have been turned "},{"text":"OFF","color":"red"},{"text":". It is now a Solo game."}]
