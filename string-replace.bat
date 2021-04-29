@echo off
::
:: String replacement.  This expression scans a string for a match with a search string.
::
:: %variable:search_string=replacement_string% 
::
echo replace def with xyz
set original=abcdef123456
set result=%original:def=xyz%
echo %result%
echo replace 123 with xyz
set result=%result:123=xyz%
echo %result%
echo replace xyz with 789.  There are two instances of xyz.  Both get replaced.
set result=%result:xyz=789%
echo %result%
