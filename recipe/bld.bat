set "TBB_ROOT=%LIBRARY_PREFIX%"
set "TBB_LIB=%LIBRARY_LIB%"
set "TBB_INC=%LIBRARY_INC%"

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
