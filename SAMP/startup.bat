@echo off

set "JRE_HOME=c:\Program Files\Java\jre1.8.0_151"
REM For example: C:\Program Files (x86)\Java\jre1.8.0_60

IF "%JRE_HOME%" == "Paste your JRE Home path here!" (
	echo Please edit startup.bat and add your JRE path to line 3!
	pause
	exit
)

IF "%JRE_HOME%" == "" (
  IF "%JAVA_HOME%" == "" (
    echo JRE_HOME or JAVA_HOME is not set.
    pause
    exit
  )

  set "JRE_HOME=%JAVA_HOME%\jre"
)

set "JVM_SERVER_LIB_PATH=%JRE_HOME%\bin\server"
set "JVM_CLIENT_LIB_PATH=%JRE_HOME%\bin\client"

IF EXIST "%JVM_SERVER_LIB_PATH%" (
  set "PATH=%JVM_SERVER_LIB_PATH%;%PATH%"
) ELSE IF EXIST "%JVM_CLIENT_LIB_PATH%" (
  set "PATH=%JVM_CLIENT_LIB_PATH%;%PATH%"
) ELSE (
  echo JVM not found.
  pause
  exit
)

samp-server.exe
