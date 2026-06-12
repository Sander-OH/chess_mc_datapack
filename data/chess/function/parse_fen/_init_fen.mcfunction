scoreboard players set #fen_to_load temp 0


# starting position
execute if score #fen_to_load temp matches 0 run data modify storage chess:parser fen set value "rnbqkbnr.pppppppp.8.8.8.8.PPPPPPPP.RNBQKBNR"

#test position 1
execute if score #fen_to_load temp matches 1 run data modify storage chess:parser fen set value "1qpp4.2r5.8.4r3.8.8.KPP5.5pQ1"

function chess:parse_fen/start with storage chess:parser