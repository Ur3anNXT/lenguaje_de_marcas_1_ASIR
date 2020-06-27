(:5. Obtén los títulos de los libros que tengan el mismo precio:)
for $libro1 in /bib/libro
  for $libro2 in /bib/libro
 return 
 if ($libro1/precio=$libro2/precio and $libro1/titulo != $libro2/titulo)
 then
 $libro1/titulo
 else()