# Black queen, knight, rook, and bishop
give @p stick[minecraft:custom_model_data={floats:[11]}]
give @p stick[minecraft:custom_model_data={floats:[8]}]
give @p stick[minecraft:custom_model_data={floats:[10]}]
give @p stick[minecraft:custom_model_data={floats:[9]}]

say promotion black
scoreboard players set #player_promoted temp 0
function chess:board_logic/legal_moves/pawn_logic/pawn_promotion/wait_promotion