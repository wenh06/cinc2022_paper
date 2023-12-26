# vim: set ft=perl:
$clean_ext = 'thm glo gls bbl hd loe synctex.gz synctex.gz(busy) run.xml tex.bak bcf fdb_latexmk run tdo %R-blx.bib toe fls';
$makeindex = 'makeindex -s gind.ist %O -o %D %S';
# $out_dir = 'build';
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeindex -s gglo.ist -o \"$_[0].gls\" \"$_[0].glo\"");
}
$ENV{'TZ'}='Asia/Shanghai';
$pdf_mode = 5;
$dvi_mode = 0;
$postscript_mode = 0;
