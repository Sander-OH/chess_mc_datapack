# Black queen, knight, rook, and bishop
give @p stick[minecraft:custom_model_data={floats:[11]}]
give @p stick[minecraft:custom_model_data={floats:[8]}]
give @p stick[minecraft:custom_model_data={floats:[10]}]
give @p stick[minecraft:custom_model_data={floats:[9]}]

say promotion black
$data modify storage chess:boards boards.$(board_id).waiting_for_promotion set value 2
scoreboard players set #player_promoted temp 0