data modify entity @s AngerTime set value 600
execute if entity @s[nbt={HasStung:1b}] run function uhcp:killsummon
tag @s add UHCP_BeeTarget
execute as @a if score @s uhcp_id = @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_Owner
execute as @p[tag=UHCP_Owner] as @a if score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_TeamMember
execute unless entity @e[distance=..20,tag=!UHCP_Owner,tag=!UHCP_TeamMember] run function uhcp:killsummon
execute if entity @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,type=!#uhcp:inanimate_mobs,distance=..8] run data modify entity @s AngryAt set from entity @e[tag=!UHCP_Bee,tag=!UHCP_Owner,tag=!UHCP_TeamMember,type=!#uhcp:inanimate_mobs,sort=nearest,limit=1] UUID
tag @a remove UHCP_Owner
tag @a remove UHCP_BeeTarget
tag @a remove UHCP_TeamMember