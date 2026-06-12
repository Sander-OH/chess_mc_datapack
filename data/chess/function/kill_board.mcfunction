execute as @e[tag=board_square] at @s run setblock ~ ~ ~ air

kill @e[type=marker,tag=board_square]
kill @e[type=item_display,tag=board_visuals]
kill @e[type=interaction,tag=chess_square]

data remove storage chess:boards boards