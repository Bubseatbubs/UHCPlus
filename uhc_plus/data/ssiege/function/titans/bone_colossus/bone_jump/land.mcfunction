tag @s remove UHCP_IsJumping
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:block{block_state:"minecraft:bone_block"} ~ ~ ~ 3 1 3 0.1 100 normal
particle minecraft:dust_plume ~ ~ ~ 1 1 1 1 100 normal
tag @s add UHCP_Owner
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~ 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~30 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~60 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~90 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~120 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~150 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~180 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~210 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~240 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~270 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~300 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute rotated as @n[tag=UHCP_Owner] run rotate @n[tag=UHCP_New] ~330 0
tag @e remove UHCP_New
tag @e remove UHCP_New
tag @s remove UHCP_Owner
