advancement revoke @s only uhcp:augments/reset_panda
tag @s add UHCP_Owner
execute as @e[tag=UHCP_KungfuPanda] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id at @s run function uhcp:entity/instant_kill
attribute @s minecraft:player.entity_interaction_range modifier remove 606e0f11-7483-4e73-828c-b588dd46f162
attribute @s minecraft:generic.scale modifier remove 46eca67f-7103-4d35-a3b7-1576bf42ca48
attribute @s minecraft:generic.armor modifier remove aca4cdb1-6fb8-494f-8700-5dcac4742191
effect clear @s invisibility
tag @s remove UHCP_Owner
tag @s remove UHCP_IsPanda