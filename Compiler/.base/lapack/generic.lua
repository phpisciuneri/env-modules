-- local vars
local pkgName     = myModuleName()
local fullVersion = myModuleVersion()
local hierA       = hierarchyA( myModuleFullName(), 1 )
local compilerD   = hierA[1]:gsub( "/", "-" ):gsub( "%.", "_" )
local base        = pathJoin( "/opt/apps", compilerD, pkgName, fullVersion )

-- add to path
prepend_path( "LD_LIBRARY_PATH", pathJoin( base, "lib" ) )
prepend_path( "INCLUDE",         pathJoin( base, "include" ) )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "LAPACK - Linear Algebra PACKage" )
whatis( "URL:         " .. "http://www.netlib.org/lapack/" )