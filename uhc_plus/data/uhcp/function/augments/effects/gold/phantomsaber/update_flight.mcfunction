tag @s add UHCP_CurrentPhantomSaber
particle minecraft:end_rod ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @n[tag=UHCP_CurrentPhantomSaber] uhcp_id run tag @s add UHCP_CurrentDestination
execute as @e[tag=UHCP_CurrentDestination] at @s run tp @s ~ ~ ~ ~15 ~
execute facing entity @n[tag=UHCP_CurrentDestination] feet run tp @s ^ ^ ^0.5 ~ 90
execute as @e[tag=UHCP_PhantomDestination,distance=..0.35] if score @s uhcp_id = @n[tag=UHCP_CurrentPhantomSaber] uhcp_id run tag @n[tag=UHCP_CurrentPhantomSaber] add UHCP_MadeToDestination
tag @s remove UHCP_CurrentPhantomSaber


# Run this part only if phantom saber has made it to location
execute as @s[tag=!UHCP_MadeToDestination] run return 0
execute as @a if score @s uhcp_id = @n[tag=UHCP_MadeToDestination] uhcp_id run tag @s add UHCP_Owner
execute as @a if score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_TeamMember
execute at @s as @e[tag=!UHCP_Owner,tag=!UHCP_TeamMember,predicate=uhcp:targetable,distance=..2.5] run damage @s 7 uhcp:instant_damage by @p[tag=UHCP_Owner]
particle minecraft:sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.1 1 normal
particle minecraft:enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.1 100 normal
playsound minecraft:item.trident.return master @a[distance=..4] ~ ~ ~ 1 1 0.75
scoreboard players set @p[tag=UHCP_Owner] uhcp_aug_stack 0
kill @n[tag=UHCP_PhantomDestination]
data merge entity @s {teleport_duration:3}
tag @a remove UHCP_Owner
tag @s remove UHCP_MadeToDestination
tag @s remove UHCP_FlyingTowardsTarget
