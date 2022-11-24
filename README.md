# ups-ilu1-ocaml-examples

Ce dépôt contient des exemples de code OCaml visant à illustrer le
"parsing" de la ligne de commande et de fichiers
[CSV](https://fr.wikipedia.org/wiki/Comma-separated_values), en
s'appuyant sur les connaissances acquises au terme de l'UE ILU1 (L2).

Il contient :

* Un [`.gitignore`](./.gitignore) utilisable pour vos projets OCaml+Java sur GitHub
* Un dossier [`ocaml-cli/`](./ocaml-cli/) contenant un projet OCaml complet,
  * avec le fichier standard `OCamlMakefile` téléchargé [d'ici](https://github.com/mmottl/ocaml-makefile/raw/master/OCamlMakefile)
  * et un fichier [`Makefile`](./ocaml-cli/Makefile) qui spécifie les sources du projet.

## Environnement de développement

Ce projet ne pourra pas être lu/modifié avec Learn-OCaml : nous vous
recommandons d'installer `opam` et `tuareg` :

* Machines de TP de l'UPS → `opam` est préinstallé, faire
  ```bash
  cd ~/
  if [ -e .emacs ]; then mv -fv .emacs .emacs~; fi
  curl -fOL https://github.com/erikmd/tapfa-init.el/raw/master/.emacs
  emacs test.ml &
  ```
* Machine personnelle (laptop) →
  suivre [ce tutoriel d'installation](https://github.com/erikmd/tapfa-init.el).

## Configuration

Pour faire cette étape, lancer dans un terminal Linux ou macOS (ou WSL sous Windows) :

```bash
cd ~/
if [ -e .opam ]; then echo OK--Sauter-cette-étape; else opam init --auto-setup --bare ; opam switch create system ocaml-system || opam switch create 4.12.1 ocaml-base-compiler.4.12.1; fi
```

## Compilation

Pour tout compiler, ouvrir un terminal Linux ou macOS (ou WSL sous Windows) et faire :

```bash
opam install csv # installe le paquet "csv" (dépendance du projet)
cd ocaml-cli/
make && ./main.exe 10 20 # compile et lance le programme en lui passant 10 et 20
```
