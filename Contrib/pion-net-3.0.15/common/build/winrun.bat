@ECHO OFF
SET PION_LIBS=C:\Atomic Labs\pion-libraries
SETLOCAL EnableDelayedExpansion
SET PATH=%PION_LIBS%\boost-1.37.0\lib;%PION_LIBS%\bzip2-1.0.5\bin;%PION_LIBS%\iconv-1.9.2\bin;%PION_LIBS%\libxml2-2.6.30\bin;%PION_LIBS%\log4cplus-1.0.3\bin;%PION_LIBS%\openssl-0.9.8l\bin;%PION_LIBS%\sqlapi-3.7.24\bin;%PION_LIBS%\yajl-1.0.5\bin;%PION_LIBS%\zlib-1.2.3\bin;%PION_LIBS%\WpdPack-4.0.2\Bin;%PATH%
%*
