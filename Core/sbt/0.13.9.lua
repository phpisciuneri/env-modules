local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )
local bin = pathJoin( pkg, "bin" )
prepend_path( "PATH", bin )

whatis("Name:        " .. myModuleName() )
whatis("Version:     " .. myModuleVersion() )
whatis("Description: " .. "Scala Build Tool - The interactive build tool." )
