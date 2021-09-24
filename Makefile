myMkIndex: myMkIndex.c
	# glib関連の引数は、pkg-configコマンドで取得する。
	# ubunt2.0のばあい、pkg-configを実行すると、以下の引数が取得できる。
	# コンパイル・オプション
	# mitsu@OAP110:~/learn_c_lang$ pkg-config --cflags glib-2.0
	# -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include
	# リンカー・オプション
	# mitsu@OAP110:~/learn_c_lang$ pkg-config --libs glib-2.0
	# -lglib-2.0
	#gcc `pkg-config --cflags glib-2.0` -I/usr/local/include -I/usr/local/include/sary myMkIndex.c `pkg-config --libs glib-2.0`  -lsary  -omyMkIndex 
	gcc `pkg-config --cflags glib-2.0 sary`  myMkIndex.c `pkg-config --libs glib-2.0 sary` -omyMkIndex 
