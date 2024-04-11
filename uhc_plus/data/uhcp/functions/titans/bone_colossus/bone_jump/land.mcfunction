tag @s remove UHCP_IsJumping
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:block{block_state: "minecraft:bone_block"} ~ ~ ~ 3 1 3 0.1 100 normal
particle minecraft:dust_plume ~ ~ ~ 1 1 1 1 100 normal
tag @s add UHCP_Owner
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~30 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~60 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~90 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~120 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~150 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~180 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~210 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~240 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~270 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~300 0
tag @e remove UHCP_New
function uhcp:titans/bone_colossus/bone_jump/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ ~330 0
tag @e remove UHCP_New
tag @e remove UHCP_New
tag @s remove UHCP_Owner
