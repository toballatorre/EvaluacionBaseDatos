
-- AUTOR
insert into autor values ('BG', 'Brian', 'Guzman');
insert into autor values ('OG', 'Oscar', 'Gonzales');

-- ESTUDIANTE
insert into estudiante values (1, 'Aquiles', 'Baeza');
insert into estudiante values (2, 'Elsa', 'Pito');
insert into estudiante values (3, 'Rosamel', 'Fierro');
insert into estudiante values (4, 'Mario', 'Neta');
insert into estudiante values (5, 'Jose', 'Lamata');
insert into estudiante values (6, 'Rosa', 'Malcacho');
insert into estudiante values (7, 'Luz', 'Roja');
insert into estudiante values (8, 'Cindy', 'Nero');
insert into estudiante values (9, 'Guillermo', 'Nigote');
insert into estudiante values (10, 'Oscar', 'Pintero');
insert into estudiante values (11, 'Penelope', 'Luda');
insert into estudiante values (12, 'Nestor', 'Menta');
insert into estudiante values (13, 'Juampa', 'Ton');
insert into estudiante values (14, 'Hector', 'Cido');
insert into estudiante values (15, 'Jorge', 'Latina');

-- PROGRAMA
insert into programa values ('FSJ', 'Fullstack Java');
insert into programa values ('PRA', 'Programacion Android');
insert into programa values ('UXI', 'UX/UI');

-- UNIDAD
insert into unidad values(1, 'Unidad I');
insert into unidad values(2, 'Unidad II');
insert into unidad values(3, 'Unidad III');
insert into unidad values(4, 'Unidad VI');

-- CURSO
insert into curso values(1, 'Ex-Else', 'FSJ');
insert into curso values(2, 'FOR', 'PRA');
insert into curso values(3, 'IF', 'UXI');

-- Relacion entre estudiante y curso
insert into asign_curso values(1,1,1);
insert into asign_curso values(2,2,1);
insert into asign_curso values(3,3,1);
insert into asign_curso values(4,4,1);
insert into asign_curso values(5,5,1);

insert into asign_curso values(6,6,2);
insert into asign_curso values(7,7,2);
insert into asign_curso values(8,8,2);
insert into asign_curso values(9,9,2);
insert into asign_curso values(10,10,2);

insert into asign_curso values(11,11,3);
insert into asign_curso values(12,12,3);
insert into asign_curso values(13,13,3);
insert into asign_curso values(14,14,3);
insert into asign_curso values(15,15,3);


-- TEST 01
insert into test 
values(1, 'Cuestionario de evaluacion de conocimientos en POO y Java',
    '13-MAR-20', 'El siguiente Test es una herramienta de ayuda para comprobar tu familiaridad con algunos conceptos de la POO y Java.',
    'FSJ', 'BG', 2);
-- TEST 02
insert into test
values(2, 'Cuestionario de Evaluacion de conocimientos en JavaScript',
    '13-MAR-20', 'Comprueba tus conocimientos sobre JavaScript con este test de 10 preguntas. Al finalizar obtendras el 
    resultado junto con las respuestas de las que no hayas acertado.',
    'PRA', 'OG', 1);
-- TEST 03
insert into test
values(3, 'Cuestionario de Evaluación de conocimientos en HTML',
    '14-MAR-20', 'Comprueba tus conocimientos sobre HTML, el lenguaje de la Web, con este test de 10 preguntas.',
    'PRA', 'OG', 4);

-- PREGUNTAS Y ALTERNATIVAS

--001
insert into pregunta 
values (1, '1- ¿Cuál es la descripción que crees que define mejor el concepto CLASE en la programación orientada a objetos?', 
    20, 1);
insert into alternativa values(1, 'A', 'Es un concepto similar al de array',
    0, 0, 1);
insert into alternativa values(2, 'B', 'Es un tipo particular de variable',
    0, 0, 1);
insert into alternativa values(3, 'C', 'Es un modelo o plantilla a partir de la cual creamos objetos',
    1, 1, 1);
insert into alternativa values(4, 'D', 'Es una categoria de datos ordenada secuencialmente',
    0, 0, 1);
--002
insert into pregunta 
values (2, '2- ¿Qué elementos crees que definen a un objeto?', 
    10, 1);
insert into alternativa values(5, 'A', 'Sus cardinalidad y su tipo',
    0, 0, 2);
insert into alternativa values(6, 'B', 'Sus atributos y sus métodos',
    1, 1, 2);
insert into alternativa values(7, 'C', 'La forma en que establece comunicación e intercambia mensajes',
    0, 0, 2);
insert into alternativa values(8, 'D', 'Su interfaz y los eventos asociados',
    0, 0, 2);
--103
insert into pregunta 
values (3, '3- ¿Qué código de los siguientes tiene que ver con la herencia?', 
    10, 1);
