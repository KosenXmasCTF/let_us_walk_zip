与えられたファイルを素直にunzipすると開けない。fileコマンドを使うとgzipファイルということがわかるのでgzip -dを実行する。
出てきたファイルはfileコマンドによると画像ファイルなのでビューワで開くと、フラグの後半である `_good_tool}` がわかる。

前半がわからない。ここでgzipコマンドを実行したときの出力である `gzip: main.gz: decompression OK, trailing garbage ignored` に注目する。どうやらmain.zipにはgzip以外のデータも連結されているようなので、ここでバイナリファイルをbinwalkに食わせる。(問題名にwalkが入っているのはヒント)
するとgzipとxzファイルを連結していることがわかるので、binwalk -eでxzファイルも抜き出し、画像として開く。これにより、前半フラグである `xm4s{binwalk_is` がわかる。
