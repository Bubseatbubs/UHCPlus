# Set arrow limits
scoreboard players operation %arrow_limit uhcp_arrowCount = %arrow_limit_def uhcp_settings
execute if score %arrow_limit uhcp_arrowCount matches ..-1 run scoreboard players set %arrow_limit uhcp_arrowCount 0
execute if score %arrow_limit uhcp_arrowCount matches 2369.. run scoreboard players set %arrow_limit uhcp_arrowCount 2368

# Arrow limits for Apollo augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit_def uhcp_settings
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit_def uhcp_settings
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit_def uhcp_settings
scoreboard players operation %arrow_limit149 uhcp_arrowCount += %arrow_limit149_def uhcp_settings
scoreboard players operation %arrow_limit5 uhcp_arrowCount += %arrow_limit5_def uhcp_settings
scoreboard players operation %arrow_limit201 uhcp_arrowCount += %arrow_limit201_def uhcp_settings
