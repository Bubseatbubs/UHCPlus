# Get player direction
tag @a remove ch_south
tag @a remove ch_east
tag @a remove ch_west
tag @a remove ch_north

tag @a[y_rotation=-45..45] add ch_south
tag @a[y_rotation=45..135] add ch_west
tag @a[y_rotation=-135..-45] add ch_east
tag @a[y_rotation=-179.99..-135] add ch_north
tag @a[y_rotation=135..179.99] add ch_north