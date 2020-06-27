(:Título de todas las recetas que tengan menos de 200 calorías, etiquetadas como “<dieta>”.:)
for $receta in /recetas/receta
where $receta/nutricion/@calorias < "200"
return <dieta>{$receta/titulo/data()}</dieta>