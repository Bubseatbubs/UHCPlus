# Unmark fishing rods
scoreboard players set @s uhcp_leave 1000
tag @s remove UHCP_NotCLFishRod
execute if items entity @s weapon.offhand minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s weapon.offhand uhcp:fishing_rod/unmark
execute if items entity @s hotbar.* minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run function uhcp:augments/effects/silver/crazycatlady/fishing_rod/unmark/hotbar

execute unless items entity @s inventory.* minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run return run function uhcp:augments/effects/silver/crazycatlady/fishing_rod/unmark/end
execute if items entity @s container.9 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.9 uhcp:fishing_rod/unmark
execute if items entity @s container.10 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.10 uhcp:fishing_rod/unmark
execute if items entity @s container.11 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.11 uhcp:fishing_rod/unmark
execute if items entity @s container.12 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.12 uhcp:fishing_rod/unmark
execute if items entity @s container.13 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.13 uhcp:fishing_rod/unmark
execute if items entity @s container.14 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.14 uhcp:fishing_rod/unmark
execute if items entity @s container.15 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.15 uhcp:fishing_rod/unmark
execute if items entity @s container.16 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.16 uhcp:fishing_rod/unmark
execute if items entity @s container.17 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.17 uhcp:fishing_rod/unmark
execute if items entity @s container.18 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.18 uhcp:fishing_rod/unmark
execute if items entity @s container.19 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.19 uhcp:fishing_rod/unmark
execute if items entity @s container.20 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.20 uhcp:fishing_rod/unmark
execute if items entity @s container.21 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.21 uhcp:fishing_rod/unmark
execute if items entity @s container.22 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.22 uhcp:fishing_rod/unmark
execute if items entity @s container.23 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.23 uhcp:fishing_rod/unmark
execute if items entity @s container.24 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.24 uhcp:fishing_rod/unmark
execute if items entity @s container.25 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.25 uhcp:fishing_rod/unmark
execute if items entity @s container.26 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.26 uhcp:fishing_rod/unmark
execute if items entity @s container.27 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.27 uhcp:fishing_rod/unmark
execute if items entity @s container.28 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.28 uhcp:fishing_rod/unmark
execute if items entity @s container.29 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.29 uhcp:fishing_rod/unmark
execute if items entity @s container.30 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.30 uhcp:fishing_rod/unmark
execute if items entity @s container.31 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.31 uhcp:fishing_rod/unmark
execute if items entity @s container.32 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.32 uhcp:fishing_rod/unmark
execute if items entity @s container.33 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.33 uhcp:fishing_rod/unmark
execute if items entity @s container.34 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.34 uhcp:fishing_rod/unmark
execute if items entity @s container.35 minecraft:fishing_rod[!minecraft:custom_data~{uhcp_cat_lady:false}] run item modify entity @s container.35 uhcp:fishing_rod/unmark

function uhcp:augments/effects/silver/crazycatlady/fishing_rod/unmark/end
