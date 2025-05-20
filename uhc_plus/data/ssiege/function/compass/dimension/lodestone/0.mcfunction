# Check specific y-level
execute store success score %compass_bool uhcp_itemInv run clone ~ 0 ~ ~ 0 ~ ~ 0 ~ strict replace force
execute if score %compass_bool uhcp_itemInv matches 0 run return 0

execute store success score %compass_bool uhcp_itemInv run clone ~ -1 ~ ~ -1 ~ ~ -1 ~ strict replace force
execute if score %compass_bool uhcp_itemInv matches 1 run return run function uhcp:compass/dimension/lodestone/-1

execute unless block ~ 0 ~ minecraft:bedrock run return 0
data modify storage uhcp:compass Current.height set value 0
function uhcp:compass/dimension/lodestone/dimension with storage uhcp:compass Current
return 1
