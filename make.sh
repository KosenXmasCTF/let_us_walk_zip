flag_head="_good_tool}"
flag_body="xm4s{binwalk_is"

echo "flag: $flag_body$flag_head"

convert -size 500x100 xc:white -gravity center -pointsize 30 -draw "text 0,0'$flag_head'" head.png
convert -size 500x100 xc:white -gravity center -pointsize 30 -draw "text 0,0'$flag_body'" body.png

gzip head.png
xz body.png

cat head.png.gz body.png.xz > main.zip

rm head.png.gz
rm body.png.xz
