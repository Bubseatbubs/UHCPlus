tag @s add UHCP_CurrentPhantomSaber
execute as @a if score @s uhcp_id = @n[tag=UHCP_CurrentPhantomSaber] uhcp_id run tag @s add UHCP_PhantomSaberOwner
execute unless entity @p[x_rotation=-90..-75,tag=UHCP_PhantomSaberOwner] at @p[tag=UHCP_PhantomSaberOwner] positioned ~ ~2.5 ~ run tp @s ~ ~ ~ ~-45 90
execute at @p[x_rotation=-90..-75,tag=UHCP_PhantomSaberOwner] positioned ~ ~ ~ run tp @s ~ ~ ~ ~-45 90
execute unless entity @a[tag=UHCP_PhantomSaberOwner] run kill @s
tag @s remove UHCP_CurrentPhantomSaber
tag @a remove UHCP_PhantomSaberOwner
