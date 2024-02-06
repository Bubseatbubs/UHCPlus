# Check player inventory
execute store result score %uhcp_sLTot uhcp_itemCount run clear @s #uhcp:tools 0
execute store result score %uhcp_sLSub uhcp_itemCount run clear @s #uhcp:tools{solo_level:1b} 0

# Remove normal tools
execute if score %uhcp_sLTot uhcp_itemCount > %uhcp_sLSub uhcp_itemCount run function uhcp:augments/effects/prismatic/sololeveling/inventory/normal/find

# Upgrade tools
execute if entity @s[tag=UHCP_SLUpg] run function uhcp:augments/effects/prismatic/sololeveling/upgrade

# Remove tag
tag @s[tag=!UHCP_SLAxe,tag=!UHCP_SLBoots,tag=!UHCP_SLBow,tag=!UHCP_SLChest,tag=!UHCP_SLHelm,tag=!UHCP_SLHoe,tag=!UHCP_SLLegs,tag=!UHCP_SLPick,tag=!UHCP_SLShovel,tag=!UHCP_SLSword] remove UHCP_SLUpg

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level
