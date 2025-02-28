#> ct:mng/room/meth/sg/2
#
# @within ct:mng/room/meth/sg

data modify storage \
    ct:mng.room.sg tmp.tld.id \
    set from storage ct:mng.room.sg tmp.rd.id
data modify storage \
    ct:mng.room.sg tmp.tld.c \
    set from storage ct:mng.room.sg tmp.rd.playing
data modify storage \
    ct:mng.room tl \
    append from storage ct:mng.room.sg tmp.tld