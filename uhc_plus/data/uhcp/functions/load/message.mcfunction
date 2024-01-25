# Load message and clear scoreboards
scoreboard players reset %uhcp_loadInit
tellraw @a [{"text":"Loaded ","color":"white"},{"text":"<","color":"#2F05FF","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold"}]}},{"text":"U","color":"#0346FF","hoverEvent":{"action":"show_text","value":[{"text":"Adds several features to the UHC pack.","color":"gold"}]}},{"text":"H","color":"#0080FF","hoverEvent":{"action":"show_text","value":[{"text":"Adds several features to the UHC pack.","color":"gold"}]}},{"text":"C","color":"#0091FF","hoverEvent":{"action":"show_text","value":[{"text":"Adds several features to the UHC pack.","color":"gold"}]}},{"text":"+","color":"#05CDFF","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Adds several features to the UHC pack.","color":"gold"}]}},{"text":">","color":"#00EEFF","hoverEvent":{"action":"show_text","value":[{"text":"Adds several features to the UHC pack.","color":"gold"}]}}]

# Summon armor stands
execute unless score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon
execute if score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon/summon
