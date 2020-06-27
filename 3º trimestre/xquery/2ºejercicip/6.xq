(:6. Título de todas las recetas que tengan como ingrediente “Aceite de oliva”.:)
for $receta in /recetas/receta
where $receta/ingredientes/ingrediente = "Aceite de oliva"
return $receta/titulo