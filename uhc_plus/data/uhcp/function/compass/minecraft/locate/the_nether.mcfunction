# Locate nearest trackable candidate
execute as @a[predicate=uhcp:dimensions/minecraft/the_nether,scores={uhcp_initStatus=1..},sort=nearest] unless score @s uhcp_initStatus = @a[tag=UHCP_CTrack,limit=1] uhcp_initStatus run return run function uhcp:compass/minecraft/target/the_nether
return 1
