# As destination marker
execute at @s run rotate @s ~15 ~
execute facing entity @s feet run tp @n[tag=UHCP_CurrentPhantom] ^ ^ ^0.5 ~ 90
execute at @s as @n[tag=UHCP_CurrentPhantom,distance=0.35..] run return run function uhcp:augments/effects/gold/phantomsaber/flight/unmark

# Upon reaching destination
execute as @n[tag=UHCP_CurrentPhantom] at @s run function uhcp:augments/effects/gold/phantomsaber/flight/end
kill @s
tag @a remove UHCP_Owner
