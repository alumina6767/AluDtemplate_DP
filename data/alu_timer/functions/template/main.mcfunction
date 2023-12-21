#> alu_timer:template/main
# main
# @internal

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒


execute store result bossbar timer.template value run scoreboard players get val timer.template

## 分と秒の算出
scoreboard players operation s timer.template = val timer.template
scoreboard players operation s timer.template /= 20 const

scoreboard players operation m timer.template = s timer.template
scoreboard players operation m timer.template /= 60 const

scoreboard players operation s timer.template %= 60 const

## 0埋め表示
execute if score m timer.template matches 0..9 if score s timer.template matches 0..9 run bossbar set timer.template name [{"storage":"alu_timer","nbt":"template.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.template"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.template"},"color":"white"}]
execute if score m timer.template matches 10.. if score s timer.template matches 0..9 run bossbar set timer.template name [{"storage":"alu_timer","nbt":"template.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.template"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.template"},"color":"white"}]
execute if score m timer.template matches 0..9 if score s timer.template matches 10.. run bossbar set timer.template name [{"storage":"alu_timer","nbt":"template.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.template"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.template"},"color":"white"}]
execute if score m timer.template matches 10.. if score s timer.template matches 10.. run bossbar set timer.template name [{"storage":"alu_timer","nbt":"template.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.template"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.template"},"color":"white"}]

scoreboard players remove val timer.template 1

## 終了判定
execute if score val timer.template matches -1 run function alu_timer:template/end
