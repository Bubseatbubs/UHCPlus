# In the current version there is a bug that makes it so you can't set wolf max health right away
# This is a temporary fix for that issue
# Link: https://bugs.mojang.com/browse/MC/issues/MC-278994
$attribute @s minecraft:max_health base set $(hp)
# Yes I tried adding ```execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team``` here and it somehow broke it
# Don't really understand how it works but this is how it is done??