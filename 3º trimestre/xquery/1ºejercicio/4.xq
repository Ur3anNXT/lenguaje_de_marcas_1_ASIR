(:4. Obtén todos los nombres de los libros publicados después de 1993 y con precio menor a 70:)
for $libro in /bib/libro
where $libro/@anyo < 1993 and $libro/precio < 70
return $libro/titulo