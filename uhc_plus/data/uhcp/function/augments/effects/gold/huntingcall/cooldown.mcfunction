# Report and manage cooldown
execute if score @s uhcp_itemCount matches 1.. run return run scoreboard players get @s uhcp_itemCount
scoreboard players set @s uhcp_itemCount 3600
return 0
