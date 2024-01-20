# In End
scoreboard players set %uhcp_compassB uhcp_itemInv 0
execute as @a[predicate=uhcp:dimensions/minecraft/the_end,scores={uhcp_team=1..64},sort=nearest,limit=1] unless score @s uhcp_team = @a[tag=UHCP_CTrack,limit=1] uhcp_team at @s run function uhcp:compass/both/minecraft/the_end/target
execute if score %uhcp_compassB uhcp_itemInv matches 0 run function uhcp:compass/both/minecraft/the_end/none
execute if score %uhcp_compassB uhcp_itemInv matches 1 run function uhcp:compass/both/minecraft/the_end/modify
