#>  uhcp:augments/announce
# Tells player what augments other players chose
# Announced automatically at game start or when player runs /trigger augments
#
# @within  uhcp:tick
# @within  uhcp:augments/countdown/end

tag @s add UHCP_AugmentAnnounce

execute if entity @a[scores={uhcp_augment=0..99}] run function uhcp:augments/announce/gold
execute if entity @a[scores={uhcp_augment=200..299}] run function uhcp:augments/announce/prismatic

scoreboard players reset @s augments
tag @s remove UHCP_AugmentAnnounce
