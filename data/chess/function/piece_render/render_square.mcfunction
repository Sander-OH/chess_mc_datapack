$data modify storage chess:render piece set from storage chess:boards boards.$(board_id).squares[$(position)]

execute if data storage chess:render {piece:0} run return 1
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:1} run return run function chess:piece_render/pieces/white_pawn
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:2} run return run function chess:piece_render/pieces/white_knight
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:3} run return run function chess:piece_render/pieces/white_bishop
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:4} run return run function chess:piece_render/pieces/white_rook
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:5} run return run function chess:piece_render/pieces/white_queen
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:6} run return run function chess:piece_render/pieces/white_king
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:7} run return run function chess:piece_render/pieces/black_pawn
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:8} run return run function chess:piece_render/pieces/black_knight
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:9} run return run function chess:piece_render/pieces/black_bishop
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:10} run return run function chess:piece_render/pieces/black_rook
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:11} run return run function chess:piece_render/pieces/black_queen
$execute as @e[tag=board_square,scores={board_id=$(board_id), board_position=$(position)}] if data storage chess:render {piece:12} run return run function chess:piece_render/pieces/black_king