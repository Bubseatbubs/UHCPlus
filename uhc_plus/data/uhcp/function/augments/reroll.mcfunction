# Replace augment selection item with reroll option
function uhcp:augments/reroll/determine
playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 1.2 1
advancement revoke @s only uhcp:augments/chosen_item
