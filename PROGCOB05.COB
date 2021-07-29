
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : OPERADORES ARITMETICOS
      *DATA = XX/XX/XXX
      ********************************************
      *PICTURE OU PIC EXISTEM APENAS TRES A(NOMES ALFABETICOS),X(ALFANUMERICO, NUMEROS,LETRAS E SIMBOLOS)
      *9 (NUMERAÇÃO).

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '============================'.
           DISPLAY 'NUMERO1..' WRK-NUM1.
           DISPLAY 'NUMERO2..' WRK-NUM2.
      *ADD esta somando juntando essas variavies e vai jogar o resultado no TO wrk-resul.(VARIAVEL DE RESULTADO)
      ****************SOMA**********************
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA ....' WRK-RESUL.
      *********FROM Quem eu vou subtrair e para devolver esse resultado de subtração GIVING.
      ****************SUBTRAÇÃO*****************
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO ....' WRK-RESUL.
      *****BY dividir esse por esse ou seja coloca o numero ou a variavel de divisão*****************
      *****REMAINDER ONDE FICA RESULTADO RESTANTE DA CONTA *****************
      ****************Divisão*****************
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
            DISPLAY 'DIVISAO ....' WRK-RESUL.
            DISPLAY 'RESTO ....' WRK-RESTO.
      *****BY qual numero quer multiplicar*****************
      ****************MULTIPLICAÇÃO*****************
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO....' WRK-RESUL.

      *****Média, quando esta mexendo com expressão numerica pode usar.***********
      ****************COMPUTE*****************
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA....' WRK-RESUL.

               STOP RUN.
