advancement revoke @s only uhcp:relics/hit
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run function uhcp:relics/soulflame_saber/hit
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:5b}] at @s run function uhcp:relics/the_harvester/hit