#> dtpl:load
# @internal

#> ドズル
# @public
    #declare entity Dooozle
    #declare score_holder Dooozle
    #declare score_holder ドズル

#> ぼんじゅうる
# @public
    #declare entity bonj55
    #declare score_holder bonj55
    #declare score_holder ぼんじゅうる

#> おんりー
# @public
    #declare entity Qnly_qdm
    #declare score_holder Qnly_qdm
    #declare score_holder おんりー

#> おらふくん
# @public
    #declare entity ORAMAINECRAF
    #declare score_holder ORAMAINECRAF
    #declare score_holder おらふくん

#> おおはらMEN
# @public
    #declare entity ooharaMEN
    #declare score_holder ooharaMEN
    #declare score_holder おおはらMEN

#> ネコおじ
# @public
    #declare entity Neko_Oji
    #declare score_holder Neko_Oji
    #declare score_holder ネコおじ

#> スタッフ
# @public
    #declare score_holder uniudesu うにう
    #declare score_holder Matsuno12199 松野
    #declare score_holder SASAPIYO ささぴよ
    #declare score_holder Miz_3273 みずなみ
    #declare score_holder Konotori_micra この鳥
    #declare score_holder l000cha 煎茶
    #declare score_holder ganzo59 ガンゾー
    #declare score_holder ITOMA35 暇
    #declare score_holder alumina6767 あるみな

#> forcelaod
# @public
    #declare tag global.forceload forceloadするチャンクにいるエンティティ

#> スタッフ判定
# @public
    #declare predicate dtpl:player 演者かどうか
    #declare predicate dtpl:staff スタッフかどうか

#> スコアを使った個人特定
# @public
    #declare predicate dtpl:user_id/doz ドズル役かどうか
    #declare predicate dtpl:user_id/bon ぼんじゅうる役かどうか
    #declare predicate dtpl:user_id/qnl おんりー役かどうか
    #declare predicate dtpl:user_id/ora おらふくん役かどうか
    #declare predicate dtpl:user_id/men おおはらMEN役かどうか
    #declare predicate dtpl:user_id/oji ネコおじ役かどうか

#> 汎用スコア
# @public
    #declare score_holder _

## ドズル社メンバー特定用スコア
scoreboard objectives add dtpl.user_id dummy
scoreboard players set Dooozle dtpl.user_id 1
scoreboard players set bonj55 dtpl.user_id 2
scoreboard players set Qnly_qdm dtpl.user_id 3
scoreboard players set ORAMAINECRAF dtpl.user_id 4
scoreboard players set ooharaMEN dtpl.user_id 5
scoreboard players set Neko_Oji dtpl.user_id 6

## ランキングの入力用スコア
scoreboard objectives add dtpl.ranking.biggest_win.input dummy

#> リスポーン処理
# @within function dtpl:spawnpoint/**
    #declare tag dtpl.spawnpoint リスポーン地点

#> 汎用
# @internal
    #declare tag dtpl.new 新しく召喚したエンティティ

#> looking at
# @internal
    #declare tag dtpl.check_looking_at_this 見られているかチェックされるエンティティ
