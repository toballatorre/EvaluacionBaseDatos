# EvaluacionBaseDatos
Evaluación de la unidad de base de datos

## Enunciado
Dado su gran desempeño en evaluaciones y su irremplazable participación durante las jornadas de bootcamp, Awakelab le ha encomendado el desarrollo de un nuevo proyecto que contempla la implementación de un nuevo modelo formativo. Para ello, se hace realmente necesario un sistema de evaluación del cumplimiento de las aprendizajes y desarrollo de competencias como uno de sus procesos internos.
Para ello, le hace llegar una pequeña descripción del como debe funcionar y más importante aún, que información se requiere obtener de dicho sistema.
Cada evaluación consiste de 1 ó más preguntas con alternativas, sin embargo, para que este proceso sea más flexible, y para aumentar la dificultad de los problemas, uno de los requerimientos es que las preguntas, de las que consisten las evaluaciones, tengan una o más soluciones.

Ejemplo:

“¿Cuál de las siguientes propiedades presenta el paradigma POO?
1. Herencia
2. Polimorfismo
3. Ampliación de cupo automático.”

Para ello, un alto cargo de la institución le describe que considera necesario gestionar un TEST, el que debe contar con un identificador único, nombre, descripción, programa (por ejemplo, Programación FullStack Java Trainnie o Programación Android), la unidad a la que pertenece, además del autor y la fecha de creación. Cada TEST puede tener multiples PREGUNTAS, las que se identifican con un identificador único, un enunciado y un puntaje asociado, y a su vez, cada una de estas tiene múltiples ALTERNATIVAS posibles, las que tienen un identificador único, una descripción, y un valor lógico que señala si es o no una respuesta correcta, más un valor que indica el porcentaje que aporta esta alternativa (de ser una respuesta correcta) al puntaje total de la pregunta.
Por ejemplo, recogiendo el antes citado (sobre el POO), si la pregunta “¿Cuál de las siguientes propiedades presenta el paradigma POO?” tiene un puntaje asociado de 10 puntos, las 2 respuestas correctas podrían aportar el 50% de dicho puntaje cada una. Entonces, al seleccionar solo 2 de estas alternativas, el estudiante sumaría el 100% del puntaje de la pregunta.

Finalmente, las respuestas seleccionadas por los estudiantes que se enfrentan a cada evaluación,
deben quedar guardadas de tal forma que quede registro de las respuestas seleccionadas por cada estudiante considerando el puntaje de cada respuesta.

Además considere todas las entidades, atributos y relaciones de modo de poder responder a las siguientes preguntas por medio de la creación de comandos SQL:
- **Pregunta 1:** Conocer el número de evaluaciones por curso.
- **Pregunta 2:** Conocer los cursos sin evaluaciones.
- **Pregunta 3:** Determinar las evaluaciones con deficiencia. Una evaluación es deficiente:
  1. Si no tiene preguntas.
  2. Si hay preguntas con 2 ó menos alternativas
  3. Si todas las alternativas son correctas o si todas las alternativas son incorrectas.
- **Pregunta 4:** Determinar cuántos alumnos hay en cada curso.
- **Pregunta 5:** Obtener el puntaje no normalizado de cada evaluación. El puntaje no normalizado ha sido definido (requerimiento) como: P = buenas – malas/4. Si un alumno no contesta en una pregunta exactamente lo mismo que se ha definido como correcto, la pregunta cuenta como mala a menos que el alumno haya omitido.
- **Pregunta 6:** Obtener el puntaje normalizado, o sea, de 1,0 a 7,0.
- **Pregunta 7:** Nombre de estudiantes de un curso determinado que aprueban una evaluación determinada (donde la nota de aprobación mínima es un 4,0).
- **Pregunta 8:** Nota promedio de los estudiantes de un curso determinado, para una evaluación de terminada.

Se espera lo siguiente:
- Modelo lógico en OracleDataModeler.
- Modelo relacional en OracleDataModeler.
- DDL generado por OracleDataModeler.
- Script SQL que registre al menos 2 evaluaciones, con 10 preguntas y 4 alternativas.
- Script SQL que registre al menos 2 cursos de 10 estudiantes que respondan estas evaluaciones.
- Script SQL que responda las preguntas enumeradas anteriormente.

## Propuesta
Se presenta el siguiente modelo de cómo realicé la solución a lo solicitado.
![Modelo](https://github.com/toballatorre/EvaluacionBaseDatos/blob/master/Sistema_Evaluaciones/Modelo.png)
