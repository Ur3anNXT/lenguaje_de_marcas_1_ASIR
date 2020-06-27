(:8. Título de todas las recetas que necesiten “Hornear” en algún paso de la receta, etiquetadas como “<al_horno>”.:)
for $receta in /recetas/receta
where $receta/preparacion/paso = "Hornear"
return <al_horno>{$receta/titulo/data()}</al_horno>