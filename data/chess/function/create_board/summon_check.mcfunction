# Runs when the player triggers create_board

scoreboard players set #counter temp 0

scoreboard players set @s create_board 0
scoreboard players enable @s create_board


# Place the board and starting pieces
function chess:create_board/place_markers
function chess:board_logic/init_board
scoreboard players add #next_board global 1