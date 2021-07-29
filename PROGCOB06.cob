
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : USO DO SINAL ( - + )
      *DATA = XX/XX/XXX
      ********************************************
      *PICTURE OU PIC EXISTEM APENAS TRES A(NOMES ALFABETICOS),X(ALFANUMERICO, NUMEROS,LETRAS E SIMBOLOS)
      *9 (NUMERAÇÃO).

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(02)    VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02)    VALUE ZEROS.
       77 WRK-RESUL PIC S9(04)  VALUE ZEROS.
       77 WRK-RESUL-ED PIC -ZZ9 VALUE ZEROS.
      ********** S significa sinal por isso S9 para mostrar na frente se é positivo ou negativo
      ***** Z omite se for ou nao zero.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '============================'.
           DISPLAY 'NUMERO1..' WRK-NUM1.
           DISPLAY 'NUMERO2..' WRK-NUM2.
      *********FROM Quem eu vou subtrair e para devolver esse resultado de subtração GIVING.
      ****************SUBTRAÇÃO*****************
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SUBTRACAO ....' WRK-RESUL.
           DISPLAY 'SUBTRACAO ....' WRK-RESUL-ED.
               STOP RUN.
