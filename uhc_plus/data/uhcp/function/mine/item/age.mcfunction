# Age items
execute store result score @s uhcp_initStatus run data get entity @s Age
execute if score @s uhcp_initStatus > %item_age uhcp_initStatus run return fail

scoreboard players operation %item_age uhcp_initStatus = @s uhcp_initStatus
tag @e remove UHCP_ItemYoungest
tag @s add UHCP_ItemYoungest
