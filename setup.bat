@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
if ERRORLEVEL 1 goto :error
cinst Git.Install -notsilent && cinst ConsoleZ
if ERRORLEVEL 1 goto :error


:error 
echo Setup Failed
