##
# Reforms BSG panes if selected during augment selection, and returns player's choices
##

tag @s add UHCP_DisableChoose
scoreboard players reset @s uhcp_a_selectedAugment
clear @s black_stained_glass_pane


# Clear filled slots
item replace entity @s weapon.offhand with air

# Return choices
execute in uhcp:main run item replace entity @s hotbar.3 from block 0 -64 0 container.0
execute in uhcp:main run item replace entity @s hotbar.4 from block 0 -64 0 container.1
execute in uhcp:main run item replace entity @s hotbar.5 from block 0 -64 0 container.2

# Reform Glass
clear @s black_stained_glass_pane
function uhcp:augments/generatepanes

tag @s remove UHCP_DisableChoose
tag @s add UHCP_ChoosingItem

