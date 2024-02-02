# Close GUI for player
tag @a remove UHCP_SLCLose
execute if entity @s[gamemode=survival] run function uhcp:augments/effects/prismatic/sololeveling/interact/interact

# Reset player
# Remove three below when in pack format with new advancements
scoreboard players reset @a uhcp_anvil
scoreboard players reset @a uhcp_grindstone
scoreboard players reset @a uhcp_smithingTable
# -----------------------------------------------------------
# Enable below command again for advancement
#advancement revoke @s only uhcp:augments/solo_level/interact
