# Disable/enable related data pack
execute if score %enchant_reduce uhcp_settings matches 1 run return run datapack enable "file/uhcp_enchantment"
datapack disable "file/uhcp_enchantment"
