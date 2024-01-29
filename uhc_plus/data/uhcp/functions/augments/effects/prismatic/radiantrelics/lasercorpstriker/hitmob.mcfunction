#tag @s add UHCP_Lasercorp_Damage
say hi
#execute as @a[scores={uhcp_a_selectedAugment=235}] if score @s uhcp_team = @e[tag=UHCP_Lasercorp_Damage,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_Owner
#damage @e 4 magic by @a[tag=UHCP_Owner,sort=nearest,limit=1]
#tag @a remove UHCP_Owner
#tag @e remove UHCP_Lasercorp_Damage

damage @s 4 magic