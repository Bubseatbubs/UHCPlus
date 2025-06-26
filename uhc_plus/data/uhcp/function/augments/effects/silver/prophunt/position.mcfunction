# Teleport block to player's position
execute as @a[predicate=uhcp:augments/prop_hunt/player] if score @s uhcp_id = @n[tag=UHCP_CurrentProp] uhcp_id at @s positioned ~ ~0.2 ~ align xyz run return run tp @n[tag=UHCP_CurrentProp] ~ ~ ~ 0 0
kill @s
