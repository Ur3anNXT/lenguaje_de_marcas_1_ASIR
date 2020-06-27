(:1. Obtén los títulos de todos los libros ordenados por el precio (de menor a mayor):)
for $libro in /bib/libro
order by $libro/precio/number() ascending
return $libro/titulo
