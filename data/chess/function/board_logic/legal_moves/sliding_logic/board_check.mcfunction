$execute store result score #cur_piece temp run data get storage chess:boards boards.$(board_id).squares[$(cur_position)]

execute store result score #cur_color temp run function chess:board_logic/_get_color


$execute if score #cur_color temp matches $(cur_color) run return -1
execute if score #cur_color temp matches 0 run return 0
execute run return 1