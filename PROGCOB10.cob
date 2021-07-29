       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER USUARIO NIVEL
      *UTILIZAR VARIAVEL NIVEL 88 - LOGICA
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
      *** Para entender que existe virgula SPECIAL-NAMES OU RETIRA E USA VIRGULA.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(20) VALUE SPACES.
      *PAI 77 e Filhos 88
       77 WRK-NIVEL   PIC 9(02) VALUE ZEROS.
           88 ADM  VALUE 01.
           88 USER VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO.. '
           ACCEPT WRK-USUARIO.

           DISPLAY 'NIVEL.. '
           ACCEPT WRK-NIVEL.

           IF ADM
               DISPLAY 'Nivel- Administrador'
           ELSE
               IF USER
                   DISPLAY 'Nivel-Usuario'
                   ELSE
                       DISPLAY 'Usuario nao autorizado'
                   END-IF
           END-IF.
        STOP RUN.
