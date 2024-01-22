# Returns item to player's inventory (check isselectionvalid.mcfunction for more information)
# Disable options from being selected while function is running
tag @s add disableChoose
execute in minecraft:overworld run setblock 8 -64 8 barrel

# Add item to barrel
execute as @s[nbt={Inventory:[{Slot:103b}]}] run item replace block 8 -64 8 container.0 from entity @s armor.head
execute as @s[nbt={Inventory:[{Slot:102b}]}] run item replace block 8 -64 8 container.0 from entity @s armor.chest
execute as @s[nbt={Inventory:[{Slot:101b}]}] run item replace block 8 -64 8 container.0 from entity @s armor.legs
execute as @s[nbt={Inventory:[{Slot:100b}]}] run item replace block 8 -64 8 container.0 from entity @s armor.feet
execute as @s[nbt={Inventory:[{Slot:-106b}]}] run item replace block 8 -64 8 container.0 from entity @s weapon.offhand

# Replace empty slot with item
execute unless entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s container.3 from block 8 -64 8 container.0
execute unless entity @s[nbt={Inventory:[{Slot:4b}]}] run item replace entity @s container.4 from block 8 -64 8 container.0
execute unless entity @s[nbt={Inventory:[{Slot:5b}]}] run item replace entity @s container.5 from block 8 -64 8 container.0

# Clear filled slots
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.offhand with air
tag @s remove disableChoose
execute in minecraft:overworld run setblock 8 -64 8 air

