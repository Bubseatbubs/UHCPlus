execute store result score %sniffers_alive uhcp_initStatus run execute if entity @e[tag=SSIEGE_sniffer]
execute if score %sniffers_alive uhcp_initStatus matches ..1 run function ssiege:end/end