# Remove forceloads and kill marker
forceload remove ~ ~
execute in uhcp:main run forceload remove ~ ~
kill @e[tag=UHCP_SLBTP,distance=..5,sort=nearest,limit=1]
kill @s
