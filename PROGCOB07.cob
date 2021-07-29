       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      ********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = Dayane(ALURA) Daya
      *OBJETIVO : RECEBER 02 NOTAS , MEDIA E IMPRIMIR
      *UTILIZAR COMANDO IF/ELSE/ENDIF
      *DATA = XX/XX/XXX
      ********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
       ACCEPT WRK-NOTA1.
       ACCEPT WRK-NOTA2.
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
      *****IF significa SE ALGO ......
      *****ELSE significa SE NÃO ......
      *****END-IF significa para parar o IF
        STOP RUN.
