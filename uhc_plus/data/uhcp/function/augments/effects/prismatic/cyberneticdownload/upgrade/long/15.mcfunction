tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Protection Matrix","color":"gray","bold":false},{"text":"]"}]
execute as @s[tag=UHCP_CD_ProtIII] run return run give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:protection":3}]

item modify entity @s armor.chest uhcp:cybernetic_download/upgrade_protection_iii
tag @s add UHCP_CD_ProtIII
