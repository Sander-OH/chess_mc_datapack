# Pawns
execute if data storage chess:parser {char:"p"} run data modify storage chess:parser piece set value 1
execute if data storage chess:parser {char:"p"} run return run function chess:parse_fen/_place_piece with storage chess:parser
execute if data storage chess:parser {char:"P"} run data modify storage chess:parser piece set value 7
execute if data storage chess:parser {char:"P"} run return run function chess:parse_fen/_place_piece with storage chess:parser

# Knights
execute if data storage chess:parser {char:"n"} run data modify storage chess:parser piece set value 2
execute if data storage chess:parser {char:"n"} run return run function chess:parse_fen/_place_piece with storage chess:parser
execute if data storage chess:parser {char:"N"} run data modify storage chess:parser piece set value 8
execute if data storage chess:parser {char:"N"} run return run function chess:parse_fen/_place_piece with storage chess:parser

# Bishops
execute if data storage chess:parser {char:"b"} run data modify storage chess:parser piece set value 3
execute if data storage chess:parser {char:"b"} run return run function chess:parse_fen/_place_piece with storage chess:parser
execute if data storage chess:parser {char:"B"} run data modify storage chess:parser piece set value 9
execute if data storage chess:parser {char:"B"} run return run function chess:parse_fen/_place_piece with storage chess:parser

# Rooks
execute if data storage chess:parser {char:"r"} run data modify storage chess:parser piece set value 4
execute if data storage chess:parser {char:"r"} run return run function chess:parse_fen/_place_piece with storage chess:parser
execute if data storage chess:parser {char:"R"} run data modify storage chess:parser piece set value 10
execute if data storage chess:parser {char:"R"} run return run function chess:parse_fen/_place_piece with storage chess:parser

# Queens
execute if data storage chess:parser {char:"q"} run data modify storage chess:parser piece set value 5
execute if data storage chess:parser {char:"q"} run return run function chess:parse_fen/_place_piece with storage chess:parser
execute if data storage chess:parser {char:"Q"} run data modify storage chess:parser piece set value 11
execute if data storage chess:parser {char:"Q"} run return run function chess:parse_fen/_place_piece with storage chess:parser

# Kings
execute if data storage chess:parser {char:"k"} run data modify storage chess:parser piece set value 6
execute if data storage chess:parser {char:"k"} run return run function chess:parse_fen/_place_piece with storage chess:parser
execute if data storage chess:parser {char:"K"} run data modify storage chess:parser piece set value 12
execute if data storage chess:parser {char:"K"} run return run function chess:parse_fen/_place_piece with storage chess:parser


# Skipping squares
execute if data storage chess:parser {char:"1"} run function chess:parse_fen/_increment_position {index:1}
execute if data storage chess:parser {char:"2"} run function chess:parse_fen/_increment_position {index:2}
execute if data storage chess:parser {char:"3"} run function chess:parse_fen/_increment_position {index:3}
execute if data storage chess:parser {char:"4"} run function chess:parse_fen/_increment_position {index:4}
execute if data storage chess:parser {char:"5"} run function chess:parse_fen/_increment_position {index:5}
execute if data storage chess:parser {char:"6"} run function chess:parse_fen/_increment_position {index:6}
execute if data storage chess:parser {char:"7"} run function chess:parse_fen/_increment_position {index:7}
execute if data storage chess:parser {char:"8"} run function chess:parse_fen/_increment_position {index:8}

data modify storage chess:parser piece set value 0