       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER LARGURA E COMPRIMENTO
      *CALCULAR AREA
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
      *** Para entender que existe virgula SPECIAL-NAMES OU RETIRA E USA VIRGULA.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA       PIC 9(03)V99 VALUE ZEROS.
       77 WRK-COMPRIMENTO   PIC 9(03)V99 VALUE ZEROS.
       77 WRK-AREA          PIC 9(03)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'Largura.. '
           ACCEPT WRK-LARGURA.

           DISPLAY 'Comprimento.. '
           ACCEPT WRK-Comprimento.
      * PODE USAR PARA MAIO O SINAL OU A PALAVRA GREATER, ABAIXO ESTÃO OS DOIS MODELOS.
           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO GREATER 0
           COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
           DISPLAY '=================='
           DISPLAY 'Area......' WRK-AREA
           ELSE
               DISPLAY 'Falta informar dados'
           END-IF.
      * AND é para ligar as condicoes largura e comprimento
      * OR é Basta que uma condicao seja um resultado por exemplo lar 1 ou compr 0, nesse caso estraga a logica
        STOP RUN.
