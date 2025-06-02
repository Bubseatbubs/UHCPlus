# sniffer_aura.mcfunction
# Applies regeneration effects to team members while in their base
# Blue base: 266,189 to 286,210
# Red base: -268,-190 to -288,-211
# Level 1: Regen I, Level 2: Regen II, Level 3: Regen III

# Blue team aura effects
execute if score %blue ssiege_perk_aura matches 2 run effect give @a[team=blue,x=266,y=60,z=189,dx=20,dy=255,dz=21] regeneration 4 0 true
execute if score %blue ssiege_perk_aura matches 3 run effect give @a[team=blue,x=266,y=60,z=189,dx=20,dy=255,dz=21] regeneration 4 1 true
execute if score %blue ssiege_perk_aura matches 4 run effect give @a[team=blue,x=266,y=60,z=189,dx=20,dy=255,dz=21] regeneration 4 2 true

# Red team aura effects
execute if score %red ssiege_perk_aura matches 2 run effect give @a[team=red,x=-288,y=60,z=-211,dx=20,dy=255,dz=21] regeneration 4 0 true
execute if score %red ssiege_perk_aura matches 3 run effect give @a[team=red,x=-288,y=60,z=-211,dx=20,dy=255,dz=21] regeneration 4 1 true
execute if score %red ssiege_perk_aura matches 4 run effect give @a[team=red,x=-288,y=60,z=-211,dx=20,dy=255,dz=21] regeneration 4 2 true

# Schedules for 2 second later (40 ticks)
scoreboard players add %aura uhcp_game_time 40