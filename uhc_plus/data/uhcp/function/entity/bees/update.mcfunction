execute if entity @s[nbt={HasStung:1b},tag=!UHCP_BeeKnight] run function uhcp:entity/instant_kill
execute if entity @s[nbt={HasStung:1b},tag=UHCP_BeeKnight] run data merge entity @s {HasStung:0b}
scoreboard players add @s uhcp_timer 1
execute if score @s uhcp_timer matches 200.. run function uhcp:entity/instant_kill

tag @s add UHCP_BeeTarget
execute as @a if score @s uhcp_id = @n[tag=UHCP_BeeTarget] uhcp_id run tag @s add UHCP_Owner
execute as @a if score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_TeamMember
execute at @s if entity @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,predicate=uhcp:targetable,distance=..12] run data modify entity @s AngerTime set value 600
execute at @s unless entity @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,predicate=uhcp:targetable,distance=..12] run data modify entity @s AngerTime set value 0
execute as @n[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,predicate=uhcp:targetable,distance=..12] run data modify entity @n[tag=UHCP_BeeTarget] AngryAt set from entity @s UUID
tag @s remove UHCP_BeeTarget
tag @a remove UHCP_Owner
tag @a remove UHCP_TeamMember
