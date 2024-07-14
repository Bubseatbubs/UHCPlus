# Roll until generated
execute store result score @s uhcp_initStatus run loot replace entity @s container.4 loot uhcp:augments/prismatic
execute if score @s uhcp_initStatus matches 0 run function uhcp:augments/roll/prismatic/reroll/1
