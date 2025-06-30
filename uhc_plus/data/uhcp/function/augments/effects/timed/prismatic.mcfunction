# Prismatic augments
execute if score @s uhcp_augment matches 203 run return run function uhcp:augments/effects/prismatic/cruelpact/heal
execute if score @s uhcp_augment matches 214 run return run function uhcp:augments/effects/prismatic/netherborn/portal
execute if score @s uhcp_augment matches 217 run return run function uhcp:augments/effects/prismatic/centerofattention/clear
execute at @s[scores={uhcp_augment=220}] run return run function uhcp:augments/effects/prismatic/cyberneticdownload/upgrade
execute if score @s uhcp_augment matches 227 run return run function uhcp:augments/effects/prismatic/totheskies/give
execute at @s[scores={uhcp_augment=230}] run return run function uhcp:augments/effects/prismatic/featherstorm/give
execute at @s[scores={uhcp_augment=232}] run return run function uhcp:augments/effects/prismatic/kungfupanda
execute at @s[scores={uhcp_augment=238}] run return run function uhcp:augments/effects/prismatic/relicmaster/update
execute if score @s uhcp_augment matches 241 run return run function uhcp:augments/effects/prismatic/thinkfast/clear
execute at @s[scores={uhcp_augment=244}] run function uhcp:augments/effects/prismatic/hedgefund/init
