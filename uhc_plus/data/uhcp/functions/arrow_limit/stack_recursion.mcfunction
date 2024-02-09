execute if score %init uhcp_arrowCount matches ..64 store result storage uhcp:arrow arrow.Count int 1 run scoreboard players get %init uhcp_arrowCount
execute if score %init uhcp_arrowCount matches 64.. store result storage uhcp:arrow arrow.Count int 1 run scoreboard players get %stack uhcp_arrowCount
data modify entity @e[tag=UHCP_New,sort=nearest,limit=1] Item.Count set from storage uhcp:arrow arrow.Count
tag @e remove UHCP_New

execute if score %init uhcp_arrowCount matches 64.. run scoreboard players remove %init uhcp_arrowCount 64
execute if score %init uhcp_arrowCount matches 0.. run function uhcp:arrow_limit/stack_recursion