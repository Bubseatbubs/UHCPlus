# Notify players of augment tier
execute if score %tier uhcp_aug_tier matches 0 run return run title @a subtitle [{"text":"Augment Tier:","color":"#CCFCFF"},{"text":" Silver","color":"#B0B1D6","bold":true}]
execute if score %tier uhcp_aug_tier matches 1 run return run title @a subtitle [{"text":"Augment Tier:","color":"#CCFCFF"},{"text":" Gold","color":"gold","bold":true}]
execute if score %tier uhcp_aug_tier matches 2 run return run title @a subtitle [{"text":"Augment Tier:","color":"#CCFCFF"},{"text":" Pr","color":"#22CAD6","bold":true},{"text":"is","color":"#59FFE9","bold":true},{"text":"ma","color":"#99FAED","bold":true},{"text":"tic","color":"#D4FAEB","bold":true}]
title @a subtitle {"text":""}
