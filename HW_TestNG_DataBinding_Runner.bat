
cd C:\Workspace\TestNG_DataBinding


REM Location ProjectPath --> .
SET ProjectPath=%cd%

REM Location CLASSES --> "MyClass.class"
SET CLASSES=%cd%\target\classes

REM Location TEST_CLASSES --> "MyClassTest.class"
SET TEST_CLASSES=%cd%\target\test-classes

REM Location TESTNG_HOME --> TestNG.jar (version*\*.jar)
set TESTNG_HOME=C:\Users\utest\.m2\repository\org\testng\testng\*

REM Location JCOMMANDER_HOME --> jcommander-1.48.jar 
SET JCOMMANDER_HOME=C:\Users\utest\.m2\repository\com\beust\jcommander\1.48\jcommander-1.48.jar

REM Summary
set classpath=%cd%;%CLASSES%;%TEST_CLASSES%;%TESTNG_HOME%;%JCOMMANDER_HOME%

ECHO Setting CLASSPATH
ECHO %classpath%

PAUSE
java -cp "%classpath%" org.testng.TestNG testng.xml > report_Runner.loG
::java -cp ".;C:\Users\utest\.m2\repository\org\testng\testng\*;C:\Users\utest\.m2\repository\com\beust\jcommander\1.48\jcommander-1.48.jar;C:\Workspace\TestNG_DataBinding\target\classes;C:\Workspace\TestNG_DataBinding\target\test-classes" org.testng.TestNG testng.xml
PAUSE

