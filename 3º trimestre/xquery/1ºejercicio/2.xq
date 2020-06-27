(:2. Obtén cuántos libros han sido editados por la editorial "Addison-Wesley":)
let $editorial := /bib/libro[editorial = "Addison-Wesley"]
return <total_libros>{count($editorial)}</total_libros>