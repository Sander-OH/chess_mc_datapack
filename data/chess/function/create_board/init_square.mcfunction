scoreboard players operation @s board_position = #counter temp
scoreboard players operation @s board_id = #next_board global
tag @s remove new_square

execute as @s run function chess:create_board/calculate_position

execute as @s at @s if score @s color matches 0 run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:white_concrete"},Tags:["square_visuals"]} 
execute as @s at @s if score @s color matches 1 run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:black_concrete"},Tags:["square_visuals"]}