# printfilelist
A LaTeX package for printing a list of files used by the current document

Usage
-----

To use this package, simply include in the preamble
```latex
\usepackage{printfilelist}
```
right before `\begin{document}`.
That is, `\printfilelist` should be loaded as the last package.

This LaTeX package provides two macros:
`\printfilelist` and `\ispackageloaded`,
both of which can be used at any point within the current document.

#### `\printfilelist[`*filter*`]`
This macro, by default, prints a list of all files used by the current document
along with their version information.
Replace the optional argument ***filter*** with any text
to filter results.
For example, you can write
```latex
\printfilelist[.sty]
```
to print only the `.sty` files.

#### `\ispackageloaded{`*package*`}`
This macro prints whether ***package*** is loaded or not.
If it's loaded, the output is equivalent to typing
`\printfilelist{`***package***`.sty}` without the paragraph breaks.

Both `\printfilelist` and `\ispackageloaded` macros have starred versions
for suppressing the file version information
to list only the file and package names.

Package Dependencies
--------------------

This package relies on
[`xstring`](https://ctan.org/pkg/xstring) and [`suffix`](https://ctan.org/pkg/suffix) packages.
These packages are omitted in the output
unless they are explicitly loaded earlier in the document preamble.
