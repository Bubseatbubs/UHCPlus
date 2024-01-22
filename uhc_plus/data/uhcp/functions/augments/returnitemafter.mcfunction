# Returns item to player's inventory if black stained glass was selected and redos augment selection
# Disable options from being selected while function is running
tag @s add UHCP_DisableChoose
say black stained glass selected, returning items
clear @s black_stained_glass_pane


# Clear filled slots
item replace entity @s weapon.offhand with air

# Reform Glass
clear @s black_stained_glass_pane
item replace entity @s hotbar.0 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass1:1b} 1
item replace entity @s hotbar.1 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass2:1b} 1
item replace entity @s hotbar.2 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass3:1b} 1
item replace entity @s hotbar.3 from block ~ -64 ~ container.0
item replace entity @s hotbar.4 from block ~ -64 ~ container.1
item replace entity @s hotbar.5 from block ~ -64 ~ container.2
item replace entity @s hotbar.6 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass4:1b} 1
item replace entity @s hotbar.7 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass5:1b} 1
item replace entity @s hotbar.8 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass6:1b} 1
item replace entity @s inventory.0 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass7:1b} 1
item replace entity @s inventory.1 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass8:1b} 1
item replace entity @s inventory.2 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass9:1b} 1
item replace entity @s inventory.3 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass10:1b} 1
item replace entity @s inventory.4 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass11:1b} 1
item replace entity @s inventory.5 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass12:1b} 1
item replace entity @s inventory.6 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass13:1b} 1
item replace entity @s inventory.7 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass14:1b} 1
item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass15:1b} 1
item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass16:1b} 1
item replace entity @s inventory.10 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass17:1b} 1
item replace entity @s inventory.11 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass18:1b} 1
item replace entity @s inventory.12 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass19:1b} 1
item replace entity @s inventory.13 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass20:1b} 1
item replace entity @s inventory.14 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass21:1b} 1
item replace entity @s inventory.15 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass22:1b} 1
item replace entity @s inventory.16 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass23:1b} 1
item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass24:1b} 1
item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass25:1b} 1
item replace entity @s inventory.19 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass26:1b} 1
item replace entity @s inventory.20 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass27:1b} 1
item replace entity @s inventory.21 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass28:1b} 1
item replace entity @s inventory.22 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass29:1b} 1
item replace entity @s inventory.23 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass30:1b} 1
item replace entity @s inventory.24 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass31:1b} 1
item replace entity @s inventory.25 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass32:1b} 1
item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'{"text":"Skip Option"}',Lore:['{"text":"Choose this item to skip the "}','{"text":"selection for the round."}']},skipoption:1b,glass33:1b} 1

tag @s remove UHCP_DisableChoose
tag @s add UHCP_ChoosingItem

