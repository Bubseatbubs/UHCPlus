function uhcp:entity/armor/load_armor
tag @s add UHCP_Owner
execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run kill @s