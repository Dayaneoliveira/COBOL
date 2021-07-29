       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER E IMPRIMIR DATA DO SISTEMA
      *UTILIZAR VARIAVEL TIPO TABELA - REDEFINES
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *ESSE É O PAI 01 ELE TEM 3 FILHOS ANO,MES E DIA
      *OCCURS dentro dela terão 12 filhos a quantidade de times.
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.
      * REDEFINES vai redefinar a variavel
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
          02 WRK-MES PIC X(3) OCCURS 12 TIMES.

       01 DATASYS.
           02 ANOSYS PIC 9(04) VALUE ZEROS.
           02 MESSYS PIC 9(02) VALUE ZEROS.
           02 DIASYS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
      *DATE (INFORMAÇÃO DO SISTEMA) E CONSOLE (A PESSOA QUE VAI DIGITAR)
       ACCEPT DATASYS FROM DATE YYYYMMDD.
      * WRK-MES(MESSYS) Ele vai puxar o mes e em qual elemento ele esta (x).
        DISPLAY ' DATA ' DIASYS ' DE ' WRK-MES(MESSYS) ' DE ' ANOSYS.

        STOP RUN.
