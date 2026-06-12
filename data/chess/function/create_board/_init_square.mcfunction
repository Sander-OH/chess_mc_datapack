# Sets squares position and board id
scoreboard players operation @s board_position = #counter temp
scoreboard players operation @s board_id = #next_board global
tag @s remove new_square

# Calculates X, Y and Color based on position (1-64)
function chess:create_board/_calculate_position

# Checks if this is a black or white square
execute at @s if score @s color matches 1 run setblock ~ ~ ~ white_concrete
execute at @s if score @s color matches 0 run setblock ~ ~ ~ black_concrete

execute at @s run summon interaction ~0.5 ~1 ~0.5 {Tags:["chess_square","new_interaction"],width:1.0f,height:0.1f}
scoreboard players operation @e[tag=new_interaction] board_position = #counter temp
scoreboard players operation @e[tag=new_interaction] board_id = #next_board global

tag @e[tag=new_interaction] remove new_interaction

# execute at @s if score @s color matches 0 run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:white_concrete"},Tags:["square_visuals"]} 
# execute at @s if score @s color matches 1 run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:black_concrete"},Tags:["square_visuals"]}