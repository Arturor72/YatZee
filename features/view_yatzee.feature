Feature: Lanzamiento de dado

Scenario: Inicio portada

	Given Voy a la pagina
	Then visualizo el "YatZee"

Scenario: Lanzar dado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo numero "1" 
	And visualizo el total de puntos "1"


