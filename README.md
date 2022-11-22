# ups-ilu1-ocaml-examples

Ce dépôt contient des exemples de code OCaml visant à illustrer le
"parsing" de la ligne de commande, en s'appuyant sur les connaissances
acquises au terme de l'UE ILU1 (L2).

Il contient :

* Un [`.gitignore`](./.gitignore) utilisable pour vos projets OCaml+Java sur GitHub
* Un dossier [`ocaml-cli/`](./ocaml-cli/) contenant un projet OCaml complet,
  * avec le fichier standard `OCamlMakefile` téléchargé [d'ici](https://github.com/mmottl/ocaml-makefile/raw/master/OCamlMakefile)
  * et un fichier [`Makefile`](./ocaml-cli/Makefile) qui spécifie les sources du projet.

Pour tout compiler, lancer dans un terminal Linux ou macOS (ou dans WSL sous Windows),

```bash
cd ocaml-cli/
make
./main.exe 10 20
```
