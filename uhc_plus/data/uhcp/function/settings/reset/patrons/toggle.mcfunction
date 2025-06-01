# Turn patron augments on
execute if score %patrons_def uhcp_settings matches 1 unless score %tier uhcp_aug_tier matches -1 run return run function uhcp:settings/reset/patrons/on

# Turn patron augments off
scoreboard players set %patrons uhcp_settings 0
scoreboard players reset @a patron

scoreboard players set @a uhcp_leave 1000
item replace entity @a[gamemode=!creative] container.1 with minecraft:air
scoreboard players reset @a uhcp_leave
