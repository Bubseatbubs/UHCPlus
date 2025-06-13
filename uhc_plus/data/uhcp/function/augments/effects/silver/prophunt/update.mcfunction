tag @s add UHCP_CurrentProp
execute as @a[scores={uhcp_augment=110}] if score @s uhcp_id = @n[tag=UHCP_CurrentProp] uhcp_id at @s positioned ~ ~0.2 ~ align xyz run tp @n[tag=UHCP_CurrentProp] ~ ~ ~ 0 0
execute as @a[scores={uhcp_augment=348}] if score @s uhcp_id = @n[tag=UHCP_CurrentProp] uhcp_id at @s positioned ~ ~0.2 ~ align xyz run tp @n[tag=UHCP_CurrentProp] ~ ~ ~ 0 0
tag @s remove UHCP_CurrentProp
