# Case: reroll was selected; begin reroll process
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_augReroll:1b}] run return run function uhcp:augments/reroll

# Case: augment selected
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/select

# Case: clicked on glass pane
item replace entity @s player.cursor with minecraft:air
function uhcp:augments/generate/panes
function uhcp:augments/retry
