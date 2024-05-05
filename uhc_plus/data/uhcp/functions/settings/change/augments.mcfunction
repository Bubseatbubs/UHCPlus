function uhcp:settings/pages/augments
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 1..4 run return run function uhcp:settings/augments/tier
execute if score @s uhcp_settings matches 5..12 run return run function uhcp:settings/augments/ra_stacks
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 13..14 run function uhcp:settings/augments/patrons
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 15 run return run function uhcp:settings/augments/tier
