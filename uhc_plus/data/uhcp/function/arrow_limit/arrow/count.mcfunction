# Set count of summoned arrow item
execute store result entity @s Item.count int 1 run scoreboard players get %limit uhcp_arrowCount
function uhcp:arrow_limit/arrow/fewer with entity @s Item
tag @s remove UHCP_New
