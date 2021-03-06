       IDENTIFICATION DIVISION.
       PROGRAM-ID.     HELLO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.

       01  RCV-PARMS.
           02  ACCOUNT-BALANCE  PIC 9(9) VALUE ZERO.
           02  ACCOUNT-BAL-REM  PIC 9(9) VALUE ZERO.
           02  AMOUNT           PIC 9(9) VALUE ZERO.
           02  ACTION           PIC X(10) VALUE SPACES.

       PROCEDURE DIVISION USING RCV-PARMS.
       0001-MAIN.
           DISPLAY 'INSIDE 0001-MAIN PARA'.
           IF ACTION = 'DEBIT'
            COMPUTE ACCOUNT-BAL-REM = ACCOUNT-BALANCE - AMOUNT
           ELSE
             IF ACTION = 'CREDIT'
               COMPUTE ACCOUNT-BAL-REM = ACCOUNT-BALANCE + AMOUNT
             END-IF
           END-IF
           GOBACK.
       END PROGRAM HELLO.

