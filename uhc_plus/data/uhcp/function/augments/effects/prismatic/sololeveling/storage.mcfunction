# Store Inventory
data modify storage uhcp:solo_level Inventory set from entity @s Inventory
data modify storage uhcp:solo_level equipment set from entity @s equipment
execute if data storage uhcp:solo_level equipment.feet run function uhcp:augments/effects/prismatic/sololeveling/storage/feet
execute if data storage uhcp:solo_level equipment.legs run function uhcp:augments/effects/prismatic/sololeveling/storage/legs
execute if data storage uhcp:solo_level equipment.chest run function uhcp:augments/effects/prismatic/sololeveling/storage/chest
execute if data storage uhcp:solo_level equipment.head run function uhcp:augments/effects/prismatic/sololeveling/storage/head
execute unless data storage uhcp:solo_level equipment.offhand run return fail

# Append offhand
data modify storage uhcp:solo_level equipment.offhand.Slot set value -106b
data modify storage uhcp:solo_level Inventory append from storage uhcp:solo_level equipment.offhand
