# Prepare chest minecart
data merge entity @s {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b}
tag @s add UHCP_StoreAugment
scoreboard players operation @s uhcp_id = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_id
team join no_collision @s

# Roll patron augment
function uhcp:augments/roll/silver/patron

# Roll silver augments
function uhcp:augments/roll/silver/roll/1
function uhcp:augments/roll/silver/roll/2
function uhcp:augments/roll/silver/roll/3

# Roll reroll augments
function uhcp:augments/roll/silver/reroll/1
function uhcp:augments/roll/silver/reroll/2
function uhcp:augments/roll/silver/reroll/3

# Give player rolled augments
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.3 from entity @s container.0
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.4 from entity @s container.1
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.5 from entity @s container.2
