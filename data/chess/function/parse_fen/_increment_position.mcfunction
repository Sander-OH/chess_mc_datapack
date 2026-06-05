# Position += i
$scoreboard players add #fen_pos temp $(index)
execute store result storage chess:parser position int 1 run scoreboard players get #fen_pos temp