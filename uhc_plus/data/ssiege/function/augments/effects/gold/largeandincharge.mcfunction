#scale modifier
attribute @s minecraft:scale modifier add uhcp:scale 0.5 add_value

#step height modifier
#attribute @s step_height base set 1.1 
attribute @s step_height modifier add uhcp:step_height .6 add_value

#max health modifier
attribute @s minecraft:max_health modifier add uhcp:max_health 20 add_value

#entity interaction range modifier
#attribute @s minecraft:entity_interaction_range base set 3.3
attribute @s entity_interaction_range modifier add uhcp:entity_interaction_range .3 add_value

#block interaction range modifier
#attribute @s minecraft:block_interaction_range base set 5.3
attribute @s block_interaction_range modifier add uhcp:block_interaction_range .3 add_value

effect give @s instant_health 2 10 true
