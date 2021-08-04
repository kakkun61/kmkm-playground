PWSH = pwsh

out/print-int.exe: out/print-int.c out/print-int.h out/kmkm/prim.c out/kmkm/prim.h out/kmkm/proc.c out/kmkm/proc.h out/kmkm/unit.c out/kmkm/unit.h
	gcc -o out/print-int.exe out/kmkm/prim.c out/kmkm/proc.c out/kmkm/unit.c out/print-int.c

out/print-int.c out/print-int.h out/kmkm/prim.c out/kmkm/prim.h out/kmkm/proc.c out/kmkm/proc.h out/kmkm/unit.c out/kmkm/unit.h &: print-int.s.km
	kmkm --library H:\Projects\kmkm\library --output out print-int.s.km

.PHONY: clean
clean:
	$(RM) -r out
