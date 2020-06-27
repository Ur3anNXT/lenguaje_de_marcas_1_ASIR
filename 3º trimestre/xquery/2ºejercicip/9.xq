(:9. Extrae una lista de la compra en HTML para hacer todas las recetas, en la que aparezcan todos
los ingredientes y cantidades:)
<ul>{
    for $ingrediente in /recetas/receta/ingredientes/ingrediente
    return 
        <li>{data($ingrediente)} / Cantidadad: {data($ingrediente/@cantidad)}</li>
     
}</ul>