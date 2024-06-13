# Upgrade item
data modify storage uhcp:solo_level ItemWork set from storage uhcp:solo_level Item[3][5]
function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/upgrade
tag @s add UHCP_SLModify
tag @s remove UHCP_SLShovel
