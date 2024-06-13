scoreboard players add @s uhcp_transformDuration 1
tag @s add UHCP_Owner
execute as @e[tag=UHCP_MagicRabbit] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run tp @s @p[tag=UHCP_Owner]

execute if score @s uhcp_transformDuration matches 200.. run function uhcp:consumables/magic_trick/reset