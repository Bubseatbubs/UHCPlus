# Reset status
execute if entity @s[gamemode=survival] if entity @a[gamemode=survival,scores={uhcp_a_selectedAugment=222}] run advancement revoke @s only uhcp:augments/solo_level/interact/assume

advancement revoke @s only uhcp:augments/solo_level/interact/drop
