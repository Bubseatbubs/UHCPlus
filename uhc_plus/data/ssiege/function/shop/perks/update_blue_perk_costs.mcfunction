# update_blue_perk_costs.mcfunction
# Updates the costs of all perks for the blue team based on current perk levels
# Called on load and on shop buy
# Uses n (number of blue team players) and current perk levels stored in %blue

# First, get the current number of blue team players (n)
execute store result score %blue_cost ssiege_perk_regen run execute if entity @a[team=blue]

# Store n in a temporary variable for calculations
scoreboard players operation %temp uhcp_initStatus = %blue_cost ssiege_perk_regen

# Update Regeneration costs (levels 1-6)
execute if score %blue ssiege_perk_regen matches 1 run scoreboard players operation %blue_cost ssiege_perk_regen = %temp uhcp_initStatus
execute if score %blue ssiege_perk_regen matches 2 run scoreboard players operation %blue_cost ssiege_perk_regen = %temp uhcp_initStatus
execute if score %blue ssiege_perk_regen matches 2 run scoreboard players operation %blue_cost ssiege_perk_regen *= #2 uhcp_const
execute if score %blue ssiege_perk_regen matches 3 run scoreboard players operation %blue_cost ssiege_perk_regen = %temp uhcp_initStatus
execute if score %blue ssiege_perk_regen matches 3 run scoreboard players operation %blue_cost ssiege_perk_regen *= #4 uhcp_const
execute if score %blue ssiege_perk_regen matches 4 run scoreboard players operation %blue_cost ssiege_perk_regen = %temp uhcp_initStatus
execute if score %blue ssiege_perk_regen matches 4 run scoreboard players operation %blue_cost ssiege_perk_regen *= #6 uhcp_const
execute if score %blue ssiege_perk_regen matches 5 run scoreboard players operation %blue_cost ssiege_perk_regen = %temp uhcp_initStatus
execute if score %blue ssiege_perk_regen matches 5 run scoreboard players operation %blue_cost ssiege_perk_regen *= #8 uhcp_const
execute if score %blue ssiege_perk_regen matches 6 run scoreboard players operation %blue_cost ssiege_perk_regen = %temp uhcp_initStatus
execute if score %blue ssiege_perk_regen matches 6 run scoreboard players operation %blue_cost ssiege_perk_regen *= #12 uhcp_const

execute if score %blue ssiege_perk_regen matches 7.. run scoreboard players set %blue_cost ssiege_perk_regen 999

# Update Sniffer Aura costs (n/2n/3n/6n for levels 1-4)
execute if score %blue ssiege_perk_aura matches 1 run scoreboard players operation %blue_cost ssiege_perk_aura = %temp uhcp_initStatus
execute if score %blue ssiege_perk_aura matches 2 run scoreboard players operation %blue_cost ssiege_perk_aura = %temp uhcp_initStatus
execute if score %blue ssiege_perk_aura matches 2 run scoreboard players operation %blue_cost ssiege_perk_aura *= #2 uhcp_const
execute if score %blue ssiege_perk_aura matches 3 run scoreboard players operation %blue_cost ssiege_perk_aura = %temp uhcp_initStatus
execute if score %blue ssiege_perk_aura matches 3 run scoreboard players operation %blue_cost ssiege_perk_aura *= #3 uhcp_const
execute if score %blue ssiege_perk_aura matches 4 run scoreboard players operation %blue_cost ssiege_perk_aura = %temp uhcp_initStatus
execute if score %blue ssiege_perk_aura matches 4 run scoreboard players operation %blue_cost ssiege_perk_aura *= #6 uhcp_const

execute if score %blue ssiege_perk_aura matches 5.. run scoreboard players set %blue_cost ssiege_perk_aura 999

# Update Sniffer Turret costs (3n for level 1 only)
execute if score %blue ssiege_perk_turret matches 1 run scoreboard players operation %blue_cost ssiege_perk_turret = %temp uhcp_initStatus
execute if score %blue ssiege_perk_turret matches 1 run scoreboard players operation %blue_cost ssiege_perk_turret *= #3 uhcp_const

execute if score %blue ssiege_perk_turret matches 2.. run scoreboard players set %blue_cost ssiege_perk_turret 999

