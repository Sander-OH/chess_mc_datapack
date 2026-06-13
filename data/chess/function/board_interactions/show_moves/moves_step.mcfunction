# stop if i >= len
execute if score #i_sel temp >= #len_sel temp run return 0

# convert scoreboard → macro input
execute store result storage chess:temp i_sel int 1 run scoreboard players get #i_sel temp

function chess:board_interactions/show_moves/summon_square_box with storage chess:temp

# increment
scoreboard players add #i_sel temp 1
# continue loop
function chess:board_interactions/show_moves/moves_step