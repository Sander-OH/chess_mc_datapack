# board_x = position - 1
scoreboard players operation @s board_x = @s board_position
scoreboard players remove @s board_x 1

# board_y = board_x
scoreboard players operation @s board_y = @s board_x

# x = x % 8
scoreboard players operation @s board_x %= #eight const

# y = y / 8
scoreboard players operation @s board_y /= #eight const

# color = x
scoreboard players operation @s color = @s board_x

# color += y
scoreboard players operation @s color += @s board_y

# color %= 2
scoreboard players operation @s color %= #two const