tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Protection Configuration","color":"gray","bold":false},{"text":"]"}]
execute unless entity @s[tag=!UHCP_CD_ProtI,tag=!UHCP_CD_ProtII,tag=!UHCP_CD_ProtIII] run return run give @p minecraft:enchanted_book[minecraft:stored_enchantments={protection:1}]

item modify entity @s armor.chest uhcp:cybernetic_download/upgrade_protection_i
tag @s add UHCP_CD_ProtI