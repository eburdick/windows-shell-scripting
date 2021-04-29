::
:: String extraction.  This command returns a subset of the characters in a string by deleting two ranges as
:: follows...
::
:: %variable:~skipnum% deletes characters from the beginning of the string.  Call the result initial substring.
::    skipnum > 0, delete first skipnum characters
::    skipnum = 0, delete no characters
::    skipnum < 0, delete all but the last skipnum characters
:: %variable:~skipnum,scanrange% deletes more characters from initial substring as follows...
::       scanrange > 0, keep scanrange characters starting at the beginning of initial substring
::       scanrange < 0, delete scanrange characters from the end of initial substring and returns what is left.
::
:: Examples:
::
@echo off
set original=123456789abcdef0
echo original %original%

:: extract the first five characters (delete nothing, keep next five)
set firstfive=%original:~0,5%
echo firstfive %firstfive%

:: extract the second five characters (delete five characters, keep next five)
set secondfive=%original:~5,5%
echo secondfive %secondfive%

:: extract everything but the first five characters (delete five characters)
set afterfive=%original:~5%
echo afterfive %afterfive%

:: extract the last five characters (delete all but last five characters)
set lastfive=%original:~-5%
echo lastfive %lastfive%

:: extract all but last five characters (delete nothing, keep all but last five characters)
set allbutlast5=%original:~0,-5%
echo allbutlast5 %allbutlast5%

:: extract all but the first and last five (delete first 5 characters, keep all but last five characters)
set middle=%original:~5,-5%
echo middle %middle%

:: extract between five from the end and seven from the end (delete all but last 7, keep all but last five characters)
set middle2=%original:~-7,-5%
echo middle2 %middle2%
