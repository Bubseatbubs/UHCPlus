# For two digits
execute if score %displayS uhcp_game_time matches 10..59 run return run function uhcp:display/time/number/hours/double/double with storage uhcp:display time
function uhcp:display/time/number/hours/double/single with storage uhcp:display time
