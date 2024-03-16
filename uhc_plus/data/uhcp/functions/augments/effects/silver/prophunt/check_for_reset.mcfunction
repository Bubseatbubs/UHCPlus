tag @s add UHCP_CurrentPropCheck
execute as @a[gamemode=survival] if score @s uhcp_id = @e[tag=UHCP_CurrentPropCheck,sort=nearest,limit=1] uhcp_id at @s unless entity @e[tag=UHCP_CurrentPropCheck,distance=..1.5] run function uhcp:augments/effects/silver/prophunt/reset
tag @s remove UHCP_CurrentPropCheck