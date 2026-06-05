$data modify storage chess:parser remaining set value $(fen)
data modify storage chess:parser position set value 0

scoreboard players set #fen_pos temp 0

function chess:parse_fen/step