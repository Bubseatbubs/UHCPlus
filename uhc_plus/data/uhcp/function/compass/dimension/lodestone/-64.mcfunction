# Check specific y-level
execute store success score %compass_bool uhcp_itemInv run clone ~ -64 ~ ~ -64 ~ ~ -64 ~ strict replace force
execute if score %compass_bool uhcp_itemInv matches 0 run return 0

execute store success score %compass_bool uhcp_itemInv run clone ~ -65 ~ ~ -65 ~ ~ -65 ~ strict replace force
execute if score %compass_bool uhcp_itemInv matches 1 run return run function uhcp:compass/dimension/lodestone/-65

execute unless block ~ -64 ~ minecraft:bedrock run return 0
data modify storage uhcp:compass Current.height set value -64
function uhcp:compass/dimension/lodestone/dimension with storage uhcp:compass Current
return 1
