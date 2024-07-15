# Turn patron augments on
execute if score %patrons_def uhcp_settings matches 1 unless score %tier uhcp_aug_tier matches -1 run return run function uhcp:settings/reset/patrons/on

# Turn patron augments off
scoreboard players set %patrons uhcp_settings 0
scoreboard players reset @a patron

tag @a add UHCP_DisableReset
item replace entity @a[gamemode=!creative] container.1 with minecraft:air
tag @a remove UHCP_DisableReset
