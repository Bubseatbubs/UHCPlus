execute if score %time uhcp_game_time matches 54000.. if score @s ssiege_unlocked_runesmith matches 1 run return run function ssiege:bases/sniffers/last_stand/auto_proc
execute if score @s uhcp_team matches 2 run execute store result score @s uhcp_initStatus run data get storage ssiege:sniffer_health input.blue_hp 100
execute if score @s uhcp_team matches 13 run execute store result score @s uhcp_initStatus run data get storage ssiege:sniffer_health input.red_hp 100
execute if score @s uhcp_initStatus matches ..15000 at @s run function ssiege:bases/sniffers/last_stand/init