# Update Recall Speed costs (n/3n/6n for levels 1-3)
execute if score %blue ssiege_perk_recall matches 1 run scoreboard players operation %blue_cost ssiege_perk_recall = %temp uhcp_initStatus
execute if score %blue ssiege_perk_recall matches 2 run scoreboard players operation %blue_cost ssiege_perk_recall = %temp uhcp_initStatus
execute if score %blue ssiege_perk_recall matches 2 run scoreboard players operation %blue_cost ssiege_perk_recall *= #3 uhcp_const
execute if score %blue ssiege_perk_recall matches 3 run scoreboard players operation %blue_cost ssiege_perk_recall = %temp uhcp_initStatus
execute if score %blue ssiege_perk_recall matches 3 run scoreboard players operation %blue_cost ssiege_perk_recall *= #6 uhcp_const

execute if score %blue ssiege_perk_recall matches 4.. run scoreboard players set %blue_cost ssiege_perk_recall 999

# Update Swim Speed costs (n/3n for levels 1-2)
execute if score %blue ssiege_perk_swimspeed matches 1 run scoreboard players operation %blue_cost ssiege_perk_swimspeed = %temp uhcp_initStatus
execute if score %blue ssiege_perk_swimspeed matches 2 run scoreboard players operation %blue_cost ssiege_perk_swimspeed = %temp uhcp_initStatus
execute if score %blue ssiege_perk_swimspeed matches 2 run scoreboard players operation %blue_cost ssiege_perk_swimspeed *= #3 uhcp_const

execute if score %blue ssiege_perk_swimspeed matches 3.. run scoreboard players set %blue_cost ssiege_perk_swimspeed 999

# Update Feather Falling costs (n/3n for levels 1-2)
execute if score %blue ssiege_perk_featherfalling matches 1 run scoreboard players operation %blue_cost ssiege_perk_featherfalling = %temp uhcp_initStatus
execute if score %blue ssiege_perk_featherfalling matches 2 run scoreboard players operation %blue_cost ssiege_perk_featherfalling = %temp uhcp_initStatus
execute if score %blue ssiege_perk_featherfalling matches 2 run scoreboard players operation %blue_cost ssiege_perk_featherfalling *= #3 uhcp_const

execute if score %blue ssiege_perk_featherfalling matches 3.. run scoreboard players set %blue_cost ssiege_perk_featherfalling 999

# Update Sniffer Sonar costs (2n/5n for levels 1-2)
execute if score %blue ssiege_perk_sonar matches 1 run scoreboard players operation %blue_cost ssiege_perk_sonar = %temp uhcp_initStatus
execute if score %blue ssiege_perk_sonar matches 1 run scoreboard players operation %blue_cost ssiege_perk_sonar *= #2 uhcp_const
execute if score %blue ssiege_perk_sonar matches 2 run scoreboard players operation %blue_cost ssiege_perk_sonar = %temp uhcp_initStatus
execute if score %blue ssiege_perk_sonar matches 2 run scoreboard players operation %blue_cost ssiege_perk_sonar *= #5 uhcp_const

execute if score %blue ssiege_perk_sonar matches 3.. run scoreboard players set %blue_cost ssiege_perk_sonar 999

# Update Homeguard costs (2n/16n for level 1-2 only)
execute if score %blue ssiege_perk_homeguard matches 1 run scoreboard players operation %blue_cost ssiege_perk_homeguard = %temp uhcp_initStatus
execute if score %blue ssiege_perk_homeguard matches 1 run scoreboard players operation %blue_cost ssiege_perk_homeguard *= #2 uhcp_const
execute if score %blue ssiege_perk_homeguard matches 2 run scoreboard players operation %blue_cost ssiege_perk_homeguard = %temp uhcp_initStatus
execute if score %blue ssiege_perk_homeguard matches 2 run scoreboard players operation %blue_cost ssiege_perk_homeguard *= #16 uhcp_const

execute if score %blue ssiege_perk_homeguard matches 3.. run scoreboard players set %blue_cost ssiege_perk_homeguard 999

# Update Titan Slayer costs (n/3n/4n/5n/6n/8n for levels 1-6)
execute if score %blue ssiege_perk_titanslayer matches 1 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 2 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 3 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 3 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #2 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 4 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 4 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #2 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 5 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 5 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #3 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 6 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 6 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #3 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 7 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 7 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #4 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 8 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 8 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #4 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 9 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 9 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #5 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 10 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 10 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= #5 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 11 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 11 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= 6 uhcp_const
execute if score %blue ssiege_perk_titanslayer matches 12 run scoreboard players operation %blue_cost ssiege_perk_titanslayer = %temp uhcp_initStatus
execute if score %blue ssiege_perk_titanslayer matches 12 run scoreboard players operation %blue_cost ssiege_perk_titanslayer *= 6 uhcp_const

execute if score %blue ssiege_perk_titanslayer matches 13.. run scoreboard players set %blue_cost ssiege_perk_titanslayer 999