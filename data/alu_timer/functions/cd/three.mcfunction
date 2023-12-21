#> alu_timer:cd/three
# スタート
# @public

## カウントダウン
title @a reset
title @a clear
function alu_timer:cd/count/3
schedule function alu_timer:cd/count/2 1s
schedule function alu_timer:cd/count/1 2s
schedule function alu_timer:cd/count/0 3s
