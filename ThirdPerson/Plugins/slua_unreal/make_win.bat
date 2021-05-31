mkdir build_win32 & pushd build_win32
cmake ..
popd
cmake --build build_win32 --config Release
md Library\Win32
copy /Y build_win32\Release\lua.lib Library\Win32\lua.lib

mkdir build_win64 & pushd build_win64
cmake ..
popd
cmake --build build_win64 --config Release
md Library\Win64
copy /Y build_win64\Release\lua.lib Library\Win64\lua.lib