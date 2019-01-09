if "%PHPBIN%" == "" set PHPBIN=D:\Program Files (x86)\php5.6\php.exe
if not exist "%PHPBIN%" if "%PHP_PEAR_PHP_BIN%" neq "" goto USE_PEAR_PATH
GOTO RUN
:USE_PEAR_PATH
set PHPBIN=%PHP_PEAR_PHP_BIN%
:RUN
"%PHPBIN%" "D:\Program Files (x86)\php5.6\phpcs.phar" %*
