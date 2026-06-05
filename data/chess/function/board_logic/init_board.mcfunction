# Initialize underlying logic

execute store result storage chess:parser board_id int 1 run scoreboard players get #next_board global
function chess:board_logic/_create_storage with storage chess:parser
function chess:parse_fen/_init_fen