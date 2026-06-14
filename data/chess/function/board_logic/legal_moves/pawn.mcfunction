$data modify storage chess:temp board_id set value $(board_id)
$data modify storage chess:temp cur_color set value $(color)
$data modify storage chess:temp cur_position set value $(position)

execute store result score #cur_color temp run data get storage chess:temp cur_color

data modify storage chess:temp moves set value []

function chess:board_logic/legal_moves/pawn_logic/check_forward_push with storage chess:temp
function chess:board_logic/legal_moves/pawn_logic/check_captures
function chess:board_logic/legal_moves/pawn_logic/check_promotion

# set index
scoreboard players set #i temp 0