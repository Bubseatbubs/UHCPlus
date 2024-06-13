execute if score %friendly_fire uhcp_settings matches 0 run tellraw @s [{"text":"Friendly Fire:","color":"white","bold":true},{"text":" OFF","color":"red","bold":false}]
execute if score %friendly_fire uhcp_settings matches 1 run tellraw @s [{"text":"Friendly Fire:","color":"white","bold":true},{"text":" ON","color":"green","bold":false}]
