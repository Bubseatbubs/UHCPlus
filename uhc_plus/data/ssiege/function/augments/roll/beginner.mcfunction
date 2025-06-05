# Roll gold patron augment
function uhcp:augments/roll/gold/patron/loot
scoreboard players set @s uhcp_aug_choosing 0
loot replace entity @s container.3 loot ssiege:augments/beginners_luck
item replace entity @a[scores={tips=1}] container.7 from entity @s container.3