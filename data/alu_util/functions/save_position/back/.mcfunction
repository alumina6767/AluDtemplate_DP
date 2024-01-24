#> alu_util:save_position/back/
# ストレージの座標に戻る
# @public

execute store result storage alu_util: user_id int 1 run scoreboard players get @s alu_util.user_id
function alu_util:save_position/back/2 with storage alu_util:

data remove storage alu_util: user_id
