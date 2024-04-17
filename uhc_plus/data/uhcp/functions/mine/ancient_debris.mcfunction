# Grant experience orbs
scoreboard players remove @s uhcp_mine_ancientDebris 1

execute at @s positioned ^ ^ ^1 run function uhcp:mine/item/netherite_scrap

execute if score @s uhcp_mine_ancientDebris matches ..0 run return fail
function uhcp:mine/ancient_debris
