tag @s add UHCP_CurrentPhantomClaw
particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @e[tag=UHCP_CurrentPhantomClaw,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_CurrentDestination
execute as @e[tag=UHCP_CurrentDestination] at @s run tp @s ~ ~ ~ ~15 ~
execute facing entity @e[tag=UHCP_CurrentDestination,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.5 ~ 90
execute as @e[tag=UHCP_PhantomDestination,distance=..0.35] if score @s uhcp_id = @e[tag=UHCP_CurrentPhantomClaw,sort=nearest,limit=1] uhcp_id run tag @e[tag=UHCP_CurrentPhantomClaw,sort=nearest,limit=1] add UHCP_MadeToDestination
tag @s remove UHCP_CurrentPhantomClaw


# Run this part only if phantom claw has made it to location
execute unless entity @s[tag=UHCP_MadeToDestination] run return 0
execute as @a if score @s uhcp_id = @e[tag=UHCP_MadeToDestination,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_Owner
execute as @p[tag=UHCP_Owner] as @a if score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_TeamMember
execute at @s as @e[tag=!UHCP_Owner,tag=!UHCP_TeamMember,type=!#uhcp:inanimate_mobs,distance=..2.5] run damage @s 7 uhcp:instant_damage by @a[tag=UHCP_Owner,sort=nearest,limit=1]
particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.1 1 normal
particle enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.1 100 normal
playsound item.trident.return master @a[distance=..4] ~ ~ ~ 1 1 0.75
scoreboard players set @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_a_stack 0
kill @e[tag=UHCP_PhantomDestination,sort=nearest,limit=1]
data merge entity @s {teleport_duration:3}
tag @a remove UHCP_Owner
tag @s remove UHCP_MadeToDestination
tag @s remove UHCP_FlyingTowardsTarget

