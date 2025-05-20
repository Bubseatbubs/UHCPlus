# Lower sentry into snow
execute unless block ~ ~ ~ minecraft:snow run return run function uhcp:relics/runic_sentry/snowless
tp @s ~ ~ ~
scoreboard players remove @s uhcp_itemCount 100
