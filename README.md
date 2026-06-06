# printfilelist
A LaTeX package for printing a list of files used by the current document.

Usage
-----

Load the package anywhere in the preamble:
```latex
\usepackage{printfilelist}
```
The load position does not matter, and the package needs nothing beyond the
LaTeX kernel.

It provides two commands, `\printfilelist` and `\ispackageloaded`, both of
which can be used at any point in the document body.

#### `\printfilelist[`*filter*`]`
Prints the files used by the current document, one per line, together with their
version information. The optional ***filter*** keeps only the files whose name
contains the given text. For example,
```latex
\printfilelist[.sty]
```
lists only the `.sty` files.
The starred form `\printfilelist*` prints a compact, comma-separated list of
file names only (no version information), set as inline text.

#### `\ispackageloaded{`*package*`}`
Prints whether ***package*** is loaded, together with its version if so.
The starred form `\ispackageloaded*` prints only "is loaded" or "is not
loaded".
