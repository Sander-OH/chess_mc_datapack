execute as @e[tag=board_square] at @s run setblock ~ ~ ~ air
execute as @e[tag=board_square] at @s run setblock ~ ~1 ~ air

kill @e[type=marker,tag=board_square]


data remove storage chess:boards boards