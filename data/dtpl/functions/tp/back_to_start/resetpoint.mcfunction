#> dtpl:tp/back_to_start/resetpoint
# 初期地点をリセットする
# @user

## マーカーを消す
kill @e[type=marker,tag=dtpl.tp.back_to_start]

## forceloadについてメッセージ
tellraw @s [{"text": "DTPL: forceloadはいい感じに消してください。","color": "gray"}]
