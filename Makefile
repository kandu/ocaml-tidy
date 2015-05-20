PROJECT= tidy5

CC= gcc

lib: tidy5.cma tidy5.cmxa

stub.o: stub.c
	$(CC) -Wall -fPIC -I /usr/local/include/ -I `ocamlc -where` -c -o $@ $<

tidy5.cma tidy5.cmxa: tidy5.ml stub.o
	ocamlfind ocamlmklib -package core_kernel -ltidy5 -o tidy5 -oc tidy5_stubs $^

tidy5.ml: tidy5.cmi


tidy5.cmi: tidy5.mli
	ocamlfind ocamlc -package core_kernel $<

.PHONY: install clean

install: lib
	ocamlfind install $(PROJECT) META *.mli *.cmi *.cma *.cmxa *.so *.a

uninstall:
	ocamlfind remove $(PROJECT)

clean:
	rm -f *.annot *.o *.cm* *.a *.so

