# Find youngest item
tag @e remove UHCP_ItemYoungest
scoreboard players reset %item_age uhcp_initStatus
execute as @e[distance=..10,predicate=uhcp:items/iron_ingot] run function uhcp:mine/item/age

execute at @e[tag=UHCP_ItemYoungest,limit=1] run function uhcp:mine/experience/ingot
tag @e remove UHCP_ItemYoungest
