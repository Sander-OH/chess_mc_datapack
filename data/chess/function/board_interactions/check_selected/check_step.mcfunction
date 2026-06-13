# stop if i >= len
execute if score #i_check temp >= #len_check temp run return 0

# convert scoreboard → macro input
execute store result storage chess:temp i_check int 1 run scoreboard players get #i_check temp


execute store result score #is_in_moves temp as @s run function chess:board_interactions/check_selected/check_square with storage chess:temp
execute if score #is_in_moves temp matches 1 run function chess:board_interactions/move_piece with storage chess:temp
execute if score #is_in_moves temp matches 1 run return 0

# increment
scoreboard players add #i_check temp 1
# continue loop
execute as @s run function chess:board_interactions/check_selected/check_step