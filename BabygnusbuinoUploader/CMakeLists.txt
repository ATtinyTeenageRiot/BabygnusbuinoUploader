cmake_minimum_required(VERSION 2.8.11)

project(BabygnusbuinoUploader)



include_directories(
    /Users/xcorex/Documents/Codelite/test1/BabygnusbuinoUploader/
    /Users/xcorex/Documents/Codelite/test1/BabygnusbuinoUploader/
    /Users/xcorex/Documents/Projects/C++/WxWidgets/wxWidgets-3.0.2/aux-build/lib/wx/include/osx_cocoa-unicode-static-3.0
    /Users/xcorex/Documents/Projects/C++/WxWidgets/wxWidgets-3.0.2/include

)

add_definitions(
    -DNDEBUG
    -D_FILE_OFFSET_BITS=64
    -DwxDEBUG_LEVEL=0
    -D__WXMAC__
    -D__WXOSX__
    -D__WXOSX_COCOA__
)

# Linker options
set(CMAKE_LDFLAGS "${CMAKE_LDFLAGS}  $(shell /usr/local/bin/wx-config --libs)")

# Library path
set(CMAKE_LDFLAGS "${CMAKE_LDFLAGS} -L\".\" ")

# Define the CXX sources
set ( CXX_SRCS
    main.cpp
    MainFrame.cpp
    wxcrafter.cpp
    wxcrafter_bitmaps.cpp
)

set_source_files_properties(
    ${CXX_SRCS} PROPERTIES COMPILE_FLAGS 
    " -stdlib=libstdc++ -O2 -Wall ")

add_executable(BabygnusbuinoUploader ${CXX_SRCS} ${C_SRCS})

