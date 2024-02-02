##
# Returns an item to the correct location in a player's inventory
##

tag @s add UHCP_DisableChoose
execute at @s in uhcp:main run setblock 0 0 0 barrel

# Add item to barrel
execute in uhcp:main as @s[nbt={Inventory:[{Slot:103b}]}] run item replace block 0 0 0 container.0 from entity @s armor.head
execute in uhcp:main as @s[nbt={Inventory:[{Slot:102b}]}] run item replace block 0 0 0 container.0 from entity @s armor.chest
execute in uhcp:main as @s[nbt={Inventory:[{Slot:101b}]}] run item replace block 0 0 0 container.0 from entity @s armor.legs
execute in uhcp:main as @s[nbt={Inventory:[{Slot:100b}]}] run item replace block 0 0 0 container.0 from entity @s armor.feet
execute in uhcp:main as @s[nbt={Inventory:[{Slot:-106b}]}] run item replace block 0 0 0 container.0 from entity @s weapon.offhand

# Replace empty slot with item
execute in uhcp:main unless entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s container.3 from block 0 0 0 container.0
execute in uhcp:main unless entity @s[nbt={Inventory:[{Slot:4b}]}] run item replace entity @s container.4 from block 0 0 0 container.0
execute in uhcp:main unless entity @s[nbt={Inventory:[{Slot:5b}]}] run item replace entity @s container.5 from block 0 0 0 container.0

# Clear filled slots
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.offhand with air

# Reform Glass
clear @s black_stained_glass_pane
function uhcp:augments/generatepanes

tag @s remove UHCP_DisableChoose

