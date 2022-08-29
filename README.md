
# Calendario de Publicaciones

En el marco de Principios Fundamentales de las Estadísticas Oficiales (Relevancia, imparcialidad, acceso equitativo, responsabilidad y transparencia, entre otros) y en adhesión a las Recomendaciones Internacionales reconocidas por el Sistema Estadístico Nacional (Asegurar un acceso y una difusión de datos fáciles de usar, de modo que las estadísticas se presenten de forma clara y comprensible, se publiquen de una manera adecuada y conveniente, incluso en forma legible por máquina - “datos abiertos”), la Dirección Nacional de Mercados y Estadística (DNMyE) pone a disposición del conjunto de la población el Calendario de Difusión de Estadísticas del Turismo.

## Periodicidad
Las estadísticas presentadas en el calendario se publican con distinta periodicidad:

- Mensual/trimestral: datos que surgen de operativos estadísticos como la Encuesta de Ocupación Hotelera, la Encuesta de Viajes y Turismo de los Hogares y la Encuesta de Turismo Internacional. Esta información se publica en diversos formatos (informes, reportes y datos abiertos) para facilitar su acceso a través del [SINTA](https://www.yvera.tur.ar/sinta/).

- Eventual: publicaciones en la [Bitácora](https://bitacora.yvera.tur.ar/) y en la [Biblioteca](https://biblioteca.yvera.tur.ar/) de la DNMyE, actualizaciones de tableros y reportes del SINTA, entre otras.

## Actualización
La actualización del calendario se encuentra automatizada utilizando un flujo de [Github Actions](https://github.com/features/actions) (GHA) con las siguientes características:

1. Las publicaciones a difundir se cargan en un archivo en Drive que contiene la fecha, nombre y descripción.

2. El flujo de GHA revisa diariamente si existen nuevos registros en el calendario.

3. En caso de que existan nuevas publicaciones, se ejecuta el .Rmd [index](https://github.com/dnme-minturdep/calendario_dnmye/blob/main/index.Rmd) que genera el calendario.

4. El .Rmd actualiza un archivo con la cantidad de publicaciones al día de la fecha (que servirá de insumo para comparar el día siguiente la búsqueda realizada en el punto 2).

5. Se genera index.html en el repositorio.

6. Este html generado dispara otro flujo de GHA que construye el [sitio web del calendario](https://calendario.yvera.tur.ar/) actualizado.
