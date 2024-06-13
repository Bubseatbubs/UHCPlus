tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Protection Protocol","color":"gray","bold":false},{"text":"]"}]
execute unless entity @s[tag=!UHCP_CD_ProtII,tag=!UHCP_CD_ProtIII] run return run give @s minecraft:enchanted_book[minecraft:stored_enchantments={protection:2}]

item modify entity @s armor.chest uhcp:cybernetic_download/upgrade_protection_ii
tag @s add UHCP_CD_ProtII
