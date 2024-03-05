tag @s add UHCP_CurrentPhantomClaw
execute as @a if score @s uhcp_id = @e[tag=UHCP_CurrentPhantomClaw,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_Owner
execute at @a[tag=UHCP_Owner,sort=nearest,limit=1] positioned ~ ~2.5 ~ run tp @s ~ ~ ~ ~-45 90
execute unless entity @a[tag=UHCP_Owner] run kill @s
tag @s remove UHCP_CurrentPhantomClaw
tag @a remove UHCP_Owner