insert into alternativa values(9, 'A', 'public class Componente extends Producto',
    1, 1, 3);
insert into alternativa values(10, 'B', 'public class Componente inherit Producto',
    0, 0, 3);
insert into alternativa values(11, 'C', 'public class Componente implements Producto',
    0, 0, 3);
insert into alternativa values(12, 'D', 'public class Componente belong to Producto',
    0, 0, 3);
--104
insert into pregunta 
values (4, '4- ¿Qué significa instanciar una clase?', 
    10, 1);
insert into alternativa values(13, 'A', 'Duplicar una clase',
    0, 0, 4);
insert into alternativa values(14, 'B', 'Eliminar una clase',
    0, 0, 4);
insert into alternativa values(15, 'C', 'Crear un objeto a partir de la clase',
    1, 1, 4);
insert into alternativa values(16, 'D', 'Conectar dos clases entre si',
    0, 0, 4);
--105
insert into pregunta 
values (5, '5- En Java, ¿a qué nos estamos refiriendo si hablamos de Swing?', 
    5, 1);
insert into alternativa values(17, 'A', 'Una función utilizada para intercambiar valores',
    0, 0, 5);
insert into alternativa values(18, 'B', 'Es el sobrenombre de la versión 1.3 del JDK',
    0, 0, 5);
insert into alternativa values(19, 'C', 'Un framework específico para Android',
    0, 0, 5);
insert into alternativa values(20, 'D', 'Una librería para construir interfaces gráficas',
    1, 1, 5);
--106
insert into pregunta 
values (6, '6- ¿Qué es Eclipse?', 
    20, 1);
insert into alternativa values(21, 'A', 'Una libreria de Java',
    0, 0, 6);
insert into alternativa values(22, 'B', 'Una versión de Java especial para servidores',
    0, 0, 6);
insert into alternativa values(23, 'C', 'Un IDE para desarrollar aplicaciones',
    1, 1, 6);
insert into alternativa values(24, 'D', 'Ninguna de las anteriores',
    0, 0, 6);
--107
insert into pregunta 
values (7, '7- ¿Qué es el bytecode en Java?', 
    20, 1);
insert into alternativa values(25, 'A', 'El formato de intercambio de datos',
    0, 0, 7);
insert into alternativa values(26, 'B', 'El formato que obtenemos tras compilar un fuente .java',
    1, 1, 7);
insert into alternativa values(27, 'C', 'Un tipo de variable',
    0, 0, 7);
insert into alternativa values(28, 'D', 'Un depurador de código',
    0, 0, 7);
--108
insert into pregunta 
values (8, '8- ¿Qué código asociarías a una Interfaz en Java?', 
    10, 1);
insert into alternativa values(29, 'A', 'public class Componente interface Product',
    0, 0, 8);
insert into alternativa values(30, 'B', 'Componente cp = new Componente (interfaz)',
    0, 0, 8);
insert into alternativa values(31, 'C','public class Componente implements Printable',
    1, 1, 8);
insert into alternativa values(32, 'D', 'Componente cp = new Componente.interfaz',
    0, 0, 8);
--109
insert into pregunta 
values (9, '9- ¿Qué significa sobrecargar (overload) un método?', 
    10, 1);
insert into alternativa values(33, 'A', 'Editarlo para modificar su comportamiento',
    0, 0, 9);
insert into alternativa values(34, 'B', 'Cambiarle el nombre dejándolo con la misma funcionalidad',
    0, 0, 9);
insert into alternativa values(35, 'C', 'Crear un método con el mismo nombre pero diferentes argumentos',
    1, 1, 9);
insert into alternativa values(36, 'D', 'Añadirle funcionalidades a un método',
    0, 0, 9);
--110
insert into pregunta 
values (10, '10- ¿Qué es una excepción?', 
    10, 1);
insert into alternativa values(37, 'A', 'Un error que lanza un método cuando algo va mal',
    1, 1, 10);
insert into alternativa values(38, 'B', 'Un objeto que no puede ser instanciado',
    0, 0, 10);
insert into alternativa values(39, 'C', 'Un bucle que no finaliza',
    0, 0, 10);
insert into alternativa values(40, 'D', 'Un tipo de evento muy utilizado al crear interfaces',
    0, 0, 10);

--201
insert into pregunta 
values (11, '1- ¿En qué lugar se ejecuta generalmente el código JavaScript?', 20, 2);
insert into alternativa
values (41, 'A', 'Servidor', 0, 0, 11);
insert into alternativa
values (42, 'B', 'Cliente (en el propio navegador de internet)', 1, 1, 11);

--202
insert into pregunta 
values (12, '2- ¿Cuáles de estas son marcas para la inserción del código JavaScript en las páginas HTML?', 20, 2);
insert into alternativa
values (43, 'A', '< javascript _code > y < /javascript_code >', 0, 0, 12);
insert into alternativa
values (44, 'B', '< script > y < /script >', 1, 1, 12);
insert into alternativa
values (45, 'C', '< ?script > y < script? >', 0, 0, 12);

