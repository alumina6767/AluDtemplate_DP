#> dtpl:advancement/grant_all_of_vanilla
# バニラの進捗解除
# @user

## 進捗のアナウンスの状態を取得
execute store result score _ _ run gamerule announceAdvancements

## アナウンスを消す
gamerule announceAdvancements false

## 進捗の解除
advancement grant @s through adventure/root
advancement grant @s through end/root
advancement grant @s through husbandry/root
advancement grant @s through nether/root
advancement grant @s through story/root

## ゲームルールを戻す
execute if score _ _ matches 1 run gamerule announceAdvancements true

## レベルをリセット
experience set @s 0 points
experience set @s 0 levels

## メッセージ
tellraw @a[team=staff] [{"color": "green","text": "DTPL: "},{"selector":"@s"},{"text": " のすべてのバニラ進捗を解除しました。"}]

## 音
execute at @a[team=staff] run playsound entity.chicken.egg master @s ~ ~ ~ 1 1 0
