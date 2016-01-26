-- local vars
local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )

-- add to path
prepend_path( "PATH",            pathJoin( pkg, "bin" ) )
prepend_path( "INCLUDE",         pathJoin( pkg, "include" ) )
prepend_path( "CPATH",           pathJoin( pkg, "include" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( pkg, "lib" ) )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "Dynamic memory testing and debugging tools" )
whatis( "URL:         " .. "http://valgrind.org" )