$pdf_mode = 1;   # use pdflatex
# doc.sty writes change entries to .glo; turn that into .gls with the gglo style
add_cus_dep('glo', 'gls', 0, 'glo2gls');
sub glo2gls { system("makeindex -s gglo.ist -o \"$_[0].gls\" \"$_[0].glo\""); }