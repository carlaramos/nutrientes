# Práctica 11. Lenguaje de dominio específico 

## Carla Ramos Alonso

Práctica 11 de la asignatura de Lenguajes y paradigmas de la programación.
En dicha práctica haremos uso de las prácticas anteriores, y utilizaremos la clase
Alimento_ y List que en nuestro caso definen una lista doblemente enlazada de alimentos, que 
a su vez pertenecen a un grupo, ya que hemos hecho uso de la herencia. 
Hemos hecho uso de los mixin de Ruby **Enumerable** y **Comparable**. Además, en esta práctica hacemos uso del paradigma de programación funcional
y hemos calculado el **aibc** y el **ig** de los alimentos y de los distintos individuos. La nueva funcionalidad añadida es la ordenación de una determinada lista de alimentos
mediante tres métodos diferentes: **for**, **each** y **sort**.

Las herramientas que hemos usado para el desarrollo de la misma son las siguientes:

__Bundler:__ Manejo de gemas  
__Rspec:__   Desarrollo dirigido por pruebas  
__Guard:__   Comprobación continua  
__Travis:__  Ejecución de los resultados  
__Benchmark:__ Informe de tiempo (banco de pruebas)  
__Coveralls:__ Devuelve el cubrimiento y las estadísticas del código Ruby desarrollado  

Usaremos la metodología del **desarrollo dirigido por pruebas**, que consiste en la definición de las pruebas, con el resultado que esperamos, y luego la implementación del mínimo código necesario para el éxito de la misma.
Los **DSL** son herramientas útiles que permiten expresar fácilmente la lógica específica de un problema particular
(dominio) que de otro modo será difícil o farragoso de escribir en otro idioma. 
## Interpretación

Para la interpretación del programa tendremos tan solo que modificar los ficheros de pruebas o clicar enter en la consola con la ejecución de guard, ya que este nos permite ver la ejecución de las pruebas cada vez que estas se modifiquen.
Para ello ejecutaremos:  
    `bundle exec guard`

## Resultado

Se podrán insertar alimentos a la lista, y además extraer el primero o el último.  
El programa también hace uso de **herencia** con Ruby, de manera que los alimentos están clasificados por grupos de alimentos, que es una clase heredada de la clase alimento creada en las prácticas anteriores.
A su vez, gracias a los **mixin** implementados, podremos obtener el maximo valor en la lista, el menor, desordenarla, definir un bloque para que se cumpla en los elementos de la lista, etc. 
Tenemos también el resultado del AIBC y además los IG de los alimentos (yogurt, chocolate y compota de manzana) y de los dos individuos instanciados.
Tras la ordenación de la lista obtendremos una lista ordenada utilizando los valores energéticos de cada alimento.


## Documentación

Para generar la documentación en Ruby he hecho uso de la herramienta **rdoc** la cual he instalado mediante: 
`gem install rdoc`
Y tras haber comentado el código fuente he generado la documentación con:
`rdoc`
Se ha generado un directorio **docs** en mi directorio de trabajo en el que se incluye el fichero donde se puede encontrar toda la documentación:  

__docs/index.html__


