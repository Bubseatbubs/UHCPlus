data merge entity @s {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Tags:["UHCP_StoreAugment"]}
scoreboard players operation @s uhcp_id = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_id
item replace entity @s container.0 from entity @a[tag=UHCP_GeneratingAugments,limit=1] hotbar.3
item replace entity @s container.1 from entity @a[tag=UHCP_GeneratingAugments,limit=1] hotbar.4
item replace entity @s container.2 from entity @a[tag=UHCP_GeneratingAugments,limit=1] hotbar.5
item replace entity @s container.3 from entity @a[tag=UHCP_GeneratingAugments,limit=1] hotbar.7

item replace entity @s container.4 from entity @a[tag=UHCP_GeneratingAugments,limit=1] container.30
item replace entity @s container.5 from entity @a[tag=UHCP_GeneratingAugments,limit=1] container.31
item replace entity @s container.6 from entity @a[tag=UHCP_GeneratingAugments,limit=1] container.32

execute in uhcp:main run tp @s 0 32 0
team join no_collision @s 
