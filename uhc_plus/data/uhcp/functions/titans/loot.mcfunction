setblock ~ ~ ~ chest destroy
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 reinforced_deepslate
loot insert ~ ~ ~ loot uhcp:titans/loot
loot insert ~ ~ ~ loot uhcp:titans/loot

execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:1b}] run loot insert ~ ~ ~ loot uhcp:titans/arachne
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:2b}] run loot insert ~ ~ ~ loot uhcp:titans/gigantus
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:3b}] run loot insert ~ ~ ~ loot uhcp:titans/fenrir
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:4b}] run loot insert ~ ~ ~ loot uhcp:titans/bone_colossus
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:5b}] run loot insert ~ ~ ~ loot uhcp:titans/giga_creeper
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:6b}] run loot insert ~ ~ ~ loot uhcp:titans/triton
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:7b}] run loot insert ~ ~ ~ loot uhcp:titans/seraphim
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:8b}] run loot insert ~ ~ ~ loot uhcp:titans/ferrum
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:9b}] run loot insert ~ ~ ~ loot uhcp:titans/infernus
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:10b}] run loot insert ~ ~ ~ loot uhcp:titans/tyrion
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:11b}] run loot insert ~ ~ ~ loot uhcp:titans/gerald
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:12b}] run loot insert ~ ~ ~ loot uhcp:titans/gallie

particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
playsound ui.toast.challenge_complete master @a[distance=..12] ~ ~ ~ 1 1 1
playsound minecraft:block.trial_spawner.eject_item master @a[distance=..16] ~ ~ ~ 1 1 0.75
kill @s