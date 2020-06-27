(:3. Obtén en una consulta para cada autor, su nombre y el número de libros que ha escrito:)
for $autor in /bib/libro/autor
return 
  <autor>
        {$autor/nombre}
        {$autor/apellido}
        <libros_escritos>{count($autor)}</libros_escritos>
  </autor>
  
  (:FALTA QUITAR EL DUPLICADO:)