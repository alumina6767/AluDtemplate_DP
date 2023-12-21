#> alu_timer:cd/ten
# スタート
# @public

## カウントダウン
title @a reset
title @a clear
function alu_timer:cd/count/10
schedule function alu_timer:cd/count/9 1s
schedule function alu_timer:cd/count/8 2s
schedule function alu_timer:cd/count/7 3s
schedule function alu_timer:cd/count/6 4s
schedule function alu_timer:cd/count/5 5s
schedule function alu_timer:cd/count/4 6s
schedule function alu_timer:cd/count/3 7s
schedule function alu_timer:cd/count/2 8s
schedule function alu_timer:cd/count/1 9s
schedule function alu_timer:cd/count/0 10s
