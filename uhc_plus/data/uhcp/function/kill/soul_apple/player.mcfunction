# When attacker is a player
data modify entity @n[tag=UHCP_New] Owner set from entity @s UUID
execute as @n[tag=UHCP_New] run function uhcp:kill/soul_apple/item/exclusive
