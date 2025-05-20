tag @s add UHCP_Owner
execute if score %pvp uhcp_settings matches ..0 run team leave @s[scores={uhcp_team=15..}]
execute as @e[tag=UHCP_MagicRabbit] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id at @s run function uhcp:entity/instant_kill
attribute @s minecraft:entity_interaction_range modifier remove uhcp:titan_entity_range
attribute @s minecraft:block_interaction_range modifier remove uhcp:rabbit_block_range
attribute @s minecraft:scale modifier remove uhcp:scale
scoreboard players set @s uhcp_leave 1
function uhcp:entity/armor/load_armor
scoreboard players reset @s uhcp_leave
tag @s remove UHCP_Owner
tag @s remove UHCP_IsRabbit
scoreboard players reset @s uhcp_transformDuration
