#> alu_timer:3/main
# main
# @internal

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒


execute store result bossbar timer.3 value run scoreboard players get val timer.3

## 分と秒の算出
scoreboard players operation s timer.3 = val timer.3
scoreboard players operation s timer.3 /= 20 const

scoreboard players operation m timer.3 = s timer.3
scoreboard players operation m timer.3 /= 60 const

scoreboard players operation s timer.3 %= 60 const

## 0埋め表示
execute unless score hide_timer timer.3 matches 1 if score m timer.3 matches 0..9 if score s timer.3 matches 0..9 run bossbar set timer.3 name [{"storage":"alu_timer","nbt":"3.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.3"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.3"},"color":"white"}]
execute unless score hide_timer timer.3 matches 1 if score m timer.3 matches 10.. if score s timer.3 matches 0..9 run bossbar set timer.3 name [{"storage":"alu_timer","nbt":"3.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.3"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.3"},"color":"white"}]
execute unless score hide_timer timer.3 matches 1 if score m timer.3 matches 0..9 if score s timer.3 matches 10.. run bossbar set timer.3 name [{"storage":"alu_timer","nbt":"3.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.3"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.3"},"color":"white"}]
execute unless score hide_timer timer.3 matches 1 if score m timer.3 matches 10.. if score s timer.3 matches 10.. run bossbar set timer.3 name [{"storage":"alu_timer","nbt":"3.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.3"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.3"},"color":"white"}]
execute unless score hide_timer timer.3 matches 0 run bossbar set timer.3 name [{"storage":"alu_timer","nbt":"3.name","interpret": true}]

scoreboard players remove val timer.3 1

## 終了判定
execute if score val timer.3 matches -1 run function alu_timer:3/end
