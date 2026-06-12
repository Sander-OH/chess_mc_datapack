# stop if i >= len
execute if score #i temp >= #len temp run return 0

# convert scoreboard → macro input
execute store result storage chess:temp i int 1 run scoreboard players get #i temp

# call macro function
execute store result score #board_check temp run function chess:board_logic/legal_moves/_position_check with storage chess:temp

# store position as walkable if it is empty or an opponent piece
execute if score #board_check temp >= #null const run data modify storage chess:temp moves append from storage chess:temp cur_position

# increment
scoreboard players add #i temp 1

# continue loop
function chess:board_logic/legal_moves/computed_logic/computed_step
