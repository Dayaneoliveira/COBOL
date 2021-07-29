       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      *UTILIZAR PERFORM - UNTIL
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *******COPY ele vai procurar o caminho do arquivo, literalmente ele copia oq tem dentro.
           COPY 'BOCK.COB'.
       PROCEDURE DIVISION.
      *SEPARACAO EM PARAGRAFOS
       0001-PRINCIPAL.

      *PERFORM ele vai ate o paragrafo executa esse paragrafo e volta
      * GO TO vai para .... por exemplo GO TO 0100-PRINCIPAL, vai ate essa sessao e fica parado lá
               PERFORM 0100-INICIALIZAR.
               IF WRK-VENDAS > 0
                  PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
               END-IF.
               PERFORM 0300-FINALIZAR

           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-VENDAS
       0200-PROCESSAR.
            ADD 1 TO WRK-QT.
            ADD WRK-VENDAS TO WRK-ACUM.
            PERFORM 0100-INICIALIZAR.


       0300-FINALIZAR.
           DISPLAY '=================='.
           DISPLAY 'Acumulado ' WRK-ACUM.
           DISPLAY 'Quantidade ' WRK-QT.
           DISPLAY 'Final de Processamento'.
