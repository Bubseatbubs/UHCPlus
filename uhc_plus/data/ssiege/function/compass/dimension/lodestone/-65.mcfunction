# Check one block above
execute store success score %compass_bool uhcp_itemInv run clone ~ -63 ~ ~ -63 ~ ~ -63 ~ strict replace force
execute if score %compass_bool uhcp_itemInv matches 1 run return 0
data modify storage uhcp:compass Current.height set value -64
function uhcp:compass/dimension/lodestone/dimension with storage uhcp:compass Current
return 1
