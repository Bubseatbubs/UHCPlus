# Lower sentry into snow
execute unless block ~ ~ ~ #uhcp:carpets run return run function uhcp:relics/runic_sentry/carpetless
tp @s ~ ~ ~
scoreboard players remove @s uhcp_itemCount 1000
