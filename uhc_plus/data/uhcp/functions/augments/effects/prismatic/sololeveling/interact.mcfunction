# Close GUI for player
execute if entity @a[gamemode=survival,scores={uhcp_a_selectedAugment=222}] run function uhcp:augments/effects/prismatic/sololeveling/interact/interact

# Reset player
# Remove three below when in pack format with new advancements
scoreboard players reset @s uhcp_anvil
scoreboard players reset @s uhcp_grindstone
scoreboard players reset @s uhcp_smithingTable
# -----------------------------------------------------------
advancement revoke @s only uhcp:augments/solo_level/interact
