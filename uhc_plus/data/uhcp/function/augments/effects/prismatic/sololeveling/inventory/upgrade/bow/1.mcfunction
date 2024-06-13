# Upgrade item
data modify storage uhcp:solo_level ItemWork set from storage uhcp:solo_level Item[8][0]
function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/upgrade
tag @s add UHCP_SLModify
tag @s remove UHCP_SLBow
