execute if score @s[tag=!UHCP_Threshold1] uhcp_titans_count matches ..400 run function uhcp:titans/gerald/sniffers
execute if score @s[tag=!UHCP_Threshold1] uhcp_titans_count matches ..400 run return run tag @s add UHCP_Threshold1

execute if score @s[tag=!UHCP_Threshold2] uhcp_titans_count matches ..300 run function uhcp:titans/gerald/loot
execute if score @s[tag=!UHCP_Threshold2] uhcp_titans_count matches ..300 run return run tag @s add UHCP_Threshold2

execute if score @s[tag=!UHCP_Threshold3] uhcp_titans_count matches ..200 run function uhcp:titans/gerald/sniffers
execute if score @s[tag=!UHCP_Threshold3] uhcp_titans_count matches ..200 run return run tag @s add UHCP_Threshold3

execute if score @s[tag=!UHCP_Threshold4] uhcp_titans_count matches ..100 run function uhcp:titans/gerald/loot
execute if score @s[tag=!UHCP_Threshold4] uhcp_titans_count matches ..100 run return run tag @s add UHCP_Threshold4