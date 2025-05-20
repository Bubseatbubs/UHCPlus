# Locate nearest trackable candidate
execute at @s as @a[scores={uhcp_initStatus=1..},distance=..42426385,sort=nearest] unless score @s uhcp_initStatus = @a[tag=UHCP_CTrack,limit=1] uhcp_initStatus run return run function uhcp:compass/dimension/target with storage uhcp:compass Current
return 1
