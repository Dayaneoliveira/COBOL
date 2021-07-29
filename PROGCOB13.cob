       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      *UTILIZAR PERFORM
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

       0200-PROCESSAR.
      *TIMES o tanto que vc iria processar isso.
           PERFORM 10 TIMES
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
      *Estou adicionando mais 1 para o contador.
               ADD 1 TO WRK-CONTADOR
              END-PERFORM.

       0300-FINALIZAR.
           DISPLAY '=================='.
           DISPLAY 'Final de Processamento'.
