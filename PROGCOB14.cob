       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      *UTILIZAR PERFORM - VARYING
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO   PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.
       77 WRK-RESUL    PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
      *SEPARACAO EM PARAGRAFOS
       0001-PRINCIPAL.

      *PERFORM ele vai ate o paragrafo executa esse paragrafo e volta
      * GO TO vai para .... por exemplo GO TO 0100-PRINCIPAL, vai ate essa sessao e fica parado lá
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
           PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR

           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-NUMERO

       0200-PROCESSAR
      *VARYING o elemento que vai controlar o luppen ele vai variar a variavel.
      *FROM valor iniciar e o BY valor de incremento
      *Until ele vai me garantir o luppen até o contador chegar no valor do LUPPEN
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
               UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
              END-PERFORM.

       0300-FINALIZAR.
           DISPLAY '=================='.
           DISPLAY 'Final de Processamento'.
