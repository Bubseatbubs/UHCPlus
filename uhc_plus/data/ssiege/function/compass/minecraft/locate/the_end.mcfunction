# Locate nearest trackable candidate
execute at @s as @a[predicate=uhcp:dimensions/minecraft/the_end,scores={uhcp_initStatus=1..},sort=nearest] unless score @s uhcp_initStatus = @a[tag=UHCP_CTrack,limit=1] uhcp_initStatus run return run function uhcp:compass/minecraft/target/the_end
return 1
