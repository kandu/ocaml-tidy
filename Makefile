PROJECT= tidy

CC= gcc
CFLAGS+= -I `ocamlc -where`
CFLAGS+= -I /usr/include/tidy

lib: tidy.cma tidy.cmxa

stub.o: stub.c
	$(CC) -Wall -fPIC  -c $(CFLAGS) -o $@ $<

tidy.cma tidy.cmxa: tidy.ml stub.o
	ocamlfind ocamlmklib -package core_kernel -ltidy -o tidy -oc tidy_stubs $^

tidy.ml: tidy.cmi


tidy.cmi: tidy.mli
	ocamlfind ocamlc -package core_kernel $<

.PHONY: install clean

install: lib
	ocamlfind install $(PROJECT) META *.mli *.cmi *.cma *.cmxa *.so *.a

uninstall:
	ocamlfind remove $(PROJECT)

clean:
	rm -f *.annot *.o *.cm* *.a *.so

