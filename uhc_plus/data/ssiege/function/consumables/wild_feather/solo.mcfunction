# In the case of no team members
execute if predicate uhcp:dimensions/minecraft/the_nether run return run spreadplayers ~ ~ 0 32 under 127 false @s
execute if predicate uhcp:dimensions/minecraft/the_end run return run spreadplayers ~ ~ 0 32 true @s
execute if predicate uhcp:dimensions/minecraft/overworld run return run function uhcp:consumables/wild_feather/overworld
spreadplayers ~ ~ 0 32 true @s
