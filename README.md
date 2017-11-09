# Práctica 7. Listas doblemente enlazadas con Ruby

## Carla Ramos Alonso

Práctica 7 de la asignatura de Lenguajes y paradigmas de la programación.
Con dicha práctica haremos la implementación de una lista doblemente enlazada y la posterior inserción y eliminación de alimentos de la misma.

Las herramientas que hemos usado para el desarrollo de la misma son las siguientes:

__Bundler:__ Manejo de gemas
__Rspec:__   Desarrollo dirigido por pruebas
__Guard:__   Comprobación continua

Usaremos la metodología del **desarrollo dirigido por pruebas**, que consiste en la definición de las pruebas, con el resultado que esperamos, y luego la implementación del mínimo código necesario para el éxito de la misma.

## Interpretación

Para la interpretación del programa tendremos tan solo que modificar los ficheros de pruebas o clicar enter en la consola con la ejecución de guard, ya que este nos permite ver la ejecución de las pruebas cada vez que estas se modifiquen.

## Resultado

Se podrán insertar alimentos a la lista, y además extraer el primero o el último.
El programa también hace uso de **herencia** con Ruby, de manera que los alimentos están clasificados por grupos de alimentos, que es una clase heredada de la clase alimento creada en las prácticas anteriores.