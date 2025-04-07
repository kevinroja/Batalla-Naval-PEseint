Algoritmo BatallaNaval
	Definir tablero1, tablero2 Como Entero
	Definir x, a, i, j Como Entero
	Definir barcos1, barcos2 Como Entero
	
	Dimension tablero1[10,10]
	Dimension tablero2[10,10]
	
	// Inicializar tableros en 0
	Para i = 1 Hasta 5
		Para j = 1 Hasta 5
			tablero1[i,j] <- 0
			tablero2[i,j] <- 0
		FinPara
	FinPara
	
	// Colocar barcos jugador 1
	Escribir "Jugador 1: Coloca tus 3 barcos (coordenadas entre 1 y 10)"
	Para i = 1 Hasta 3
		Escribir "Barco ", i
		Escribir "Fila:"
		Leer x
		Escribir "Columna:"
		Leer a
		tablero1[x,a] <- 1
	FinPara
	
	Limpiar Pantalla
	
	// Colocar barcos jugador 2
	Escribir "Jugador 2: Coloca tus 3 barcos (coordenadas entre 1 y 5)"
	Para i = 1 Hasta 3
		Escribir "Barco ", i
		Escribir "Fila:"
		Leer x
		Escribir "Columna:"
		Leer a
		tablero2[x,a] <- 1
	FinPara
	
	Limpiar Pantalla
	
	barcos1 <- 3
	barcos2 <- 3
	
	// Turnos de juego
	Mientras barcos1 > 0 Y barcos2 > 0
		// Turno Jugador 1
		Escribir "Jugador 1: Dispara al tablero del jugador 2"
		Escribir "Fila:"
		Leer x
		Escribir "Columna:"
		Leer a
		
		Si tablero2[x,a] = 1 Entonces
			Escribir "¡Impacto!"
			tablero2[x,a] <- 2
			barcos2 <- barcos2 - 1
		SiNo
			Escribir "¡Fallaste!"
			tablero2[x,a] <- -1
		FinSi
		
		// Verificar si terminó
		Si barcos2 = 0 Entonces
			Escribir "¡Jugador 1 gana!"
		FinSi
		
		// Turno Jugador 2
		Escribir "Jugador 2: Dispara al tablero del jugador 1"
		Escribir "Fila:"
		Leer x
		Escribir "Columna:"
		Leer a
		
		Si tablero1[x,a] = 1 Entonces
			Escribir "¡Impacto!"
			tablero1[x,a] <- 2
			barcos1 <- barcos1 - 1
		SiNo
			Escribir "¡Fallaste!"
			tablero1[x,a] <- -1
		FinSi
		
		Si barcos1 = 0 Entonces
			Escribir "¡Jugador 2 gana!"
		FinSi
	FinMientras
FinAlgoritmo