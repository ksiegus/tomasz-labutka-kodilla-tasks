call runcrud.bat
if "%ERRORLEVEL%" == "0" goto runbrowser
echo.
echo RUNCRUD.BAT has errors – breaking work
goto fail

:runbrowser
call start chrome "http://localhost:8080/crud/v1/task/getTasks"
goto end

:fail
echo.
echo ERROR

:end
echo.
echo OK