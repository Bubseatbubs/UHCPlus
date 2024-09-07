# Roll gold patron augment
scoreboard players operation @s uhcp_aug_patron = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_aug_patron
function uhcp:augments/roll/gold/patron/loot
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.7 from entity @s container.3
