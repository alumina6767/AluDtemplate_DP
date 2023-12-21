#> dtpl:gamerule/template
# よく使うゲームルールを適用する
# @user

## コマンドログをOFF
execute in overworld run gamerule sendCommandFeedback false
execute in the_end run gamerule sendCommandFeedback false
execute in the_nether run gamerule sendCommandFeedback false
tellraw @a[team=staff] {"text": "DTPL: コマンドログをOFFにしました。","color": "green"}

## コマンドブロックのログをOFF
execute in overworld run gamerule commandBlockOutput false
execute in the_end run gamerule commandBlockOutput false
execute in the_nether run gamerule commandBlockOutput false
tellraw @a[team=staff] {"text": "DTPL: コマブロのログをOFFにしました。","color": "green"}

## 雨をOFF
execute in overworld run gamerule doWeatherCycle false
execute in the_end run gamerule doWeatherCycle false
execute in the_nether run gamerule doWeatherCycle false
tellraw @a[team=staff] {"text": "DTPL: 天候の変化をOFFにしました。","color": "green"}

## 音
execute at @a[team=staff] run playsound entity.chicken.egg master @s ~ ~ ~ 1 1 0
