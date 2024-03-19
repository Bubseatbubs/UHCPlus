tag @s add UHCP_CurrentPanda
execute as @a if score @s uhcp_id = @e[tag=UHCP_CurrentPanda,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_Owner
tp @s @p[tag=UHCP_Owner]
execute as @e[predicate=uhcp:was_not_hurt_recently,type=!#uhcp:inanimate_mobs,distance=..2.5] unless score @s uhcp_team = @e[tag=UHCP_CurrentPanda,sort=nearest,limit=1] uhcp_team at @s run function uhcp:augments/effects/prismatic/kungfupanda/damage
tag @s remove UHCP_CurrentPanda
tag @a remove UHCP_Owner