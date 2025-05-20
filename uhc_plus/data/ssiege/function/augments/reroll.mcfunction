# Replace augment selection item with reroll option
tag @s add UHCP_LoadAugment
function uhcp:augments/current_store
function uhcp:augments/reroll/determine
tag @e remove UHCP_CurrentStoreAugment
tag @s remove UHCP_LoadAugment

# Finalize
item replace entity @s player.cursor with minecraft:air
playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 1.2 1
advancement revoke @s only uhcp:augments/chosen_item
