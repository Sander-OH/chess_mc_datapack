summon block_display ~ ~ ~ {Tags:["chess_preview"],block_state:{Name:"minecraft:iron_block"}}

scoreboard players set @s preview_enabled 1

scoreboard players set @s toggle_preview 0
scoreboard players enable @s toggle_preview