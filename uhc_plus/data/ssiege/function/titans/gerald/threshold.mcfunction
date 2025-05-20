execute as @s[tag=!UHCP_Threshold1,scores={uhcp_titans_count=..400}] run function uhcp:titans/gerald/sniffers
execute as @s[tag=!UHCP_Threshold1,scores={uhcp_titans_count=..400}] run return run tag @s add UHCP_Threshold1

execute as @s[tag=!UHCP_Threshold2,scores={uhcp_titans_count=..300}] run function uhcp:titans/gerald/loot
execute as @s[tag=!UHCP_Threshold2,scores={uhcp_titans_count=..300}] run return run tag @s add UHCP_Threshold2

execute as @s[tag=!UHCP_Threshold3,scores={uhcp_titans_count=..200}] run function uhcp:titans/gerald/sniffers
execute as @s[tag=!UHCP_Threshold3,scores={uhcp_titans_count=..200}] run return run tag @s add UHCP_Threshold3

execute as @s[tag=!UHCP_Threshold4,scores={uhcp_titans_count=..100}] run function uhcp:titans/gerald/loot
execute as @s[tag=!UHCP_Threshold4,scores={uhcp_titans_count=..100}] run return run tag @s add UHCP_Threshold4
