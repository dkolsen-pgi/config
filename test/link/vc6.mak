# copyright John Maddock 2005
# Use, modification and distribution are subject to the 
# Boost Software License, Version 1.0. (See accompanying file 
# LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#
# auto generated makefile for VC6 compiler
#
# usage:
# make
#   brings libraries up to date
# make install
#   brings libraries up to date and copies binaries to your VC6 /lib and /bin directories (recomended)
#

#
# Add additional compiler options here:
#
CXXFLAGS=
#
# Add additional include directories here:
#
INCLUDES=
#
# add additional linker flags here:
#
XLFLAGS=
#
# add additional static-library creation flags here:
#
XSFLAGS=

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF "$(MSVCDIR)" == ""
!ERROR Variable MSVCDIR not set.
!ENDIF


ALL_HEADER=

all : main_dir liblink_test-vc6-s-1_35_dir ./vc6/liblink_test-vc6-s-1_35.lib ./vc6/liblink_test-vc6-s-1_35.exe liblink_test-vc6-mt-s-1_35_dir ./vc6/liblink_test-vc6-mt-s-1_35.lib ./vc6/liblink_test-vc6-mt-s-1_35.exe liblink_test-vc6-sgd-1_35_dir ./vc6/liblink_test-vc6-sgd-1_35.lib ./vc6/liblink_test-vc6-sgd-1_35.exe liblink_test-vc6-mt-sgd-1_35_dir ./vc6/liblink_test-vc6-mt-sgd-1_35.lib ./vc6/liblink_test-vc6-mt-sgd-1_35.exe link_test-vc6-mt-gd-1_35_dir ./vc6/link_test-vc6-mt-gd-1_35.lib ./vc6/link_test-vc6-mt-gd-1_35.exe link_test-vc6-mt-1_35_dir ./vc6/link_test-vc6-mt-1_35.lib ./vc6/link_test-vc6-mt-1_35.exe liblink_test-vc6-mt-1_35_dir ./vc6/liblink_test-vc6-mt-1_35.lib ./vc6/liblink_test-vc6-mt-1_35.exe liblink_test-vc6-mt-gd-1_35_dir ./vc6/liblink_test-vc6-mt-gd-1_35.lib ./vc6/liblink_test-vc6-mt-gd-1_35.exe

clean :  liblink_test-vc6-s-1_35_clean liblink_test-vc6-mt-s-1_35_clean liblink_test-vc6-sgd-1_35_clean liblink_test-vc6-mt-sgd-1_35_clean link_test-vc6-mt-gd-1_35_clean link_test-vc6-mt-1_35_clean liblink_test-vc6-mt-1_35_clean liblink_test-vc6-mt-gd-1_35_clean

install : all
	copy vc6\liblink_test-vc6-s-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-mt-s-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-sgd-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-sgd-1_35.pdb "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-mt-sgd-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-mt-sgd-1_35.pdb "$(MSVCDIR)\lib"
	copy vc6\link_test-vc6-mt-gd-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\link_test-vc6-mt-gd-1_35.dll "$(MSVCDIR)\bin"
	copy vc6\link_test-vc6-mt-gd-1_35.pdb "$(MSVCDIR)\lib"
	copy vc6\link_test-vc6-mt-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\link_test-vc6-mt-1_35.dll "$(MSVCDIR)\bin"
	copy vc6\liblink_test-vc6-mt-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-mt-gd-1_35.lib "$(MSVCDIR)\lib"
	copy vc6\liblink_test-vc6-mt-gd-1_35.pdb "$(MSVCDIR)\lib"

main_dir :
	@if not exist "vc6\$(NULL)" mkdir vc6


########################################################
#
# section for liblink_test-vc6-s-1_35.lib
#
########################################################
vc6/liblink_test-vc6-s-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /ML /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /DWIN32 /DNDEBUG /D_MBCS /D_LIB /FD $(CXXFLAGS) -Y- -Fo./vc6/liblink_test-vc6-s-1_35/ -Fdvc6/liblink_test-vc6-s-1_35.pdb link_test.cpp

liblink_test-vc6-s-1_35_dir :
	@if not exist "vc6\liblink_test-vc6-s-1_35\$(NULL)" mkdir vc6\liblink_test-vc6-s-1_35

