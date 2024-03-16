tag @s add UHCP_Owner
attribute @s generic.scale modifier remove 46eca67f-7103-4d35-a3b7-1576bf42ca48
effect clear @s invisibility
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
execute as @e[tag=UHCP_Prop] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run kill @s
tag @s remove UHCP_Owner