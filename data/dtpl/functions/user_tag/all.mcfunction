#> dtpl:user_tag/all
# プレイヤーごとにタグを付ける
# @within alu_util:login

#>
# @public
    #declare tag dtpl.user.doz ドズル
    #declare tag dtpl.user.bon ぼんじゅうる
    #declare tag dtpl.user.qnl おんりー
    #declare tag dtpl.user.ora おらふくん
    #declare tag dtpl.user.men おおはらMEN
    #declare tag dtpl.user.oji ネコおじ
    #declare tag dtpl.user.dozle_sha ドズル社タグ

## 個人特定用のもろもろを付ける
execute if entity @s[name=Dooozle     ] run function dtpl:user_tag/doz
execute if entity @s[name=bonj55      ] run function dtpl:user_tag/bon
execute if entity @s[name=Qnly_qdm    ] run function dtpl:user_tag/qnl
execute if entity @s[name=ORAMAINECRAF] run function dtpl:user_tag/ora
execute if entity @s[name=ooharaMEN   ] run function dtpl:user_tag/men
execute if entity @s[name=Neko_Oji    ] run function dtpl:user_tag/oji
