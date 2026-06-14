say Chess Engine Online!

kill @e[type=block_display,tag=chess_preview]

# Function triggers
scoreboard objectives add create_board trigger
scoreboard objectives add toggle_preview trigger
scoreboard players enable @a create_board
scoreboard players enable @a toggle_preview

scoreboard objectives add preview_enabled dummy
scoreboard players set @a preview_enabled 0


# Board construction logic
scoreboard objectives add board_id dummy
scoreboard objectives add board_position dummy
scoreboard objectives add board_x dummy
scoreboard objectives add board_y dummy
scoreboard objectives add color dummy
scoreboard objectives add temp dummy
scoreboard objectives add const dummy

# Math and logic
scoreboard players set #counter temp 0
scoreboard players set #pos_modulo temp 0
scoreboard players set #fen_pos temp 0

scoreboard objectives add global dummy
scoreboard players set #next_board global 1


scoreboard players set #nine const 9
scoreboard players set #eight const 8
scoreboard players set #seven const 7
scoreboard players set #two const 2
scoreboard players set #one const 1
scoreboard players set #null const 0
scoreboard players set #neg_one const -1

function chess:kill_board
function chess:board_logic/legal_moves/computed_logic/_precompute