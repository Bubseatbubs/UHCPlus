# TODO: Sniffer Siege tick function, runs in tandem with uhcp:tick
# Game mode check
execute unless score %current_mode mode matches 1 run return fail

# Game statistics display
execute if score %game uhcp_initStatus matches 1 run function uhcp:display/update
