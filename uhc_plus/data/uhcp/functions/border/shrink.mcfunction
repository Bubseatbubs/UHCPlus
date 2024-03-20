# Shrink world border in stages
execute if score %border_stage uhcp_itemCount matches 0 store result score %border_stage uhcp_itemCount run function uhcp:border/shrink/first
execute if score %border_stage uhcp_itemCount matches 1 run function uhcp:border/shrink/second
execute if score %border_stage uhcp_itemCount matches 2 run function uhcp:border/shrink/third
execute if score %border_stage uhcp_itemCount matches 3 run function uhcp:border/final_size

scoreboard players add %border_stage uhcp_itemCount 1
