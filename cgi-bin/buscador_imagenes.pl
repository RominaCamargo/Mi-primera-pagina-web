#!/usr/bin/perl
use strict;
use warnings;
use CGI qw(:standard);

# Crear un objeto CGI para manejar los parámetros
my $cgi = CGI->new;

# Obtener el término de búsqueda desde el parámetro 'query'
my $query = $cgi->param('query');

# Si no hay término de búsqueda, redirigir al inicio
if (!$query) {
    print $cgi->redirect('../index.html');
    exit;
}

# URL de búsqueda de imágenes de Google
my $url = "https://images.google.com/search?tbm=isch&q=$query";

# Redirigir al usuario a Google con la consulta de búsqueda de imágenes
print $cgi->redirect($url);

