execute if score %team uhcp_settings matches 0 run tellraw @s [{"text":"\nGame Type:","color":"white","bold":true},{"text":" SOLO","color":"aqua","bold":false}]
execute if score %team uhcp_settings matches 1 run tellraw @s [{"text":"\nGame Type:","color":"white","bold":true},{"text":" TEAM","color":"gold","bold":false}]
