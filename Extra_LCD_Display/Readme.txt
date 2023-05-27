How to: Use the LCD display of DE2-115.
--> Adapted from Gerry O'Brien's.
--> Check www.digital-circuitry.com for his work.

--> NOTA: Para a legenda de Hexadecimal para Carateres Alfanuméricos, ver o ficheiro 'Legenda.txt'.

--> Interface (instanciação do dispositivo):
	1. Ligar 'reset' ao VCC (é active_low), ou a um switch.
	2. Ligar o 'clock' ao CLOCK_50 da DE2-115.
	3. As portas LCD_CHAR_ARRAY representam os 4 bits seletores da mensagem que aparece no display LCD.
	4. Relativamente aos outputs, segue-se a representação para a DE2-115, por ordem de cima para baixo:
		-> LCD_RS
		-> LCD_EN
		-> LCD_RW
		-> LCD_ON
		-> LCD_BLON
		-> LCD_DATA[0]
		-> LCD_DATA[1]
		-> LCD_DATA[...]
		-> LCD_DATA[7]

--> NOTA: Estas são as únicas coisas que importam aquando da instanciação deste dispositivo. A arquitetura é demasiado complexa para estar a analisar, deixando-se os créditos para o seu desenvolvedor Gerry O'Brien.



NOTA: PARA CONVERTER (USANDO O PROGRAMA JAVA), FAZER "java Conversor_StringToHex.java".