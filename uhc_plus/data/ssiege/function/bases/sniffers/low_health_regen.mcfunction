execute store result score %blue_sniffer_hp uhcp_initStatus run data get entity @n[tag=bluesniffer] Health
execute store result score %red_sniffer_hp uhcp_initStatus run data get entity @n[tag=redsniffer] Health

execute if score %blue_sniffer_hp uhcp_initStatus matches ..72 as @n[tag=bluesniffer] at @s unless entity @a[team=red,gamemode=survival,distance=..16] run function ssiege:bases/sniffers/heal
execute if score %red_sniffer_hp uhcp_initStatus matches ..72 as @n[tag=redsniffer] at @s unless entity @a[team=blue,gamemode=survival,distance=..16] run function ssiege:bases/sniffers/heal