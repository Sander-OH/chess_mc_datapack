execute as @e[tag=board_square] at @s run setblock ~ ~ ~ air
kill @e[type=marker,tag=board_square]

data remove storage chess:boards boards