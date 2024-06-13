advancement revoke @s only uhcp:augments/reset_panda
tag @s add UHCP_Owner
execute if score @s uhcp_team matches 15.. if score %pvp uhcp_settings matches ..0 run team leave @s
execute as @e[tag=UHCP_KungfuPanda] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id at @s run function uhcp:entity/instant_kill
attribute @s minecraft:player.entity_interaction_range modifier remove uhcp:titan_entity_range
attribute @s minecraft:generic.scale modifier remove uhcp:panda_scale
attribute @s minecraft:generic.armor modifier remove uhcp:panda_armor
function uhcp:entity/armor/load_armor
effect clear @s minecraft:invisibility
tag @s remove UHCP_Owner
tag @s remove UHCP_IsPanda
