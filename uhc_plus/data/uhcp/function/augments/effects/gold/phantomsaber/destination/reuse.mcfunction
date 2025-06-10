# New destination for existing marker
execute at @n[tag=UHCP_PhantomTarget] run tp @s ~ ~1.5 ~
tag @e remove UHCP_PhantomTarget
function uhcp:augments/effects/gold/phantomsaber/destination/search
tag @s remove UHCP_Owner
