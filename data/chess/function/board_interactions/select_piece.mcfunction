execute if score #player_promoted temp = #null const run return say waittt
$scoreboard players set #sel_piece temp $(selected_piece)

$execute if score #sel_piece temp matches 1 run function chess:board_logic/legal_moves/pawn {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
$execute if score #sel_piece temp matches 7 run function chess:board_logic/legal_moves/pawn {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}

$execute if score #sel_piece temp matches 2 run function chess:board_logic/legal_moves/knight {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
$execute if score #sel_piece temp matches 8 run function chess:board_logic/legal_moves/knight {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}

$execute if score #sel_piece temp matches 3 run function chess:board_logic/legal_moves/bishop {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
$execute if score #sel_piece temp matches 9 run function chess:board_logic/legal_moves/bishop {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
 
$execute if score #sel_piece temp matches 4 run function chess:board_logic/legal_moves/rook {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
$execute if score #sel_piece temp matches 10 run function chess:board_logic/legal_moves/rook {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}

$execute if score #sel_piece temp matches 5 run function chess:board_logic/legal_moves/queen {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
$execute if score #sel_piece temp matches 11 run function chess:board_logic/legal_moves/queen {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}

$execute if score #sel_piece temp matches 6 run function chess:board_logic/legal_moves/king {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}
$execute if score #sel_piece temp matches 12 run function chess:board_logic/legal_moves/king {color: $(cur_color), position: $(sel_position), board_id: $(board_id)}

$execute as @e[type=marker] at @s if score @s board_position matches $(sel_position) run summon item_display ~ ~1.5 ~ {Tags:["selected_moves"],item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":{floats:[14]}}}}
function chess:board_interactions/show_moves/moves_start