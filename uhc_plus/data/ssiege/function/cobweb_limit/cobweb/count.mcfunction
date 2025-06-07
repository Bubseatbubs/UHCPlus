# Set count of summoned arrow item
execute store result entity @s Item.count int 1 run scoreboard players get %limit ssiege_cobwebCount
function ssiege:cobweb_limit/cobweb/fewer with entity @s Item
tag @s remove ssiege_New
