execute if entity @s[nbt={HasStung:1b}] run function uhcp:entity/instant_kill
scoreboard players add @s uhcp_a_timer 1
execute if score @s uhcp_a_timer matches 200.. run function uhcp:entity/instant_kill

tag @s add UHCP_BeeTarget
execute as @a if score @s uhcp_id = @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_Owner
execute as @p[tag=UHCP_Owner] as @a if score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_TeamMember
execute at @s if entity @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,type=!#uhcp:inanimate_mobs,distance=..12] run data modify entity @s AngerTime set value 600
execute at @s unless entity @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,type=!#uhcp:inanimate_mobs,distance=..12] run data modify entity @s AngerTime set value 0
execute as @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,type=!#uhcp:inanimate_mobs,distance=..12,sort=nearest,limit=1] run data modify entity @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] AngryAt set from entity @s UUID
tag @s remove UHCP_BeeTarget
tag @a remove UHCP_Owner
tag @a remove UHCP_TeamMember
