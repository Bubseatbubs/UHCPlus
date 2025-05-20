# Raise arrow limit
execute unless score %arrow_limit uhcp_arrowCount matches 0..2367 run return run function uhcp:settings/player/arrow_limit/high
function uhcp:settings/player/arrow_limit/add
function uhcp:settings/player/arrow_limit/end
