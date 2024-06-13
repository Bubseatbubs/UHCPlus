# Check player inventory
execute store result score %sL_tot uhcp_itemCount if items entity @s armor.* #uhcp:tools
execute store result score @s uhcp_initStatus if items entity @s container.* #uhcp:tools
scoreboard players operation %sL_tot uhcp_itemCount += @s uhcp_initStatus
execute store result score @s uhcp_initStatus if items entity @s weapon.offhand #uhcp:tools
scoreboard players operation %sL_tot uhcp_itemCount += @s uhcp_initStatus
execute store result score %sL_sub uhcp_itemCount if items entity @s armor.* #uhcp:tools[minecraft:custom_data~{solo_level:1b}]
execute store result score @s uhcp_initStatus if items entity @s container.* #uhcp:tools[minecraft:custom_data~{solo_level:1b}]
scoreboard players operation %sL_sub uhcp_itemCount += @s uhcp_initStatus
execute store result score @s uhcp_initStatus if items entity @s weapon.offhand #uhcp:tools[minecraft:custom_data~{solo_level:1b}]
scoreboard players operation %sL_sub uhcp_itemCount += @s uhcp_initStatus

# Remove normal tools
execute if score %sL_tot uhcp_itemCount > %sL_sub uhcp_itemCount run function uhcp:augments/effects/prismatic/sololeveling/inventory/find

# Upgrade tools
execute if entity @s[tag=UHCP_SLUpg] run function uhcp:augments/effects/prismatic/sololeveling/upgrade

# Modify inventory
execute if entity @s[tag=UHCP_SLModify] in uhcp:main run function uhcp:augments/effects/prismatic/sololeveling/inventory/modify

# End
advancement revoke @s only uhcp:augments/solo_level
