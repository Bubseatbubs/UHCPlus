execute unless entity @s[advancements={ssiege:augments/adrenal_surge/6heart=true}] run return fail
tellraw @s ["",{"text":"Your ","color":"white"},{"text":"Adrenal Surge","bold":true,"color":"gold"},{"text":" abilities reset!","color":"white"}]
advancement revoke @s only ssiege:augments/adrenal_surge/6heart
advancement revoke @s only ssiege:augments/adrenal_surge/4heart
advancement revoke @s only ssiege:augments/adrenal_surge/2heart