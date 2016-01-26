-- local vars
local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )

-- add to path
prepend_path( "PATH",       pathJoin( pkg, "bin" ) )
prepend_path( "PYTHONHOME", pkg )
prepend_path( "PYTHONPATH", pathJoin( pkg, "lib" ) )
prepend_path( "MANPATH",    pathJoin( pkg, "share/man" ) )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "Anconda Python distribution" )
whatis( "URL:         " .. "https://www.continuum.io" )
