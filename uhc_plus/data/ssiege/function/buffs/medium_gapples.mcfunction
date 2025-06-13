# This function modifies all golden apples in a player's inventory to eat 15%

# Check and modify hotbar slots (0-8)
execute if items entity @s hotbar.* minecraft:golden_apple run item modify entity @s hotbar.0 ssiege:make_medium

# Check and modify main inventory slots (0-26, which corresponds to inventory.0 through inventory.26)
execute if items entity @s inventory.* minecraft:golden_apple run item modify entity @s inventory.0 ssiege:make_medium

# Check and modify mainhand/offhand slot
execute if items entity @s weapon.mainhand minecraft:golden_apple run item modify entity @s weapon.mainhand ssiege:make_medium
execute if items entity @s weapon.offhand minecraft:golden_apple run item modify entity @s weapon.offhand ssiege:make_medium
