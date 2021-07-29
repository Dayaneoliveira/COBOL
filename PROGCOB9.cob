       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER PRODUTO,VALOR E CALCULAR O FRETE
      *UTILIZAR COMANDO EVALUETE/WHEN
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
      *** Para entender que existe virgula SPECIAL-NAMES OU RETIRA E USA VIRGULA.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO PIC X(20) VALUE SPACES.
       77 WRK-UF      PIC X(02) VALUE SPACES.
       77 WRK-VALOR   PIC 9(06)V99 VALUE ZEROS.
       77 WRK-FRETE   PIC 9(04)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO.. '
           ACCEPT WRK-PRODUTO.

           DISPLAY 'VALOR.. '
           ACCEPT WRK-VALOR.

           DISPLAY 'ESTADO A ENTREGAR.. '
           ACCEPT WRK-UF.
      ******* CALCULAR O FRETE PROPORCIONAL AO ESTADO.
           EVALUATE WRK-UF
               WHEN 'SP'
                COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ'
                COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'MG'
                COMPUTE WRK-FRETE = WRK-VALOR * 1,15
                WHEN OTHER
                DISPLAY 'Nao entregamos nesse local'
                END-EVALUATE.

                DISPLAY '====================='
                   IF WRK-FRETE NOT EQUAL 0

                DISPLAY 'Valor do Frete com o Produto ' WRK-FRETE
                END-IF.

      *NOT EQUAL SE NAO FOR IGUAL A ZERO ELE MOSTRA O VALOR
        STOP RUN.
