# Close GUI for player
execute if entity @a[gamemode=survival,scores={uhcp_a_selectedAugment=222}] run function uhcp:augments/effects/prismatic/sololeveling/interact/interact

advancement revoke @s only uhcp:augments/solo_level/interact
