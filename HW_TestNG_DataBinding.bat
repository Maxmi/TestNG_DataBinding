@ECHO OFF
::========================================
::SET GITHUB_ACCOUNT=ChukhraiUriy
::SET WS_DIR=Workspace
::SET REPO_NAME=Title_Validation_CLO
::SET APP_VERSION=1.1
::SET MAIN_CLASS_01=core.Selenium_CLO
::SET TEST_SUITE=AllTests
::SET COM_OPT_POS=-c TC-001.01 -u http://www.youtube.com -t YouTube
::SET COM_OPT_NEG=-c TC-001.01 -u http://www.youtube.com -t YouTube
::========================================

::========================================
SET GITHUB_ACCOUNT=%1
SET WS_DIR=%2
SET REPO_NAME=%3
SET APP_VERSION=%4
SET TEST_CLASS=%5
SET TEST_SUITE=%6
::========================================

IF "%JAVA_HOME%" == "" GOTO EXIT_JAVA
ECHO Java installed
IF "%M2%" == "" GOTO EXIT_MVN
ECHO Maven installed
CALL git --version > nul 2>&1
IF NOT %ERRORLEVEL% == 0 GOTO EXIT_GIT
ECHO Git installed


GOTO NEXT

:NEXT
IF NOT EXIST C:\%WS_DIR% GOTO NO_WORKSPACE
::IF EXIST C:\%WS_DIR%\%REPO_NAME% RMDIR /S /Q C:\%WS_DIR%\%REPO_NAME%
::CD C:\%WS_DIR%
::git clone https://github.com/%GITHUB_ACCOUNT%/%REPO_NAME%.git

CD %REPO_NAME%
timeout /t 3
ECHO Execute Tests (TestNG)  ...

CALL mvn clean site -Dtest=%TEST_CLASS% -Dyc.version="%APP_VERSION%" > ./report_%REPO_NAME%-%APP_VERSION%-Maven.loG

GOTO END

:EXIT_JAVA
ECHO No Java installed. Bye, bye ....
GOTO END

:EXIT_MVN
ECHO No Maven installed. Bye, bye ....
GOTO END

:EXIT_GIT
ECHO No Git installed. Bye, bye ....
GOTO END

:NO_WORKSPACE
ECHO %WS_DIR% is not exists. Bye, bye ....
GOTO END

:END
ECHO DONE. Bye!
CD\

PAUSE