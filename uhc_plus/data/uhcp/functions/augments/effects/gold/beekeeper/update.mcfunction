scoreboard players remove @s uhcp_a_timer 1
execute if score @s uhcp_a_timer matches 1.. run return 0
data modify entity @s AngerTime set value 600

execute unless entity @p[distance=..20] run function uhcp:killsummon
execute if entity @s[nbt={HasStung:1b}] run function uhcp:killsummon
effect give @s speed 3 0 true
execute at @s if score @s uhcp_team = @p[tag=UHCP_BeeKeeper] uhcp_team run tag @p[tag=UHCP_BeeKeeper] add UHCP_Owner
execute as @a if score @s uhcp_team = @a[tag=UHCP_Owner,limit=1] uhcp_team run tag @s add UHCP_TeamMember
execute if entity @e[tag=!UHCP_Bee,type=!#uhcp:inanimate_mobs,tag=!UHCP_Owner,tag=!UHCP_TeamMember,distance=..8] at @p[tag=UHCP_Owner] run data modify entity @s AngryAt set from entity @e[tag=!UHCP_Bee,type=!#uhcp:inanimate_mobs,tag=!UHCP_Owner,tag=!UHCP_TeamMember,sort=nearest,limit=1] UUID
tag @a remove UHCP_Owner
tag @a remove UHCP_TeamMember
scoreboard players set @s uhcp_a_timer 5