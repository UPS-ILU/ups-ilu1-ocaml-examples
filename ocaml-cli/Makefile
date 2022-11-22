SRC_OCAML = parse_cli.ml sum_avg.ml libcsv.ml libunix.ml main.ml

SOURCES = $(addprefix src/,$(SRC_OCAML))
PACKS = csv unix
RESULT = main.exe
all: byte-code

-include OCamlMakefile
