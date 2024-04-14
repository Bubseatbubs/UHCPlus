tag @s add UHCP_Owner
execute if score @s uhcp_team matches 15.. if score %pvp uhcp_settings matches ..0 run team leave @s
execute as @e[tag=UHCP_MagicRabbit] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id at @s run function uhcp:entity/instant_kill
attribute @s minecraft:player.entity_interaction_range modifier remove 606e0f11-7483-4e73-828c-b588dd46f162
attribute @s minecraft:player.block_interaction_range modifier remove f27d9082-575a-4cec-80ab-1baa22414ade
attribute @s minecraft:generic.scale modifier remove 46eca67f-7103-4d35-a3b7-1576bf42ca48
function uhcp:entity/armor/load_armor
effect clear @s invisibility
tag @s remove UHCP_Owner
tag @s remove UHCP_IsRabbit
scoreboard players reset @s uhcp_transformDuration
