tag @s add UHCP_CurrentProp
execute as @a if score @s uhcp_id = @e[tag=UHCP_CurrentProp,sort=nearest,limit=1] uhcp_id at @s positioned ~ ~0.2 ~ align xyz run tp @e[tag=UHCP_CurrentProp,sort=nearest,limit=1] ~ ~ ~ 0 0
tag @s remove UHCP_CurrentProp