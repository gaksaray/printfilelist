# printfilelist
A LaTeX package for inspecting the files used by the current document.

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
contains the given text; for example, `\printfilelist[.sty]` lists only the
`.sty` files. The default filter, `.`, keeps any file that has an extension,
while an empty filter, `\printfilelist[]`, keeps every recorded file. If nothing
matches, a short note is printed instead.

The starred form `\printfilelist*` prints a compact, comma-separated list of
file names only (no version information), set as inline text so it can be
embedded in running prose.

#### `\ispackageloaded{`*package*`}`
Prints whether ***package*** is loaded, together with its version if so.
The starred form `\ispackageloaded*` prints only "is loaded" or "is not
loaded". Only packages (`.sty` files) are recognized, not document classes.

---

Author: Gorkem Aksaray (<aksarayg@tcd.ie>)  
Version: 1.1.0 (2026-06-07)  
License: [LaTeX Project Public License v1.3c](https://www.latex-project.org/lppl.txt)
