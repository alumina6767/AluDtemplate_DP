#> alu_timer:0ume
# 0埋めに変更する
# @public

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒 1tick=0.05秒=50ミリ秒

## 初期化
data modify storage tmp return set value ""

## 分と秒の算出
scoreboard players operation s _ = _ _
scoreboard players operation s _ /= 20 const

scoreboard players operation m _ = s _
scoreboard players operation m _ /= 60 const

scoreboard players operation s _ %= 60 const

scoreboard players operation _ _ %= 20 const
scoreboard players operation _ _ *= 5 const
scoreboard players operation ms _ = _ _

## 0埋め表示
execute if score m _ matches 0..9 if score s _ matches 0..9 if score ms _ matches 0..9 run data modify storage tmp return set value '[{"text":" 0"},{"score":{"name":"m","objective":"_"}},{"text":":0"},{"score":{"name":"s","objective":"_"}},{"text":":0"},{"score":{"name":"ms","objective":"_"}}]'
execute if score m _ matches 10.. if score s _ matches 0..9 if score ms _ matches 0..9 run data modify storage tmp return set value '[{"text":" "},{"score":{"name":"m","objective":"_"}},{"text":":0"},{"score":{"name":"s","objective":"_"}},{"text":":0"},{"score":{"name":"ms","objective":"_"}}]'
execute if score m _ matches 0..9 if score s _ matches 10.. if score ms _ matches 0..9 run data modify storage tmp return set value '[{"text":" 0"},{"score":{"name":"m","objective":"_"}},{"text":":"},{"score":{"name":"s","objective":"_"}},{"text":":0"},{"score":{"name":"ms","objective":"_"}}]'
execute if score m _ matches 10.. if score s _ matches 10.. if score ms _ matches 0..9 run data modify storage tmp return set value '[{"text":" "},{"score":{"name":"m","objective":"_"}},{"text":":"},{"score":{"name":"s","objective":"_"}},{"text":":0"},{"score":{"name":"ms","objective":"_"}}]'

execute if score m _ matches 0..9 if score s _ matches 0..9 if score ms _ matches 10.. run data modify storage tmp return set value '[{"text":" 0"},{"score":{"name":"m","objective":"_"}},{"text":":0"},{"score":{"name":"s","objective":"_"}},{"text":":"},{"score":{"name":"ms","objective":"_"}}]'
execute if score m _ matches 10.. if score s _ matches 0..9 if score ms _ matches 10.. run data modify storage tmp return set value '[{"text":" "},{"score":{"name":"m","objective":"_"}},{"text":":0"},{"score":{"name":"s","objective":"_"}},{"text":":"},{"score":{"name":"ms","objective":"_"}}]'
execute if score m _ matches 0..9 if score s _ matches 10.. if score ms _ matches 10.. run data modify storage tmp return set value '[{"text":" 0"},{"score":{"name":"m","objective":"_"}},{"text":":"},{"score":{"name":"s","objective":"_"}},{"text":":"},{"score":{"name":"ms","objective":"_"}}]'
execute if score m _ matches 10.. if score s _ matches 10.. if score ms _ matches 10.. run data modify storage tmp return set value '[{"text":" "},{"score":{"name":"m","objective":"_"}},{"text":":"},{"score":{"name":"s","objective":"_"}},{"text":":"},{"score":{"name":"ms","objective":"_"}}]'
