# Convert coal to diamonds
scoreboard players set @s uhcp_leave 1000

# Coal
execute store result score @s uhcp_initStatus run clear @s minecraft:coal
execute if score @s uhcp_initStatus matches 1.. run return run function uhcp:augments/effects/gold/diamondsintherough/coal/store

# Coal blocks
execute store result score @s uhcp_initStatus run clear @s minecraft:coal_block
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/diamondsintherough/block/store

# End
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/diamonds_in_the_rough
