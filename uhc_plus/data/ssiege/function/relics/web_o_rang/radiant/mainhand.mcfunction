item replace entity @s weapon.mainhand with minecraft:air

# Summon Web-o-Rangs
execute anchored eyes run function uhcp:relics/web_o_rang/radiant/summon

# Set WebORang IDs
scoreboard players operation @e[tag=UHCP_New] uhcp_id = @s uhcp_id
execute as @e[tag=UHCP_New] rotated as @p[tag=UHCP_Owner] run rotate @s ~ ~
tag @e remove UHCP_New
tag @s remove UHCP_Owner
