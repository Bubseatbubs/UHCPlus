# Generate automatic slot choice
execute unless score %patrons uhcp_settings matches 1 run return run random value 0..2
return run random value 0..3