liblink_test-vc6-s-1_35_clean :
	del vc6\liblink_test-vc6-s-1_35\*.obj
	del vc6\liblink_test-vc6-s-1_35\*.idb
	del vc6\liblink_test-vc6-s-1_35\*.exp
	del vc6\liblink_test-vc6-s-1_35\*.pch

./vc6/liblink_test-vc6-s-1_35.lib : vc6/liblink_test-vc6-s-1_35/link_test.obj
	link -lib /nologo /out:vc6/liblink_test-vc6-s-1_35.lib $(XSFLAGS)  vc6/liblink_test-vc6-s-1_35/link_test.obj

./vc6/liblink_test-vc6-s-1_35.exe : main.cpp ./vc6/liblink_test-vc6-s-1_35.lib
	cl $(INCLUDES) /nologo /ML /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /DWIN32 /DNDEBUG /D_MBCS /D_LIB /FD /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/liblink_test-vc6-s-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\liblink_test-vc6-s-1_35.exe

########################################################
#
# section for liblink_test-vc6-mt-s-1_35.lib
#
########################################################
vc6/liblink_test-vc6-mt-s-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /FD  $(CXXFLAGS) -Y- -Fo./vc6/liblink_test-vc6-mt-s-1_35/ -Fdvc6/liblink_test-vc6-mt-s-1_35.pdb link_test.cpp

liblink_test-vc6-mt-s-1_35_dir :
	@if not exist "vc6\liblink_test-vc6-mt-s-1_35\$(NULL)" mkdir vc6\liblink_test-vc6-mt-s-1_35

liblink_test-vc6-mt-s-1_35_clean :
	del vc6\liblink_test-vc6-mt-s-1_35\*.obj
	del vc6\liblink_test-vc6-mt-s-1_35\*.idb
	del vc6\liblink_test-vc6-mt-s-1_35\*.exp
	del vc6\liblink_test-vc6-mt-s-1_35\*.pch

./vc6/liblink_test-vc6-mt-s-1_35.lib : vc6/liblink_test-vc6-mt-s-1_35/link_test.obj
	link -lib /nologo /out:vc6/liblink_test-vc6-mt-s-1_35.lib $(XSFLAGS)  vc6/liblink_test-vc6-mt-s-1_35/link_test.obj

./vc6/liblink_test-vc6-mt-s-1_35.exe : main.cpp ./vc6/liblink_test-vc6-mt-s-1_35.lib
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /FD  /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/liblink_test-vc6-mt-s-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\liblink_test-vc6-mt-s-1_35.exe

########################################################
#
# section for liblink_test-vc6-sgd-1_35.lib
#
########################################################
vc6/liblink_test-vc6-sgd-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MLd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /DWIN32 /D_DEBUG /D_MBCS /D_LIB /FD /GX   $(CXXFLAGS) -Y- -Fo./vc6/liblink_test-vc6-sgd-1_35/ -Fdvc6/liblink_test-vc6-sgd-1_35.pdb link_test.cpp

liblink_test-vc6-sgd-1_35_dir :
	@if not exist "vc6\liblink_test-vc6-sgd-1_35\$(NULL)" mkdir vc6\liblink_test-vc6-sgd-1_35

liblink_test-vc6-sgd-1_35_clean :
	del vc6\liblink_test-vc6-sgd-1_35\*.obj
	del vc6\liblink_test-vc6-sgd-1_35\*.idb
	del vc6\liblink_test-vc6-sgd-1_35\*.exp
	del vc6\liblink_test-vc6-sgd-1_35\*.pch

./vc6/liblink_test-vc6-sgd-1_35.lib : vc6/liblink_test-vc6-sgd-1_35/link_test.obj
	link -lib /nologo /out:vc6/liblink_test-vc6-sgd-1_35.lib $(XSFLAGS)  vc6/liblink_test-vc6-sgd-1_35/link_test.obj

./vc6/liblink_test-vc6-sgd-1_35.exe : main.cpp ./vc6/liblink_test-vc6-sgd-1_35.lib
	cl $(INCLUDES) /nologo /MLd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /DWIN32 /D_DEBUG /D_MBCS /D_LIB /FD /GX   /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/liblink_test-vc6-sgd-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\liblink_test-vc6-sgd-1_35.exe

