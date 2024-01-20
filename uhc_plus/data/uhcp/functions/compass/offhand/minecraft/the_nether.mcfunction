# In Nether
scoreboard players set %uhcp_compassB uhcp_itemInv 0
execute if score %uhcp_compassB uhcp_itemInv matches 0 as @a[predicate=uhcp:dimensions/minecraft/the_nether,scores={uhcp_team=1..64},sort=nearest] unless score @s uhcp_team = @a[tag=UHCP_CTrack,limit=1] uhcp_team at @s run function uhcp:compass/offhand/minecraft/the_nether/target
execute if score %uhcp_compassB uhcp_itemInv matches 1 run function uhcp:compass/offhand/minecraft/the_nether/modify
