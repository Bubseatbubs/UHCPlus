execute as @s[tag=UHCP_Radiant] on passengers run kill @s
kill @s[tag=UHCP_Radiant]

tag @s add UHCP_CurrentSlinger
execute as @s[tag=!UHCP_Radiant,tag=!UHCP_WebORangLobby] run function uhcp:entity/items/loot/summon
execute as @s[tag=!UHCP_ReturnRadiant] as @a if score @s uhcp_id = @n[tag=UHCP_CurrentSlinger] uhcp_id run loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/web_o_rang/damaged
execute as @s[tag=UHCP_ReturnRadiant] as @a if score @s uhcp_id = @n[tag=UHCP_CurrentSlinger] uhcp_id run loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/web_o_rang/damaged_radiant
execute as @s[tag=!UHCP_Radiant] run function uhcp:entity/items/loot/finish

tag @s remove UHCP_CurrentSlinger
playsound minecraft:item.armor.equip_chain master @a[distance=..4] ~ ~ ~ 1 0.5 1
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:cobweb
execute on passengers run kill @s
kill @s
