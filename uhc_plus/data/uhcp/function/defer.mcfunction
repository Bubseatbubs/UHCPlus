# Arrow limit
execute as @a[tag=UHCP_ArrowCheck] at @s run function uhcp:arrow_limit/check
tag @a remove UHCP_ArrowCheck

# Cobweb limit
execute as @a[tag=UHCP_CobwebCheck] at @s run function uhcp:cobweb_limit/check
tag @a remove UHCP_CobwebCheck

# Diamond in the Rough
execute as @a[tag=UHCP_DiamondRough] run function uhcp:augments/effects/gold/diamondsintherough/convert

# Planned Economy
execute as @a[tag=UHCP_PlannedEcon] at @s run function uhcp:augments/effects/gold/plannedeconomy/init

# Unmark players
tag @a remove UHCP_Defer
