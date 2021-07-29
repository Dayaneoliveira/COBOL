       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : LOGICA ESTRUTURADA EM PARAGRAFO
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
      *SEPARACAO EM PARAGRAFOS
       0001-PRINCIPAL.
      *PERFORM ele vai ate o paragrafo executa esse paragrafo e volta
      * GO TO vai para .... por exemplo GO TO 0100-PRINCIPAL, vai ate essa sessao e fica parado lá
           PERFORM 0100-INICIALIZAR.
           IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
           PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
       0200-PROCESSAR.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
               DISPLAY 'MEDIA   ' WRK-MEDIA.
           IF WRK-MEDIA >=6
               DISPLAY 'APROVADO'
           ELSE
               IF WRK-MEDIA >=2
               DISPLAY 'RECUPERACAO'
               ELSE
                   DISPLAY'REPROVADO'
                   END-IF
           END-IF.

       0300-FINALIZAR.
           DISPLAY '=================='
           DISPLAY 'Final de Processamento'.
