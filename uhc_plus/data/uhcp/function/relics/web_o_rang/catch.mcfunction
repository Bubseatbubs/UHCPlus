# Upon Web-o-Rang's return
tag @s add UHCP_CurrentSlinger
scoreboard players set %current_damage uhcp_aug_durability 0
execute as @s[tag=UHCP_ReturnRadiant] as @a[gamemode=!spectator,sort=nearest] if score @s uhcp_id = @n[tag=UHCP_CurrentSlinger] uhcp_id at @s run return run function uhcp:relics/web_o_rang/radiant/item
execute as @a[gamemode=!spectator,sort=nearest] if score @s uhcp_id = @n[tag=UHCP_CurrentSlinger] uhcp_id at @s run return run function uhcp:relics/web_o_rang/item
