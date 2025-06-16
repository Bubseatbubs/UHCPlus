tag @s add UHCP_AugmentAnnounce
execute if entity @a[scores={uhcp_augment=300..499},team=blue] run function ssiege:augments/announce/gold
execute if entity @a[scores={uhcp_augment=500..},team=blue] run function ssiege:augments/announce/prismatic
execute if entity @a[scores={uhcp_augment=300..499},team=red] run function ssiege:augments/announce/gold
execute if entity @a[scores={uhcp_augment=500..},team=red] run function ssiege:augments/announce/prismatic

scoreboard players reset @s augments
tag @s remove UHCP_AugmentAnnounce
