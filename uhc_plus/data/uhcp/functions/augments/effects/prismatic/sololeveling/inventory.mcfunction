# Check player inventory
execute store result score %uhcp_sLTot uhcp_itemCount if items entity @s container.* #uhcp:tools
execute store result score %uhcp_sLSub uhcp_itemCount if items entity @s container.* #uhcp:tools{solo_level:1b}

# Remove normal tools
execute if score %uhcp_sLTot uhcp_itemCount > %uhcp_sLSub uhcp_itemCount run function uhcp:augments/effects/prismatic/sololeveling/inventory/find

# Upgrade tools
execute if entity @s[tag=UHCP_SLUpg] run function uhcp:augments/effects/prismatic/sololeveling/upgrade

# Modify inventory
execute if entity @s[tag=UHCP_SLModify] in uhcp:main run function uhcp:augments/effects/prismatic/sololeveling/inventory/modify

# End
advancement revoke @s only uhcp:augments/solo_level
