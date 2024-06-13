tag @s add UHCP_CurrentSlinger
execute as @a if score @s uhcp_id = @e[tag=UHCP_CurrentSlinger,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_Owner
execute facing entity @p[tag=UHCP_Owner] feet run tp @s ^ ^ ^1.5 
execute if entity @p[tag=UHCP_Owner,distance=..1] run scoreboard players set @s uhcp_timer 180
tag @s remove UHCP_CurrentSlinger
tag @a remove UHCP_Owner