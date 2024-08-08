# $ff = @("FangSong", "FrankRuehl", "Gadugi", "Gabriola", "Franklin-Gothic-Medium", "Rockwell-Nova", "Euphemia")

# foreach ($iteff in $ff) {
# magick -size 880x380   gradient:yellow-green `
#     -font $iteff -pointsize 70 -tile gradient:blue-red `
#     -annotate +10+65 'Gradient Fun'    "$iteff-funfont_gradients.jpg"
# }



# magick -size 880x380 gradient:yellow-green `                                                                                                                                                                                                                                                                                                           40 gradient:yellow-green `
#     -font "Rockwell-Nova" -pointsize 70 -tile gradient:darkviolet-aqua `
#     -strokewidth 2  -stroke black -undercolor lightblue `
#     -annotate +20+65 "Title" "funfont_gradients.jpg"

# magick -size 880x380  -density 12                                                                                                                                                                                                                                                                                                               40 gradient:yellow-green `
#     -font "Rockwell-Nova" -pointsize 70 -tile gradient:darkviolet-aqua `
#     -strokewidth 2  -stroke black   -undercolor lightblue `
#     -annotate +120+165 'Description'  "funfont_gradients.jpg"


# -undercolor lightblue `
# label: "Gradient Fun`nsosoo" `
# 
magick -size 880x380 gradient:yellow-green `
    -density 120 `
    -font "Rockwell-Nova" -pointsize 60 `
    -tile gradient:orange-darkviolet `
    -strokewidth 2  -stroke black `
    "look.jpg"
