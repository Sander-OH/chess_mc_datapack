# Runs when the player triggers create_board

scoreboard players set #counter temp -1

scoreboard players set @s create_board 0
scoreboard players enable @s create_board


# Place the board and starting pieces
function chess:create_board/place_markers
function chess:board_logic/init_board

execute store result storage chess:temp render_id int 1 run scoreboard players get #next_board global
function chess:piece_render/start with storage chess:temp

scoreboard players add #next_board global 1