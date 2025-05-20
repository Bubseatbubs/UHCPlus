# Move along return path
tag @s add UHCP_CurrentSlinger
function uhcp:relics/web_o_rang/owner
rotate @s facing entity @p[tag=UHCP_Owner] eyes
execute at @s run rotate @s ~ ~3
tp @s ^ ^ ^1.5
execute if entity @a[tag=UHCP_Owner,distance=..1.75] run return run function uhcp:relics/web_o_rang/near

function uhcp:relics/web_o_rang/cobweb
tag @s remove UHCP_CurrentSlinger
tag @a remove UHCP_Owner
