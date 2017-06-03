local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )
local bin = pathJoin( pkg, "bin" )
prepend_path( "PATH", bin )

whatis("Name:        " .. myModuleName() )
whatis("Version:     " .. myModuleVersion() )
whatis("Description: " .. "SCons - a software construction tool" )
