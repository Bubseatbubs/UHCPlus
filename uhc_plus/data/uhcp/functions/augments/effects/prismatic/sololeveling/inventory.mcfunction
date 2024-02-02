# Check player inventory
execute store result score %uhcp_sLTot uhcp_itemCount run clear @s #uhcp:tools 0
execute store result score %uhcp_sLSub uhcp_itemCount run clear @s #uhcp:tools{solo_level:1b} 0

# Remove normal tools
execute if score %uhcp_sLTot uhcp_itemCount > %uhcp_sLSub uhcp_itemCount run function uhcp:augments/effects/prismatic/sololeveling/inventory/normal/find

# Upgrade tools
execute as @s[tag=UHCP_SLUpg] run function uhcp:augments/effects/prismatic/sololeveling/upgrade

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level
