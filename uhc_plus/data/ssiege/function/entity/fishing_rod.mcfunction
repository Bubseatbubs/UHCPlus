# Prepare fishing rod for marking
execute if items entity @s weapon.mainhand minecraft:fishing_rod run item modify entity @s weapon.mainhand uhcp:fishing_rod/unmark
execute if items entity @s weapon.offhand minecraft:fishing_rod run item modify entity @s weapon.offhand uhcp:fishing_rod/unmark
tag @s add UHCP_FishingRod
