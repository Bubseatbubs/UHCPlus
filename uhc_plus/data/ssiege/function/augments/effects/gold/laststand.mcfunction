execute store result score @s uhcp_initStatus run data get entity @s Health
execute if score @s uhcp_initStatus matches ..9 run effect give @s resistance 1 0 false
execute if score @s uhcp_initStatus matches ..9 run particle electric_spark ~ ~ ~ ~ ~.2 ~ 1 1 normal