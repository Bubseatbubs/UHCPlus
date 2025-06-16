tag @s add UHCP_AugmentAnnounce
tag @a[team=blue] add UHCP_CurrentAnnounce
execute if entity @a[scores={uhcp_augment=300..499}] run function ssiege:augments/announce/gold
execute if entity @a[scores={uhcp_augment=500..}] run function ssiege:augments/announce/prismatic
tag @a[team=red] add UHCP_CurrentAnnounce
execute if entity @a[scores={uhcp_augment=300..499}] run function ssiege:augments/announce/gold
execute if entity @a[scores={uhcp_augment=500..}] run function ssiege:augments/announce/prismatic

scoreboard players reset @s augments
tag @s remove UHCP_AugmentAnnounce