@echo off

rem ----- Verify JAVA_HOME environment variable -----

if not "%JAVA_HOME%" == "" goto gotJavaHome
echo *
echo *    Error: The JAVA_HOME environment variable is not set.
echo *    It must point at your JDK or JRE distribution, e.g.:
echo *      JAVA_HOME=C:\j2re1.4.2_06
goto exit

:gotJavaHome

set cp=..\tools\lib\ant-launcher.jar
set class=org.apache.tools.ant.launch.Launcher

"%JAVA_HOME%\bin\java.exe" -showversion -Xmx512m -classpath %cp% -Dant.home=..\tools\lib %class% %1 %2 %3 %4 %5 %6 %7 %8 %9


:exit
