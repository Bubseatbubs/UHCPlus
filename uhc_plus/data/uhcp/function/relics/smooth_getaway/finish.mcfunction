scoreboard players set @s uhcp_leave 1
function uhcp:entity/armor/load_armor
tag @s remove UHCP_SmoothGetaway

scoreboard players set %current_damage uhcp_aug_durability 0
scoreboard players set @s uhcp_leave 1000
execute if score @s uhcp_relic_sg_radiant matches 1.. run function uhcp:relics/smooth_getaway/radiant/return
execute if score @s uhcp_relic_sg matches 1.. run function uhcp:relics/smooth_getaway/return
scoreboard players reset @s uhcp_leave
