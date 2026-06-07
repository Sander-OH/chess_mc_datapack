$data modify storage chess:temp cur_position set from storage chess:temp positions[$(i)]

# tellraw @a [{"storage":"chess:temp","nbt":"cur_position"}]

return run function chess:board_logic/legal_moves/sliding_logic/board_check with storage chess:temp