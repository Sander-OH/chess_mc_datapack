# stop if i >= len
execute if score #i temp >= #len temp run return 0

# convert scoreboard → macro input
execute store result storage chess:temp i int 1 run scoreboard players get #i temp

# call macro function
execute store result score #board_check temp run function chess:board_logic/legal_moves/sliding_logic/sliding_check with storage chess:temp

execute if score #board_check temp matches -1 run return 0
data modify storage chess:temp moves append from storage chess:temp cur_position

# increment
scoreboard players add #i temp 1

# continue loop
execute if score #board_check temp matches 0 run function chess:board_logic/legal_moves/sliding_logic/sliding_step
