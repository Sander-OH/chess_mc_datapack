execute as @a[scores={toggle_preview=1..}] run function chess:preview/toggle_preview
execute as @a[scores={preview_enabled=1}] at @s anchored eyes positioned ^ ^ ^5 align xyz run tp @e[type=block_display,tag=chess_preview,limit=1,sort=nearest] ~ ~ ~


execute as @a[scores={create_board=1..}] run function chess:create_board/summon_check

execute as @e[type=interaction,tag=chess_square] if data entity @s attack run tellraw @a [{"text":"Your score: "},{"score":{"name":"@s","objective":"board_position"}}]
execute as @e[type=interaction,tag=chess_square] run data modify entity @s attack set value 0
