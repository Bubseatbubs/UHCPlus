# Reset status
execute if entity @a[gamemode=survival,scores={uhcp_augment=222}] run advancement revoke @s only uhcp:augments/solo_level/interact/assume

advancement revoke @s only uhcp:augments/solo_level/interact/drop
