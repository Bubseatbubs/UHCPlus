# Teleport block to player's position
execute as @a[predicate=uhcp:augments/prop_hunt/player] if score @s uhcp_id = @e[tag=UHCP_CurrentProp,limit=1] uhcp_id at @s positioned ~ ~0.2 ~ align xyz run return run tp @e[tag=UHCP_CurrentProp,limit=1] ~ ~ ~ 0 0
kill @s
