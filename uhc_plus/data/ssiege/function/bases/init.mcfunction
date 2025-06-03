kill @e[tag=BLUE_BASE]
kill @e[tag=RED_BASE]

execute positioned 96 63 96 positioned over motion_blocking_no_leaves summon marker run function ssiege:bases/place_blue_base
execute positioned -144 63 -144 positioned over motion_blocking_no_leaves summon marker run function ssiege:bases/place_red_base

# Keep bases forceloaded
forceload add 200 200
forceload add -200 -200