# Hit block
tag @s add UHCP_CurrentSlinger
function uhcp:relics/web_o_rang/owner
rotate @s facing entity @p[tag=UHCP_Owner] eyes
execute at @s run rotate @s ~ ~3
execute if entity @a[tag=UHCP_Owner,distance=..1.75] run return run function uhcp:relics/web_o_rang/near_block

scoreboard players set @s uhcp_timer 44
tp @s ^ ^ ^1.5
function uhcp:relics/web_o_rang/cobweb
tag @s remove UHCP_CurrentSlinger
tag @a remove UHCP_Owner
