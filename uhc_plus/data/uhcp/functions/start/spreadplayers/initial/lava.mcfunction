# In the strange case (0, 62, 0) is lava
fill -5 62 -5 5 62 5 minecraft:stone replace minecraft:lava
fill -5 67 -5 5 67 5 minecraft:stone replace minecraft:lava
fill -6 63 -6 6 66 6 minecraft:air replace minecraft:lava
execute store success score %spread uhcp_initStatus run spreadplayers 0 0 0 4.5 under 65 false @a[tag=!UHCP_Spectator]
execute if score %spread uhcp_initStatus matches 0 run tp @a[tag=!UHCP_Spectator] 0 63 0
