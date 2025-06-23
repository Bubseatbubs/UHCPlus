tag @s remove ChangePOV
execute store result score %alive_allies uhcp_initStatus run execute if entity @a[gamemode=survival,tag=SpectatorAlly]
execute if score %alive_allies uhcp_initStatus matches ..1 run return run tellraw @s {"text":"No other teammates to spectate!","bold":true,"color":"dark_red"}
tag @p[tag=SpectatorAlly] remove SpectatorAlly
tp @s @r[tag=SpectatorAlly]