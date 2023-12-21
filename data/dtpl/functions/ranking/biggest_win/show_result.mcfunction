#> dtpl:ranking/biggest_win/show_result
# 得点が高い人が優勝のランキングを表示
# @public

#>
# @within function dtpl:ranking/biggest_win/**
    #declare score_holder rank
    #declare tag dtpl.ranking.biggest_win.done 処理を終えたプレイヤー

#>
# @public
    #declare objective dtpl.ranking.biggest_win.input

## タグを初期化
tag @a remove dtpl.ranking.biggest_win.done

## チャット欄をきれいに
tellraw @a {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

## ランキングの取得
execute as @a[scores={dtpl.ranking.biggest_win.input=-2147483648..2147483647}] run scoreboard players operation @s alu_util.ranking.input = @s dtpl.ranking.biggest_win.input
execute as @a[scores={alu_util.ranking.input=-2147483648..2147483647}] run scoreboard players operation @s alu_util.ranking.input *= -1 const
function alu_util:ranking/get

## ランキングの表示
scoreboard players set rank _ 0
scoreboard players operation rank _ > @a alu_util.ranking.output
function dtpl:ranking/biggest_win/loop