--203
insert into pregunta 
values (13, '3- La llamada al código Javascript debe colocarse en:', 20, 2);
insert into alternativa
values (46, 'A', 'La sección Body de la página', 0, 0, 13);
insert into alternativa
values (47, 'B', 'Antes de la etiqueta HTML', 0, 0, 13);
insert into alternativa
values (48, 'C', 'Puede colocarse en la sección Head o en Body', 1, 1, 13);

--204
insert into pregunta 
values (14, '4- En JavaScript, para darle el nombre a una variable, objeto o función, debemos tener en cuenta que:', 20, 2);
insert into alternativa
values (50, 'A', 'No se pueden usar mayúsculas', 0, 0, 14);
insert into alternativa
values (51, 'B', 'JavaScript no distingue entre may?sculas y min?sculas', 0, 0, 14);
insert into alternativa
values (52, 'C', 'JavaScript diferencia entre may?sculas y min?sculas', 1, 1, 14);

--205
insert into pregunta 
values (15, '5-¿Cuál es la instrucci?n usada para devolver un valor en una función de JavaScript?', 20, 2);
insert into alternativa
values (53, 'A', 'Send', 0, 0, 15);
insert into alternativa
values (54, 'B', 'Return', 1, 1, 15);
insert into alternativa
values (55, 'C', 'Value', 0, 0, 15);

-- Relacion estudiante pregunta
insert into respuestas values(1, 'C', 1, 1);
insert into respuestas values(2, 'B', 1, 2);
insert into respuestas values(3, 'A', 1, 3);
insert into respuestas values(4, 'C', 1, 4);
insert into respuestas values(5, 'D', 1, 5);
insert into respuestas values(6, 'C', 1, 6);
insert into respuestas values(7, 'B', 1, 7);
insert into respuestas values(8, 'C', 1, 8);
insert into respuestas values(9, 'C', 1, 9);
insert into respuestas values(10, 'A', 1, 10);

insert into respuestas values(11, 'A', 2, 1);
insert into respuestas values(12, 'C', 2, 2);
insert into respuestas values(13, 'C', 2, 3);
insert into respuestas values(14, 'C', 2, 4);
insert into respuestas values(15, 'B', 2, 5);
insert into respuestas values(16, 'C', 2, 6);
insert into respuestas values(17, 'C', 2, 7);
insert into respuestas values(18, 'B', 2, 8);
insert into respuestas values(19, 'A', 2, 9);
insert into respuestas values(20, 'A', 2, 10);

insert into respuestas values(21, 'B', 3, 1);
insert into respuestas values(22, 'D', 3, 2);
insert into respuestas values(23, 'A', 3, 3);
insert into respuestas values(24, 'C', 3, 4);
insert into respuestas values(25, 'D', 3, 5);
insert into respuestas values(26, 'C', 3, 6);
insert into respuestas values(27, 'A', 3, 7);
insert into respuestas values(28, 'C', 3, 8);
insert into respuestas values(29, 'D', 3, 9);
insert into respuestas values(30, 'A', 3, 10);

insert into respuestas values(31, 'D', 4, 1);
insert into respuestas values(32, 'A', 4, 2);
insert into respuestas values(33, 'A', 4, 3);
insert into respuestas values(34, 'C', 4, 4);
insert into respuestas values(35, 'A', 4, 5);
insert into respuestas values(36, 'C', 4, 6);
insert into respuestas values(37, 'B', 4, 7);
insert into respuestas values(38, 'D', 4, 8);
insert into respuestas values(39, 'B', 4, 9);
insert into respuestas values(40, 'A', 4, 10);

insert into respuestas values(41, 'C', 5, 1);
insert into respuestas values(42, 'A', 5, 2);
insert into respuestas values(43, 'D', 5, 3);
insert into respuestas values(44, 'C', 5, 4);
insert into respuestas values(45, 'D', 5, 5);
insert into respuestas values(46, 'C', 5, 6);
insert into respuestas values(47, 'D', 5, 7);
insert into respuestas values(48, 'C', 5, 8);
insert into respuestas values(49, 'C', 5, 9);
insert into respuestas values(50, 'A', 5, 10);

--Asignacion Test
insert into asign_test values (1, 1, 1);
insert into asign_test values (2, 2, 1);
insert into asign_test values (3, 3, 1);
insert into asign_test values (4, 4, 1);
insert into asign_test values (5, 5, 1);

insert into asign_test values (6, 6, 2);
insert into asign_test values (7, 7, 2);
insert into asign_test values (8, 8, 2);
insert into asign_test values (9, 9, 2);
insert into asign_test values (10, 10, 2);
