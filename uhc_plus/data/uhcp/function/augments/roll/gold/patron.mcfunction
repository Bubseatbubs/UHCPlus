# Roll gold patron augment
execute unless score %patrons uhcp_settings matches 1 run return run item replace entity @s container.3 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
scoreboard players operation @s uhcp_aug_patron = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_aug_patron
function uhcp:augments/roll/gold/patron/loot
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.7 from entity @s container.3
