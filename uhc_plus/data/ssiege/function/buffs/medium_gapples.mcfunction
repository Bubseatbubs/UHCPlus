# This function modifies all golden apples in a player's inventory to eat 15% faster
execute unless score %mode uhcp_settings matches 1 run return fail
advancement revoke @s only ssiege:inventory_changed

# Check and modify hotbar slots (0-8)
execute if items entity @s hotbar.0 minecraft:golden_apple run item modify entity @s hotbar.0 ssiege:make_medium
execute if items entity @s hotbar.1 minecraft:golden_apple run item modify entity @s hotbar.1 ssiege:make_medium
execute if items entity @s hotbar.2 minecraft:golden_apple run item modify entity @s hotbar.2 ssiege:make_medium
execute if items entity @s hotbar.3 minecraft:golden_apple run item modify entity @s hotbar.3 ssiege:make_medium
execute if items entity @s hotbar.4 minecraft:golden_apple run item modify entity @s hotbar.4 ssiege:make_medium
execute if items entity @s hotbar.5 minecraft:golden_apple run item modify entity @s hotbar.5 ssiege:make_medium
execute if items entity @s hotbar.6 minecraft:golden_apple run item modify entity @s hotbar.6 ssiege:make_medium
execute if items entity @s hotbar.7 minecraft:golden_apple run item modify entity @s hotbar.7 ssiege:make_medium
execute if items entity @s hotbar.8 minecraft:golden_apple run item modify entity @s hotbar.8 ssiege:make_medium

# Check and modify main inventory slots (0-26, which corresponds to inventory.0 through inventory.26)
execute if items entity @s inventory.0 minecraft:golden_apple run item modify entity @s inventory.0 ssiege:make_medium
execute if items entity @s inventory.1 minecraft:golden_apple run item modify entity @s inventory.1 ssiege:make_medium
execute if items entity @s inventory.2 minecraft:golden_apple run item modify entity @s inventory.2 ssiege:make_medium
execute if items entity @s inventory.3 minecraft:golden_apple run item modify entity @s inventory.3 ssiege:make_medium
execute if items entity @s inventory.4 minecraft:golden_apple run item modify entity @s inventory.4 ssiege:make_medium
execute if items entity @s inventory.5 minecraft:golden_apple run item modify entity @s inventory.5 ssiege:make_medium
execute if items entity @s inventory.6 minecraft:golden_apple run item modify entity @s inventory.6 ssiege:make_medium
execute if items entity @s inventory.7 minecraft:golden_apple run item modify entity @s inventory.7 ssiege:make_medium
execute if items entity @s inventory.8 minecraft:golden_apple run item modify entity @s inventory.8 ssiege:make_medium
execute if items entity @s inventory.9 minecraft:golden_apple run item modify entity @s inventory.9 ssiege:make_medium
execute if items entity @s inventory.10 minecraft:golden_apple run item modify entity @s inventory.10 ssiege:make_medium
execute if items entity @s inventory.11 minecraft:golden_apple run item modify entity @s inventory.11 ssiege:make_medium
execute if items entity @s inventory.12 minecraft:golden_apple run item modify entity @s inventory.12 ssiege:make_medium
execute if items entity @s inventory.13 minecraft:golden_apple run item modify entity @s inventory.13 ssiege:make_medium
execute if items entity @s inventory.14 minecraft:golden_apple run item modify entity @s inventory.14 ssiege:make_medium
execute if items entity @s inventory.15 minecraft:golden_apple run item modify entity @s inventory.15 ssiege:make_medium
execute if items entity @s inventory.16 minecraft:golden_apple run item modify entity @s inventory.16 ssiege:make_medium
execute if items entity @s inventory.17 minecraft:golden_apple run item modify entity @s inventory.17 ssiege:make_medium
execute if items entity @s inventory.18 minecraft:golden_apple run item modify entity @s inventory.18 ssiege:make_medium
execute if items entity @s inventory.19 minecraft:golden_apple run item modify entity @s inventory.19 ssiege:make_medium
execute if items entity @s inventory.20 minecraft:golden_apple run item modify entity @s inventory.20 ssiege:make_medium
execute if items entity @s inventory.21 minecraft:golden_apple run item modify entity @s inventory.21 ssiege:make_medium
execute if items entity @s inventory.22 minecraft:golden_apple run item modify entity @s inventory.22 ssiege:make_medium
execute if items entity @s inventory.23 minecraft:golden_apple run item modify entity @s inventory.23 ssiege:make_medium
execute if items entity @s inventory.24 minecraft:golden_apple run item modify entity @s inventory.24 ssiege:make_medium
execute if items entity @s inventory.25 minecraft:golden_apple run item modify entity @s inventory.25 ssiege:make_medium
execute if items entity @s inventory.26 minecraft:golden_apple run item modify entity @s inventory.26 ssiege:make_medium


# Check and modify mainhand/offhand slot
execute if items entity @s weapon.mainhand minecraft:golden_apple run item modify entity @s weapon.mainhand ssiege:make_medium
execute if items entity @s weapon.offhand minecraft:golden_apple run item modify entity @s weapon.offhand ssiege:make_medium
