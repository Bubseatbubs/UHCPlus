# Air at (0, 62, 0)
fill -5 62 -5 5 62 5 minecraft:stone replace #uhcp:air
execute store success score %spread uhcp_initStatus run spreadplayers 0 0 0 5 false @a[tag=!UHCP_Spectator]
execute if score %spread uhcp_initStatus matches 0 run tp @a[tag=!UHCP_Spectator] 0 63 0
