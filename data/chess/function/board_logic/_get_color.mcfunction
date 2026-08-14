execute if score #cur_piece temp matches 1..6 run return 1
execute if score #cur_piece temp matches 7..12 run return 2
execute if score #cur_piece temp matches 13 run return 1
execute if score #cur_piece temp matches 14 run return 2
return 0