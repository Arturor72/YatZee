Feature: Lanzamiento de dado

Scenario: Inicio portada

	Given Voy a la pagina
	Then visualizo el "YatZee"

Scenario: Lanzar dado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo numero "3"
#	And visualizo numero "5"
#	And visualizo el total de puntos "8"

Scenario: Relanzar dado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	And selecciono "d3_selected"
	And hago click en el boton "relanzar"
	#Then visualizo numero "6"


Scenario: Veo mi puntaje
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo en la tabla la fila "Total"
	
Scenario: Veo Resultado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo "Resultado"

Scenario: Reiniciar Juego
	Given Voy a jugar
	And hago click en el boton "lanzar"
	When hago click en el boton "Volver a Jugar"
	Then  visualizo "Aun no tienes puntos"
	
Scenario: Ocultar boton lanzar, luego  de lanzar la primera vez los dados
	Given Voy a jugar
	And visualizo "lanzar"
	When hago click en el boton "lanzar"
	Then visualizo "relanzar"

Scenario: Seleccionar una casilla de resultados
	Given Voy a jugar
	When hago click en el boton "lanzar"
#	And dados poseen valor 1, 1, 3, 4, 1
	And selecciono el link "Numero 1s"
#	Then visualizo "tu puntaje aqui es 3"
#	And visualizo total "3"

Scenario: Ver imagenes
	Given Voy a jugar
	When hago click en el boton "lanzar"
#	Then veo la imagen "dado1.png"
