#> ct:mng/room/meth/
#
# @user
# @public
# @api

$data modify storage \
    ct:data o.room_var \
    set from storage ct:rd-t.'$(id)'.status.nowgame_var.$(path)