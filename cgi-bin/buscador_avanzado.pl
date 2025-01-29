#!/usr/bin/perl
use strict;
use warnings;
use CGI qw(:standard);

# Crear un objeto CGI para manejar los parámetros
my $cgi = CGI->new;

# Obtener los términos de búsqueda
my $todas = $cgi->param('todas-palabras') || '';
my $exacta = $cgi->param('frase-exacta') || '';
my $cualquiera = $cgi->param('cualquiera-palabras') || '';
my $ninguna = $cgi->param('ninguna-palabras') || '';
my $numero_del = $cgi->param('numero-del') || '';
my $numero_al = $cgi->param('numero-al') || '';
my $idioma = $cgi->param('idioma') || '';
my $region = $cgi->param('region') || '';
my $actualizacion = $cgi->param('actualizacion') || '';
my $sitio = $cgi->param('sitio') || '';
my $tipo_archivo = $cgi->param('tipo-archivo') || '';
my $derechos_uso = $cgi->param('derechos-uso') || '';

# URL de búsqueda de Google
my $url = "https://www.google.com/search?q=";

# Agregar los parámetros a la URL de búsqueda
if ($todas) {
    $url .= join('+', split(' ', $todas));
}
if ($exacta) {
    $url .= "+\"$exacta\"";
}
if ($cualquiera) {
    $url .= "+(" . join('|', split(' ', $cualquiera)) . ")";
}
if ($ninguna) {
    $url .= "+-(" . join('|', split(' ', $ninguna)) . ")";
}

# Agregar restricciones adicionales a la búsqueda (si es necesario)
$url .= "&hl=$idioma" if $idioma && $idioma ne '';
$url .= "&gl=$region" if $region && $region ne '';
$url .= "&tbs=qdr:$actualizacion" if $actualizacion && $actualizacion ne '';
$url .= "&site=$sitio" if $sitio;
$url .= "&num=$numero_del-$numero_al" if $numero_del && $numero_al;

# Redirigir a la URL construida de Google
print $cgi->redirect($url);
