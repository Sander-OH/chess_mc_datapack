execute as @s[scores={preview_enabled=0}] run function chess:preview/preview_on
execute as @s[scores={preview_enabled=1}] run function chess:preview/preview_off

scoreboard players enable @s toggle_preview