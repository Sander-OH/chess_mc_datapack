$data modify storage chess:boards boards.$(board_id).squares[$(position)] set value $(piece)

function chess:parse_fen/_increment_position {index:1}