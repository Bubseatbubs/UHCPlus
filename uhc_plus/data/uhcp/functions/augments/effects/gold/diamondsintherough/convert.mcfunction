execute store result score @s uhcp_initStatus run clear @s minecraft:coal
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/diamondsintherough/coal
execute store result score @s uhcp_initStatus run clear @s minecraft:coal_block
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/diamondsintherough/block
advancement revoke @s only uhcp:augments/diamonds_in_the_rough
