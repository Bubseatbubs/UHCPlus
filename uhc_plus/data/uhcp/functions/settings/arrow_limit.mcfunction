# Determine setting
execute if score @s uhcp_settings matches 1000 run function uhcp:settings/arrow_limit/lower/1
execute if score @s uhcp_settings matches 1001 run function uhcp:settings/arrow_limit/lower/5
execute if score @s uhcp_settings matches 1002 run function uhcp:settings/arrow_limit/lower/10
execute if score @s uhcp_settings matches 1003 run function uhcp:settings/arrow_limit/lower/25
execute if score @s uhcp_settings matches 1004 run function uhcp:settings/arrow_limit/raise/1
execute if score @s uhcp_settings matches 1005 run function uhcp:settings/arrow_limit/raise/5
execute if score @s uhcp_settings matches 1006 run function uhcp:settings/arrow_limit/raise/10
execute if score @s uhcp_settings matches 1007 run function uhcp:settings/arrow_limit/raise/25

execute if score %arrow_limit uhcp_arrowCount matches ..-1 run scoreboard players set %arrow_limit uhcp_arrowCount 12

tellraw @s [{"text":"The maximum Arrow count has been set to "},{"score":{"name":"%arrow_limit","objective":"uhcp_arrowCount"},"color":"gold"},{"text":" Arrows."}]