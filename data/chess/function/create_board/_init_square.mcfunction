# Sets squares position and board id
scoreboard players operation @s board_position = #counter temp
scoreboard players operation @s board_id = #next_board global
tag @s remove new_square

# Calculates X, Y and Color based on position (1-64)
function chess:create_board/_calculate_position

# Checks if this is a black or white square
execute at @s if score @s color matches 0 run setblock ~ ~ ~ white_concrete
execute at @s if score @s color matches 1 run setblock ~ ~ ~ black_concrete


# execute at @s if score @s color matches 0 run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:white_concrete"},Tags:["square_visuals"]} 
# execute at @s if score @s color matches 1 run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:black_concrete"},Tags:["square_visuals"]}