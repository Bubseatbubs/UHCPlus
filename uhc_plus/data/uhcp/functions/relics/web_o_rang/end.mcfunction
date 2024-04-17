execute if entity @s[tag=UHCP_Radiant] on passengers run kill @s
execute if entity @s[tag=UHCP_Radiant] run kill @s

tag @s add UHCP_CurrentSlinger
execute unless entity @s[tag=UHCP_ReturnRadiant] as @a if score @s uhcp_id = @e[tag=UHCP_CurrentSlinger,sort=nearest,limit=1] uhcp_id run loot give @s loot uhcp:relics/web_o_rang/damaged
execute if entity @s[tag=UHCP_ReturnRadiant] as @a if score @s uhcp_id = @e[tag=UHCP_CurrentSlinger,sort=nearest,limit=1] uhcp_id run loot give @s loot uhcp:relics/web_o_rang/damaged_radiant
tag @s remove UHCP_CurrentSlinger
playsound item.armor.equip_chain master @a[distance=..4] ~ ~ ~ 1 0.5 1
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace cobweb
execute on passengers run kill @s
kill @s