########################################################
#
# section for liblink_test-vc6-mt-sgd-1_35.lib
#
########################################################
vc6/liblink_test-vc6-mt-sgd-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /FD /GX  $(CXXFLAGS) -Y- -Fo./vc6/liblink_test-vc6-mt-sgd-1_35/ -Fdvc6/liblink_test-vc6-mt-sgd-1_35.pdb link_test.cpp

liblink_test-vc6-mt-sgd-1_35_dir :
	@if not exist "vc6\liblink_test-vc6-mt-sgd-1_35\$(NULL)" mkdir vc6\liblink_test-vc6-mt-sgd-1_35

liblink_test-vc6-mt-sgd-1_35_clean :
	del vc6\liblink_test-vc6-mt-sgd-1_35\*.obj
	del vc6\liblink_test-vc6-mt-sgd-1_35\*.idb
	del vc6\liblink_test-vc6-mt-sgd-1_35\*.exp
	del vc6\liblink_test-vc6-mt-sgd-1_35\*.pch

./vc6/liblink_test-vc6-mt-sgd-1_35.lib : vc6/liblink_test-vc6-mt-sgd-1_35/link_test.obj
	link -lib /nologo /out:vc6/liblink_test-vc6-mt-sgd-1_35.lib $(XSFLAGS)  vc6/liblink_test-vc6-mt-sgd-1_35/link_test.obj

./vc6/liblink_test-vc6-mt-sgd-1_35.exe : main.cpp ./vc6/liblink_test-vc6-mt-sgd-1_35.lib
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /FD /GX  /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/liblink_test-vc6-mt-sgd-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\liblink_test-vc6-mt-sgd-1_35.exe

########################################################
#
# section for link_test-vc6-mt-gd-1_35.lib
#
########################################################
vc6/link_test-vc6-mt-gd-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /D_DEBUG /DBOOST_DYN_LINK /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /FD /GX  $(CXXFLAGS) -Y- -Fo./vc6/link_test-vc6-mt-gd-1_35/ -Fdvc6/link_test-vc6-mt-gd-1_35.pdb link_test.cpp

link_test-vc6-mt-gd-1_35_dir :
	@if not exist "vc6\link_test-vc6-mt-gd-1_35\$(NULL)" mkdir vc6\link_test-vc6-mt-gd-1_35

link_test-vc6-mt-gd-1_35_clean :
	del vc6\link_test-vc6-mt-gd-1_35\*.obj
	del vc6\link_test-vc6-mt-gd-1_35\*.idb
	del vc6\link_test-vc6-mt-gd-1_35\*.exp
	del vc6\link_test-vc6-mt-gd-1_35\*.pch

./vc6/link_test-vc6-mt-gd-1_35.lib : vc6/link_test-vc6-mt-gd-1_35/link_test.obj
	link kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"vc6/link_test-vc6-mt-gd-1_35.pdb" /debug /machine:I386 /out:"vc6/link_test-vc6-mt-gd-1_35.dll" /implib:"vc6/link_test-vc6-mt-gd-1_35.lib" /LIBPATH:$(STLPORT_PATH)\lib $(XLFLAGS)  vc6/link_test-vc6-mt-gd-1_35/link_test.obj

./vc6/link_test-vc6-mt-gd-1_35.exe : main.cpp ./vc6/link_test-vc6-mt-gd-1_35.lib
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /D_DEBUG /DBOOST_DYN_LINK /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /FD /GX  /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/link_test-vc6-mt-gd-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\link_test-vc6-mt-gd-1_35.exe

########################################################
#
# section for link_test-vc6-mt-1_35.lib
#
########################################################
vc6/link_test-vc6-mt-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /DBOOST_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /FD  $(CXXFLAGS) -Y- -Fo./vc6/link_test-vc6-mt-1_35/ -Fdvc6/link_test-vc6-mt-1_35.pdb link_test.cpp

link_test-vc6-mt-1_35_dir :
	@if not exist "vc6\link_test-vc6-mt-1_35\$(NULL)" mkdir vc6\link_test-vc6-mt-1_35

link_test-vc6-mt-1_35_clean :
	del vc6\link_test-vc6-mt-1_35\*.obj
	del vc6\link_test-vc6-mt-1_35\*.idb
	del vc6\link_test-vc6-mt-1_35\*.exp
	del vc6\link_test-vc6-mt-1_35\*.pch

