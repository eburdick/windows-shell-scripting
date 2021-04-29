:: trying out command line arguments
:: First, turn off display of the code in the output.  The @ keeps the echo off command itself from displaying.  
:: Note comments are never displayed.
@echo off
:: display the first three command line arguments
echo %1
echo %2
echo %3
:: create a local namespace for new variables
SETLOCAL
:: set three numerical variables as copies of the command line parameters,
:: then do a little arithmetic on them, displaying the results
set /A op1 = %1
set /A op2 = %2
set /A op3 = %3
set /A sum = %op1% + %op2% + %op3%
echo sum = %sum%
set /A quot = %op1% / %op2%
echo quotient = %quot%
:: destroy the local namespace and its variables
ENDLOCAL
::
:: Things to notice...
::
:: command line argument values have special symbols %1, %2, etc. %0 is the command itself.
:: set /A parses numerical content from variables, effectively making the resulting variables integers
:: op1 is the name of the variable and %op1% is the value of the variable


