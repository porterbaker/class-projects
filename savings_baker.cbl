      ******************************************************************
      * Course: CSci 450, Section 1
      * Student Name: Jackson Baker
      * Student ID: 10772799
      * Homework #2
      * Due Date: 9/2/22
      *
      * In keeping with the Honor Code of UM, I have neither given
      * nor received assistance from anyone other than the TA or
      * the instructor
      *
      * Program Descripion: This program will take user input of three
      * numbers (save amount, annual interest rate, and the number of
      * months) and outputs the amount in savings after the given
      * months.
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. savings_baker.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *> Declaring variables for the program
       01 SAVE-AMOUNT PIC 9(3)V9(2).
       01 ANNUAL-INTEREST-RATE PIC 9(3)V9(2) VALUE 000.00.
       01 NUMBER-OF-MONTHS PIC 9(2).
       01 AMOUNT-IN-SAVINGS PIC 9(3)V9(2).
       01 MONTHLY-INTEREST-RATE PIC 9V9(5).
       01 COUNTER PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           *> First, take in user inputs for the values
            DISPLAY "Enter amount to be saved each month: "
            ACCEPT SAVE-AMOUNT.
            DISPLAY "Enter annual intrest rate (enter 5 for 5%): "
            ACCEPT ANNUAL-INTEREST-RATE.
            DISPLAY "Enter number of months: "
            ACCEPT NUMBER-OF-MONTHS.

            *> Quick calculation for MONTHLY-INTEREST-RATE, also
            *> converting annual interest rate to a hundreth
            COMPUTE MONTHLY-INTEREST-RATE = ANNUAL-INTEREST-RATE/12/100

            *> Loop to find amount in savings after the given months
            PERFORM WITH TEST AFTER UNTIL COUNTER = NUMBER-OF-MONTHS
               COMPUTE AMOUNT-IN-SAVINGS = (AMOUNT-IN-SAVINGS +
               SAVE-AMOUNT) * (MONTHLY-INTEREST-RATE + 1)
               ADD 1 TO COUNTER
            END-PERFORM.

            *> Display the final amount in savings
            DISPLAY "The amount in the account is: $" AMOUNT-IN-SAVINGS.
            STOP RUN.

       END PROGRAM savings_baker.