./vc6/link_test-vc6-mt-1_35.lib : vc6/link_test-vc6-mt-1_35/link_test.obj
	link kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"vc6/link_test-vc6-mt-1_35.pdb" /debug /machine:I386 /out:"vc6/link_test-vc6-mt-1_35.dll" /implib:"vc6/link_test-vc6-mt-1_35.lib" /LIBPATH:$(STLPORT_PATH)\lib $(XLFLAGS)  vc6/link_test-vc6-mt-1_35/link_test.obj

./vc6/link_test-vc6-mt-1_35.exe : main.cpp ./vc6/link_test-vc6-mt-1_35.lib
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /DBOOST_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /FD  /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/link_test-vc6-mt-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\link_test-vc6-mt-1_35.exe

########################################################
#
# section for liblink_test-vc6-mt-1_35.lib
#
########################################################
vc6/liblink_test-vc6-mt-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /FD  $(CXXFLAGS) -Y- -Fo./vc6/liblink_test-vc6-mt-1_35/ -Fdvc6/liblink_test-vc6-mt-1_35.pdb link_test.cpp

liblink_test-vc6-mt-1_35_dir :
	@if not exist "vc6\liblink_test-vc6-mt-1_35\$(NULL)" mkdir vc6\liblink_test-vc6-mt-1_35

liblink_test-vc6-mt-1_35_clean :
	del vc6\liblink_test-vc6-mt-1_35\*.obj
	del vc6\liblink_test-vc6-mt-1_35\*.idb
	del vc6\liblink_test-vc6-mt-1_35\*.exp
	del vc6\liblink_test-vc6-mt-1_35\*.pch

./vc6/liblink_test-vc6-mt-1_35.lib : vc6/liblink_test-vc6-mt-1_35/link_test.obj
	link -lib /nologo /out:vc6/liblink_test-vc6-mt-1_35.lib $(XSFLAGS)  vc6/liblink_test-vc6-mt-1_35/link_test.obj

./vc6/liblink_test-vc6-mt-1_35.exe : main.cpp ./vc6/liblink_test-vc6-mt-1_35.lib
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I..\..\..\..\ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /FD  /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/liblink_test-vc6-mt-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\liblink_test-vc6-mt-1_35.exe

########################################################
#
# section for liblink_test-vc6-mt-gd-1_35.lib
#
########################################################
vc6/liblink_test-vc6-mt-gd-1_35/link_test.obj: link_test.cpp $(ALL_HEADER)
	cl /c $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /DBOOST_REGEX_STATIC_LINK /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /FD /GX  $(CXXFLAGS) -Y- -Fo./vc6/liblink_test-vc6-mt-gd-1_35/ -Fdvc6/liblink_test-vc6-mt-gd-1_35.pdb link_test.cpp

liblink_test-vc6-mt-gd-1_35_dir :
	@if not exist "vc6\liblink_test-vc6-mt-gd-1_35\$(NULL)" mkdir vc6\liblink_test-vc6-mt-gd-1_35

liblink_test-vc6-mt-gd-1_35_clean :
	del vc6\liblink_test-vc6-mt-gd-1_35\*.obj
	del vc6\liblink_test-vc6-mt-gd-1_35\*.idb
	del vc6\liblink_test-vc6-mt-gd-1_35\*.exp
	del vc6\liblink_test-vc6-mt-gd-1_35\*.pch

./vc6/liblink_test-vc6-mt-gd-1_35.lib : vc6/liblink_test-vc6-mt-gd-1_35/link_test.obj
	link -lib /nologo /out:vc6/liblink_test-vc6-mt-gd-1_35.lib $(XSFLAGS)  vc6/liblink_test-vc6-mt-gd-1_35/link_test.obj

./vc6/liblink_test-vc6-mt-gd-1_35.exe : main.cpp ./vc6/liblink_test-vc6-mt-gd-1_35.lib
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I..\..\..\..\ /DBOOST_REGEX_STATIC_LINK /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /FD /GX  /DBOOST_LIB_DIAGNOSTIC=1 $(CXXFLAGS) -o ./vc6/liblink_test-vc6-mt-gd-1_35.exe main.cpp /link /LIBPATH:./vc6
   vc6\liblink_test-vc6-mt-gd-1_35.exe

