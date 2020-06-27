(:Ordena todas las recetas según el número de pasos que requieran, de menor a mayor.:)
for $receta in /recetas/receta
let $suma := count($receta/preparacion/paso)
order by $suma ascending
return
  <receta>
        <titulo>{$receta/data(titulo)}</titulo>
        <suma_pasos>{$suma}</suma_pasos>
  </receta>
  
