#> alu_timer:1/main
# main
# @internal

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒


execute store result bossbar timer.1 value run scoreboard players get val timer.1

## 分と秒の算出
scoreboard players operation s timer.1 = val timer.1
scoreboard players operation s timer.1 /= 20 const

scoreboard players operation m timer.1 = s timer.1
scoreboard players operation m timer.1 /= 60 const

scoreboard players operation s timer.1 %= 60 const

## 0埋め表示
execute unless score hide_timer timer.1 matches 1 if score m timer.1 matches 0..9 if score s timer.1 matches 0..9 run bossbar set timer.1 name [{"storage":"alu_timer","nbt":"1.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.1"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.1"},"color":"white"}]
execute unless score hide_timer timer.1 matches 1 if score m timer.1 matches 10.. if score s timer.1 matches 0..9 run bossbar set timer.1 name [{"storage":"alu_timer","nbt":"1.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.1"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.1"},"color":"white"}]
execute unless score hide_timer timer.1 matches 1 if score m timer.1 matches 0..9 if score s timer.1 matches 10.. run bossbar set timer.1 name [{"storage":"alu_timer","nbt":"1.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.1"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.1"},"color":"white"}]
execute unless score hide_timer timer.1 matches 1 if score m timer.1 matches 10.. if score s timer.1 matches 10.. run bossbar set timer.1 name [{"storage":"alu_timer","nbt":"1.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.1"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.1"},"color":"white"}]
execute unless score hide_timer timer.1 matches 0 run bossbar set timer.1 name [{"storage":"alu_timer","nbt":"1.name","interpret": true}]

scoreboard players remove val timer.1 1

## 終了判定
execute if score val timer.1 matches -1 run function alu_timer:1/end
