execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_reroll_slot:1b}] run tag @s add UHCP_AugmentRerollSlot1
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_reroll_slot:2b}] run tag @s add UHCP_AugmentRerollSlot2
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_reroll_slot:3b}] run tag @s add UHCP_AugmentRerollSlot3

playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 1.2 1
function uhcp:augments/regenerate
tag @s remove UHCP_DisableChoose

advancement revoke @s only uhcp:augments/chosen_item
