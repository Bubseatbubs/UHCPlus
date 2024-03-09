# In Nether
scoreboard players set %uhcp_compassB uhcp_itemInv 0
execute as @a[predicate=uhcp:dimensions/minecraft/the_nether,scores={uhcp_initStatus=1..},sort=nearest] unless score @s uhcp_initStatus = @a[tag=UHCP_CTrack,limit=1] uhcp_initStatus at @s run function uhcp:compass/offhand/minecraft/the_nether/target
execute if score %uhcp_compassB uhcp_itemInv matches 0 run function uhcp:compass/offhand/none
execute if score %uhcp_compassB uhcp_itemInv matches 1 run function uhcp:compass/offhand/minecraft/the_nether/modify
