tag @s add UHCP_CurrentPhantomSaber
execute as @a if score @s uhcp_id = @e[tag=UHCP_CurrentPhantomSaber,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_PhantomSaberOwner
execute unless entity @a[x_rotation=-90..-75,tag=UHCP_PhantomSaberOwner,sort=nearest,limit=1] at @a[tag=UHCP_PhantomSaberOwner,sort=nearest,limit=1] positioned ~ ~2.5 ~ run tp @s ~ ~ ~ ~-45 90
execute at @a[x_rotation=-90..-75,tag=UHCP_PhantomSaberOwner,sort=nearest,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ ~-45 90
execute unless entity @a[tag=UHCP_PhantomSaberOwner] run kill @s
tag @s remove UHCP_CurrentPhantomSaber
tag @a remove UHCP_PhantomSaberOwner
