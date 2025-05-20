execute as @s[tag=UHCP_Radiant] run return run function uhcp:relics/web_o_rang/radiant/end
playsound minecraft:item.armor.equip_chain master @a[distance=..4] ~ ~ ~ 1 0.5 1

execute as @s[tag=!UHCP_WebORangLobby] run function uhcp:relics/web_o_rang/catch
execute on passengers run kill @s
kill @s
