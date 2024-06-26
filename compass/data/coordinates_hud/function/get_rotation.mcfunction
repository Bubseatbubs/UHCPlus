# Get player direction
tag @a remove ch_east
tag @a remove ch_north
tag @a remove ch_south
tag @a remove ch_west

# ------------ UHC Plus changes
#tag @a[y_rotation=-45..45] add ch_south
#tag @a[y_rotation=45..135] add ch_west
#tag @a[y_rotation=-135..-45] add ch_east
#tag @a[y_rotation=-179.99..-135] add ch_north
#tag @a[y_rotation=135..179.99] add ch_north

tag @a[scores={ch_toggleCons=1},y_rotation=-135..-45] add ch_east
tag @a[scores={ch_toggleCons=1},y_rotation=-45..45] add ch_south
tag @a[scores={ch_toggleCons=1},y_rotation=45..135] add ch_west
tag @a[scores={ch_toggleCons=1},tag=!ch_east,tag=!ch_south,tag=!ch_west] add ch_north

tag @a[tag=ch_east,tag=ch_south] remove ch_south
tag @a[tag=ch_west,tag=ch_south] remove ch_west
# ------------
