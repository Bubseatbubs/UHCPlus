# Lower arrow limit
execute unless score %arrow_limit uhcp_arrowCount matches 1..2368 run return run function uhcp:settings/player/arrow_limit/low
function uhcp:settings/player/arrow_limit/subtract
function uhcp:settings/player/arrow_limit/end
